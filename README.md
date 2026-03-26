# Firestorm Engineering Processes

## Purpose

This repository contains workflow documentation for Firestorm engineering teams. It makes cross-functional processes easier to understand, review, and improve through shared written guidance and Mermaid diagrams.

Target-state diagrams are labeled **PROPOSED** and remain pending leadership approval.

## Team Overview

- **Hardware** — core design, hardware changes, and integrations
- **Software** — firmware, ground control software (GCS "Ignite", QGC-based), companion computer video/radio
- **Autonomy** — landing, terminal guidance, target search, swarming behaviors
- **Aero** — sizing, architecture analysis, aero/propulsion performance tools

Key roles referenced in workflows: Project Engineer, SVP Engineering, HW Lead, SW Lead, Autonomy Lead, Aero Lead, Quality Engineer, Flight Test Director, Reliability Engineer.

## Process Status

| Workflow | Status | Current-State Diagrams? |
|----------|--------|------------------------|
| HW Feature-Driven ECO | In Practice (semi-structured) | Yes |
| HW Field-Issue FRACAS | In Practice (semi-structured) | Yes |
| SW Release | In Practice (semi-structured) | Yes |
| Flight Test | In Practice (semi-structured) | Yes |
| Integration and Verification | PROPOSED | No |
| New Product Development | PROPOSED | No |
| Autonomy Behavior Dev | PROPOSED | No |
| Supplier/Vendor Management | PROPOSED | No |

## Workflows

### 1. **Process Landscape** — [Overview](workflows/_landscape/landscape.md)

Top-level view of how all 8 workflows interconnect.

- [landscape.mmd](workflows/_landscape/landscape.mmd)

### 2. **WF01 — HW Feature-Driven Design Changes (ECO)** — [Overview and RACI](workflows/01-hw-feature-driven/overview.md)

Manages hardware design improvements driven by new product features through a formal ECO process.

- [flowchart-current.mmd](workflows/01-hw-feature-driven/diagrams/flowchart-current.mmd)
- [flowchart-target.mmd](workflows/01-hw-feature-driven/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/01-hw-feature-driven/diagrams/sequence-target.mmd)
- [state-target.mmd](workflows/01-hw-feature-driven/diagrams/state-target.mmd)

### 3. **WF02 — HW Field-Issue Resolution (FRACAS to ECO)** — [Overview and RACI](workflows/02-hw-field-issue/overview.md)

Captures field failures, performs root cause analysis, and bridges corrective actions into the ECO process.

- [flowchart-current.mmd](workflows/02-hw-field-issue/diagrams/flowchart-current.mmd)
- [flowchart-target.mmd](workflows/02-hw-field-issue/diagrams/flowchart-target.mmd)
- [state-current.mmd](workflows/02-hw-field-issue/diagrams/state-current.mmd)
- [state-target.mmd](workflows/02-hw-field-issue/diagrams/state-target.mmd)
- [sequence-target.mmd](workflows/02-hw-field-issue/diagrams/sequence-target.mmd)

### 4. **WF03 — Software Release Process** — [Overview and RACI](workflows/03-sw-release/overview.md)

Governs the release pipeline for firmware, GCS Ignite, and companion computer software.

- [flowchart-current.mmd](workflows/03-sw-release/diagrams/flowchart-current.mmd)
- [flowchart-target.mmd](workflows/03-sw-release/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/03-sw-release/diagrams/sequence-target.mmd)

### 5. **WF04 — Flight Test Process** — [Overview and RACI](workflows/04-flight-test/overview.md)

Manages the flight test lifecycle from planning through execution, data review, and reporting.

- [flowchart-current.mmd](workflows/04-flight-test/diagrams/flowchart-current.mmd)
- [flowchart-target.mmd](workflows/04-flight-test/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/04-flight-test/diagrams/sequence-target.mmd)

### 6. **WF05 — Integration and Verification** — [Overview and RACI](workflows/05-integration-verification/overview.md)

Defines the process for integrating subsystems and verifying the complete system meets requirements.

- [flowchart-target.mmd](workflows/05-integration-verification/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/05-integration-verification/diagrams/sequence-target.mmd)
- [state-target.mmd](workflows/05-integration-verification/diagrams/state-target.mmd)

### 7. **WF06 — New Product Development** — [Overview and RACI](workflows/06-new-product-dev/overview.md)

Guides new product development through phase gates from SRR through PRR.

- [flowchart-target.mmd](workflows/06-new-product-dev/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/06-new-product-dev/diagrams/sequence-target.mmd)

### 8. **WF07 — Autonomy Behavior Development** — [Overview and RACI](workflows/07-autonomy-behavior/overview.md)

Manages the development lifecycle for autonomy behaviors including simulation, HITL testing, and flight certification.

- [flowchart-target.mmd](workflows/07-autonomy-behavior/diagrams/flowchart-target.mmd)
- [sequence-target.mmd](workflows/07-autonomy-behavior/diagrams/sequence-target.mmd)
- [state-target.mmd](workflows/07-autonomy-behavior/diagrams/state-target.mmd)

### 9. **WF08 — Supplier/Vendor Management** — [Overview and RACI](workflows/08-supplier-vendor/overview.md)

Governs the supplier qualification, procurement, and ongoing management lifecycle.

- [flowchart-target.mmd](workflows/08-supplier-vendor/diagrams/flowchart-target.mmd)

## Diagram Conventions

- All diagrams are written in Mermaid `.mmd` format
- Shared styling is configured in [`mermaid.config.json`](mermaid.config.json) (neutral theme)
- Node styling classes are defined in [`STYLE-GUIDE.md`](STYLE-GUIDE.md): gate (red), milestone (green), feedback (amber), process (blue), artifact (yellow), external (gray)
- Flowcharts use `flowchart TD` or `flowchart LR` (never `graph`)
- State diagrams use `stateDiagram-v2`
- No diagram exceeds 25 nodes

## How to Generate PNGs

```bash
npm install
make pngs
```

PNGs are generated into `exports/` and are not committed to the repository.

## How to Validate

```bash
make validate           # Parse all .mmd files
make check-forbidden    # Check for forbidden patterns
make check-nodes        # Check node count per diagram
make all                # Run everything
```
