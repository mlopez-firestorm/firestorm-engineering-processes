# Mermaid Style Guide

Use this guide for every Mermaid source file in this repository so diagrams stay visually consistent across workflows.

## classDef Palette

These six classes are the standard palette for all workflow diagrams.

- `gate` — red fill (`#e74c3c`), white text — decision and review gates such as SRR, PDR, CDR, and TRR
- `milestone` — green fill (`#2ecc71`), white text — milestones and approvals
- `feedback` — amber fill (`#f39c12`), white text — feedback loops and corrective action paths
- `process` — light blue fill (`#e3f2fd`), dark text — standard process steps
- `artifact` — light yellow fill (`#fff3bf`), dark text — documents and artifacts
- `external` — gray fill (`#e0e0e0`), dark text — external inputs and outputs

## Standard classDef Block

Copy and paste this block into every `.mmd` file.

```mermaid
classDef gate fill:#e74c3c,stroke:#c0392b,color:#fff
classDef milestone fill:#2ecc71,stroke:#27ae60,color:#fff
classDef feedback fill:#f39c12,stroke:#e67e22,color:#fff
classDef process fill:#e3f2fd,stroke:#90caf9,color:#1a237e
classDef artifact fill:#fff3bf,stroke:#ffcc02,color:#333
classDef external fill:#e0e0e0,stroke:#9e9e9e,color:#333
```

## Node Shape Conventions

- Rectangle `[text]` for process steps
- Diamond `{text}` for decision gates
- Stadium `([text])` for start, end, and external inputs
- Rounded `(text)` for documents and artifacts
- Circle `((text))` for milestones

## Role Naming Conventions

Use generic role names only. Do not use individual names.

- HW Lead
- HW Engineer
- SW Lead
- SW Engineer
- Autonomy Lead
- Autonomy Engineer
- Aero Lead
- Aero Engineer
- Project Engineer
- SVP Engineering
- Quality Engineer
- Test Engineer
- Field Operator
- Supplier

## Diagram Type Rules

- Use `flowchart` keyword, never `graph`
- Use `stateDiagram-v2`, never v1
- Use `sequenceDiagram` for sequence diagrams
- Keep each diagram to a maximum of 25 nodes
- Never use `<br/>` in `stateDiagram-v2` labels; use short labels with notes instead

## PROPOSED Label Requirement

All target-state diagrams must include `PROPOSED` in the title.

- Required format: `PROPOSED: [Diagram Title]`
- Put that text in the first comment or title line of the diagram
- Example first line for Mermaid files: `%% PROPOSED: HW Feature-Driven ECO Flow`

## Usage Notes

- Use `mermaid.config.json` at the repo root when rendering with `mmdc`
- Apply the standard `classDef` block in every diagram source for consistent colors and stroke styles
- Keep labels short and readable; move extra detail into notes, surrounding Markdown, or adjacent documentation
