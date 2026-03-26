# Hardware Design Improvements — Field-Issue-Driven (FRACAS)

## Purpose

This workflow defines how field failures are reported, classified, contained, investigated, and resolved through a FRACAS process. When corrective action requires a hardware design change, the FRACAS record bridges into the hardware ECO workflow through an Engineering Change Request (ECR) and then returns for verification, effectiveness review, and closure.

## FRACAS Lifecycle Narrative

### 1. Failure Reporting

A Field Operator detects a failure in service and logs it in the ticketing system or FRACAS intake path. The initial report should capture the serial number, symptoms, operating conditions, mission context, and any immediate action taken in the field.

### 2. Classification

Quality and engineering classify the issue by severity and priority so the organization responds proportionally. Severity should be categorized as Safety-critical, Operational, or Cosmetic, with priority reflecting urgency, fleet exposure, and mission impact.

### 3. Containment

The assigned team defines interim containment to reduce immediate risk while investigation proceeds. Containment can include grounding affected units, issuing a safety notice, adding inspection steps, or limiting operating conditions.

### 4. Investigation

Cross-functional engineers perform root cause analysis using methods such as 5-Why and Fishbone analysis. The confirmed cause should be tagged into one of four categories: Design, Manufacturing, Operational, or Environmental.

### 5. Corrective Action Definition

The team defines the most appropriate corrective action once the root cause is understood. Corrective action may be a design change, a process change, a procedure update, or an explicit risk acceptance if no change is justified.

### 6. Implementation

Implementation follows the chosen action path. If the corrective action is a design change, the team raises an ECR and follows Workflow 01 for the full ECO process before returning to FRACAS execution.

### 7. Verification

Verification confirms that the implemented action removes or controls the root cause rather than only masking symptoms. Verification evidence can include inspection results, test data, field checks, or regression review.

### 8. Effectiveness Review

After implementation, Quality and engineering monitor for recurrence across units, lots, or missions. The review should confirm whether the action remains effective over time and whether broader fleet action is needed.

### 9. Closure

The FRACAS record closes only after verification and effectiveness review are complete. Closure should capture final disposition, update FMEA inputs where needed, and preserve lessons learned for future designs and operations.

## FRACAS to ECO Bridge

The FRACAS record remains the controlling record for the field issue. When D5 identifies that the corrective action is a design change, the responsible hardware team creates an ECR and routes the change through **Workflow 01 — HW Feature-Driven Design Changes (ECO)**. After ECO implementation is approved and executed, the FRACAS flow resumes with verification, effectiveness review, and final closure.

## 8D Methodology Alignment

| 8D Discipline | FRACAS Alignment |
|---|---|
| D0 Plan | Failure report received, initial triage, and response planning |
| D1 Build team | Cross-functional owners assigned for Quality, HW, SW, and Autonomy |
| D2 Describe problem | Failure reporting with serial number, symptoms, and conditions |
| D3 Interim containment | Containment actions, safety notice, grounding, or inspection controls |
| D4 Root cause and escape point | Investigation with 5-Why, Fishbone, and cause categorization |
| D5 Define corrective action | Select design change, process change, procedure update, or risk acceptance |
| D6 Implement and validate corrective action | Execute ECO or non-ECO action and verify it resolves the cause |
| D7 Prevent recurrence | Effectiveness review, FMEA updates, and lessons learned |
| D8 Close and recognize team | FRACAS closure with documented evidence and retained knowledge |

## Failure Code Structure

Failure codes should follow a hierarchical structure so field issues can be searched, trended, and escalated consistently:

**System > Subsystem > Failure Mode > Cause Category**

- **System**: `STR`, `PWR`, `AVN`, `GNC`
- **Subsystem**: specific assembly or functional area within the system
- **Failure Mode**: the observable problem, such as open circuit, reset, crack, drift, or loss of signal
- **Cause Category**: `Design`, `Manufacturing`, `Operational`, or `Environmental`

Example format: `PWR > Battery Harness > Intermittent Open > Design`

## RACI Matrix

| Activity | Field Ops | HW Team | SW Team | Autonomy | Aero | Project Engineer | SVP Engineering | Quality |
|----------|-----------|---------|---------|----------|------|-----------------|----------------|---------|
| Detect & report failure | R | I | I | I | — | I | — | I |
| Classify severity/priority | C | R | C | C | — | A | I | R |
| Interim containment | R | R | C | C | — | A | A (safety) | R |
| Root cause analysis | C | R | R | R | C | I | — | R |
| Define corrective action | — | R | R | R | C | A | I | C |
| Implement (if ECO) | — | R | C | C | C | A | — | I |
| Implement (if procedure) | R | C | C | C | — | A | — | R |
| Verify effectiveness | C | R | C | C | — | I | — | R |
| Effectiveness review | I | R | — | — | — | A | I | R |
| Close FRACAS record | — | C | — | — | — | A | — | R |

## Diagram Set

- `diagrams/flowchart-current.mmd` — current field issue resolution flow
- `diagrams/flowchart-target.mmd` — PROPOSED FRACAS process with FRACAS to ECO bridge
- `diagrams/state-current.mmd` — current ticket lifecycle
- `diagrams/state-target.mmd` — PROPOSED FRACAS record lifecycle
- `diagrams/sequence-target.mmd` — PROPOSED cross-team resolution sequence
