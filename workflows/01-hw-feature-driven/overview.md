# Hardware Design Improvements — Feature-Driven

## Purpose

This workflow defines how new features, customer-specific customization, and performance-driven hardware updates move through a formal engineering change order (ECO) lifecycle. It replaces informal design change handling with a documented path for classification, review, approval, implementation, and verification.

## 5-Stage ECO Lifecycle

### 1. ECR

The HW Engineer identifies a feature-driven design need and submits an engineering change request (ECR) that captures the requested change, reason, expected benefit, and affected hardware items.

### 2. Cross-Functional Review

HW, SW, Autonomy, Aero, and Quality review the request for interface impact, performance implications, verification needs, and downstream risks. The Project Engineer coordinates the review and ensures gaps are resolved before disposition.

### 3. Approval

The change is classified and routed for decision. Major changes require Project Engineer approval, minor documentation-only changes may be dispositioned by the HW Lead, and emergency changes can be expedited with Project Engineer approval plus SVP Engineering override authority.

### 4. Implementation

Approved ECO work is released to the responsible HW team for design updates, drawing or bill-of-material revisions, prototype or production incorporation, and coordination with dependent teams where interfaces change.

### 5. Verification

The implemented change is verified through first article inspection (FAI), fit/function confirmation, and any required quality evidence before the updated configuration is released for effectivity.

## Change Classification

- **Major** — changes affecting form, fit, or function; requires Project Engineer approval.
- **Minor** — documentation-only or low-impact updates; may be approved by the HW Lead.
- **Emergency** — expedited path for urgent issues; requires Project Engineer approval with SVP Engineering override support.

## Effectivity Types

- **Next order** — default release path; applies to future builds or purchase orders.
- **Immediate** — used when safety, compliance, or critical mission impact requires immediate incorporation.
- **Use-and-exhaust** — used when cost reduction or inventory disposition allows existing stock to be consumed before full cut-in.

## Roles

- HW Engineer (requestor)
- HW Lead
- SW Lead
- Autonomy Lead
- Aero Lead
- Project Engineer
- SVP Engineering
- Quality Engineer

## RACI Matrix

| Activity | HW Team | SW Team | Autonomy | Aero | Project Engineer | SVP Engineering | Quality |
|----------|---------|---------|----------|------|-----------------|----------------|---------|
| Identify change need | R | C | C | C | I | I | — |
| Submit ECR | R | — | — | — | I | — | — |
| Classify change | R | — | — | — | A | — | C |
| Cross-functional impact review | R | R | R | R | A | I | C |
| Approve/reject ECO | C | C | C | C | A | A (override) | C |
| Implement change | R | C | C | C | I | — | I |
| FAI / Verification | C | — | — | — | I | — | R |
