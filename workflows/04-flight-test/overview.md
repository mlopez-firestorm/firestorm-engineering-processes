# Flight Test Process

## Purpose

This workflow defines how flight tests are planned, approved, executed, and closed out, and how resulting data feeds back into engineering teams for corrective action, performance improvement, and autonomy behavior development.

## 8-Stage Flight Test Lifecycle

### 1. Test Planning

The Project Engineer coordinates test planning with SW, Autonomy, HW, Aero, Quality, and Field Ops. The team defines objectives, writes test cards, sets success criteria, documents safety mitigations, and records the required aircraft configuration including hardware revision, software version, and autonomy build.

### 2. Readiness Review (FTRR)

Before any flight event, the team conducts a Flight Test Readiness Review (FTRR). This gate verifies the intended aircraft configuration, approved procedures, safety plan, weather and range readiness, and required personnel coverage. Tests do not proceed until the FTRR package is acceptable.

### 3. Pre-Flight

Field Ops and the technical teams prepare the aircraft, execute pre-flight checklists, and confirm the aircraft matches the approved test plan. That includes verifying the serial number, hardware configuration, software load, and autonomy build before flight.

### 4. Execution

The team executes the flight according to approved test cards. SW and Autonomy monitor vehicle state and behaviors in real time through Ignite GCS, abort criteria are actively watched, and all required vehicle, payload, and ground-station data are recorded during the event.

### 5. Post-Flight

After landing, the team secures the aircraft, downloads logs and other recorded data, performs quick-look analysis, inspects the aircraft for damage or unexpected conditions, and captures any anomalies while observations are still fresh.

### 6. Data Analysis

A deeper multi-discipline review follows. Aero evaluates performance and flight-condition results, Autonomy reviews behavior execution and decision logic, and HW examines structural and system-level evidence from the event. SW supports data extraction and traceability where needed.

### 7. Reporting

The team produces a flight test report that summarizes the configuration tested, procedures executed, data collected, observed anomalies, and pass/fail status against the original success criteria. The Project Engineer owns final report acceptance.

### 8. Feedback Loop

Flight test outcomes feed directly into downstream workflows. Hardware or system issues route into [WF02 — HW Field-Issue Resolution (FRACAS)](../02-hw-field-issue/overview.md). Autonomy behavior findings inform [WF07 — Autonomy Behavior Development](../07-autonomy-behavior/overview.md). Aerodynamic and performance findings feed Aero analysis tools and follow-on design decisions.

## Cross-Workflow Connections

- **WF02 — FRACAS:** use when flight testing reveals hardware, integration, reliability, or field-worthy issue data requiring formal corrective action.
- **WF07 — Autonomy Behavior Development:** use when flight data shows behavior defects, tuning needs, or new autonomy development priorities.
- **Aero analysis:** use flight data to calibrate or validate performance assumptions, aerodynamic models, and mission-level trade studies.

## Roles

- SW Team
- Autonomy
- HW Team
- Aero
- Project Engineer
- Quality
- Field Ops

## RACI Matrix

| Activity | SW Team | Autonomy | HW Team | Aero | Project Engineer | Quality | Field Ops |
|----------|---------|----------|---------|------|-----------------|---------|-----------|
| Define test objectives | C | R | R | R | A | C | C |
| Write test procedures | C | R | C | R | I | R | C |
| FTRR readiness review | R | R | R | R | A | R | C |
| Aircraft preparation | C | C | R | — | I | R | R |
| Execute flight test | R (GCS) | R (behaviors) | R (aircraft) | C | A | R | R |
| Data download & quick-look | R | R | R | R | I | — | R |
| Detailed data analysis | C | R (behavior) | R (systems) | R (aero) | I | — | — |
| Flight test report | C | R | R | R | A | R | C |
| Issue feedback (→FRACAS/WF02) | C | C | R | C | A | R | R |
