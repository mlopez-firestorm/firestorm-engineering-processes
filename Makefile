SHELL := /bin/bash

.PHONY: validate pngs clean count check-nodes check-forbidden all

validate:
	@mkdir -p exports
	@files=(); \
	while IFS= read -r -d '' file; do \
		files+=("$$file"); \
	done < <(find workflows -type f -name '*.mmd' -print0 | sort -z); \
	total=$${#files[@]}; \
	passed=0; \
	config_args=(); \
	[[ -f mermaid.config.json ]] && config_args=(-c mermaid.config.json); \
	if (( total == 0 )); then \
		printf '0/0 diagrams validated successfully\n'; \
		exit 0; \
	fi; \
	for file in "$${files[@]}"; do \
		tmp_log=$$(mktemp); \
		tmp_output=$$(mktemp --suffix .png); \
		if npx mmdc -i "$$file" -o "$$tmp_output" "$${config_args[@]}" >"$$tmp_log" 2>&1; then \
			printf 'PASS %s\n' "$$file"; \
			passed=$$((passed + 1)); \
		else \
			printf 'FAIL %s\n' "$$file"; \
			cat "$$tmp_log"; \
		fi; \
		rm -f "$$tmp_output"; \
		rm -f "$$tmp_log"; \
	done; \
	printf '%s/%s diagrams validated successfully\n' "$$passed" "$$total"; \
	(( passed == total ))

pngs:
	@mkdir -p exports
	@for dir in workflows/*; do \
		[[ -d "$$dir/diagrams" ]] || continue; \
		mkdir -p "exports/$$(basename "$$dir")"; \
	done
	@files=(); \
	while IFS= read -r -d '' file; do \
		files+=("$$file"); \
	done < <(find workflows -type f -name '*.mmd' -print0 | sort -z); \
	config_args=(); \
	[[ -f mermaid.config.json ]] && config_args=(-c mermaid.config.json); \
	if (( $${#files[@]} == 0 )); then \
		printf 'Generated 0 PNG files\n'; \
		exit 0; \
	fi; \
	for file in "$${files[@]}"; do \
		rel_path=$${file#workflows/}; \
		workflow=$${rel_path%%/*}; \
		base_name=$$(basename "$$file" .mmd); \
		output="exports/$$workflow/$$base_name.png"; \
		mkdir -p "$$(dirname "$$output")"; \
		printf 'PNG %s -> %s\n' "$$file" "$$output"; \
		npx mmdc -i "$$file" -o "$$output" -t neutral -b white -s 2 "$${config_args[@]}"; \
	done

clean:
	@mkdir -p exports
	@find exports -mindepth 1 -exec rm -rf {} +
	@printf 'Cleaned exports/\n'

count:
	@total=0; \
	for dir in workflows/*; do \
		[[ -d "$$dir/diagrams" ]] || continue; \
		name=$$(basename "$$dir"); \
		count=$$(find "$$dir/diagrams" -type f -name '*.mmd' | wc -l); \
		printf '%s: %s\n' "$$name" "$$count"; \
		total=$$((total + count)); \
	done; \
	printf 'Total: %s\n' "$$total"

check-nodes:
	@files=(); \
	while IFS= read -r -d '' file; do \
		files+=("$$file"); \
	done < <(find workflows -type f -name '*.mmd' -print0 | sort -z); \
	if (( $${#files[@]} == 0 )); then \
		printf 'No Mermaid diagrams found for node count checks\n'; \
		exit 0; \
	fi; \
	for file in "$${files[@]}"; do \
		nodes=$$(grep -Ec '^[[:space:]]*[A-Za-z][A-Za-z0-9_]*[[:space:]]*(\[\[?|\(\(|\(|\{|>)' "$$file" || true); \
		printf '%s: %s potential node definition lines\n' "$$file" "$$nodes"; \
		if (( nodes > 25 )); then \
			printf 'WARNING %s has more than 25 potential node definition lines\n' "$$file"; \
		fi; \
	done

check-forbidden:
	@files=(); \
	while IFS= read -r -d '' file; do \
		files+=("$$file"); \
	done < <(find workflows -type f -name '*.mmd' -print0 | sort -z); \
	violations=0; \
	if (( $${#files[@]} == 0 )); then \
		printf 'No Mermaid diagrams found for forbidden pattern checks\n'; \
		exit 0; \
	fi; \
	for file in "$${files[@]}"; do \
		if grep -nE '^graph[[:space:]]' "$$file" >/dev/null; then \
			printf 'FORBIDDEN graph directive in %s\n' "$$file"; \
			grep -nE '^graph[[:space:]]' "$$file"; \
			violations=1; \
		fi; \
		if grep -q 'stateDiagram' "$$file" && grep -n '<br/>' "$$file" >/dev/null; then \
			printf 'FORBIDDEN <br/> in stateDiagram file %s\n' "$$file"; \
			grep -n '<br/>' "$$file"; \
			violations=1; \
		fi; \
	done; \
	if (( violations == 0 )); then \
		printf 'No forbidden Mermaid patterns found\n'; \
	fi; \
	(( violations == 0 ))

all: validate check-nodes check-forbidden pngs
