# New Product Development

## Purpose

This new process defines how a net-new product moves from concept through production authorization using a disciplined phase-gate lifecycle. It replaces ad hoc new-program execution with a documented path for concept definition, requirements maturity, design reviews, configuration baselines, build readiness, test evidence, and leadership approval.

## 7-Phase New Product Development Lifecycle

### 1. Concept / Pre-Phase A

The process starts with concept development, mission analysis, and feasibility work. Aero leads the initial concept of operations and feasibility framing while HW, SW, and Autonomy provide technical consultation on architecture options, constraints, and expected development risk. The output is a concept package that defines the intended product, key assumptions, major risks, and the basis for entering formal requirements work.

### 2. System Requirements / Phase A with SRR

Cross-functional teams decompose mission and product needs into system requirements, interfaces, verification intent, and top-level acceptance criteria. The System Requirements Review (SRR) confirms that the concept is mature enough to baseline the product at the functional level, that major technical risks are visible, and that the team can proceed into preliminary design without unresolved requirement ambiguity.

### 3. Preliminary Design / Phase B with PDR

HW, SW, Autonomy, and Aero develop the preliminary architecture, subsystem allocations, interface definitions, and initial verification approach. The Preliminary Design Review (PDR) checks that the design concept is internally consistent, requirements have been allocated to the right elements, and open issues are manageable before committing to detailed design.

### 4. Detailed Design / Phase C with CDR

The teams complete drawings, software architecture and implementation plans, detailed interfaces, analysis packages, and verification methods needed for build and integration. The Critical Design Review (CDR) establishes whether the design is complete enough to manufacture, integrate, and verify with acceptable technical and program risk.

### 5. Build & Integration / Phase D with TRR

After CDR, the program moves into hardware fabrication, software implementation, subsystem checkout, and integrated build activity. This workflow owns the program-level orchestration into build readiness; detailed build-and-integration execution should follow WF05 — Integration & Verification when that downstream workflow is applied. The Test Readiness Review (TRR) verifies that the integrated article, procedures, environments, and staffing are ready for formal test.

### 6. Test & Evaluation

The integrated system is evaluated against requirements through ground, lab, and flight-relevant testing as applicable. This workflow governs the decision logic for entering and exiting test; detailed flight-test execution should follow [WF04 — Flight Test Process](../04-flight-test/overview.md) when airborne evaluation is required. Test results, deficiencies, waivers, and closure plans become the evidence set for production authorization.

### 7. Production Authorization with PRR

The Production Readiness Review (PRR) evaluates whether design maturity, test evidence, manufacturing readiness, and open-risk posture support release into production. Approval authorizes the program to move from development into a controlled production state; rejection or conditional approval sends the program back for corrective action and evidence closure.

## Design Review Gates and Entry / Exit Criteria

### SRR

- **Entry criteria:** concept package drafted, mission need understood, initial requirement set assembled, major assumptions and feasibility risks documented.
- **Exit criteria:** system requirements accepted, verification approach outlined, major requirement gaps assigned, and the **Functional Baseline** established.

### PDR

- **Entry criteria:** approved system requirements, preliminary architecture defined, interfaces identified, and subsystem allocations proposed.
- **Exit criteria:** allocated design accepted, preliminary verification strategy aligned to allocations, key interfaces controlled, and the **Allocated Baseline** established.

### CDR

- **Entry criteria:** preliminary design actions closed, detailed designs prepared, analyses completed, and build approach defined.
- **Exit criteria:** detailed design approved for fabrication and implementation, verification methods finalized, high-risk open items dispositioned, and the **Product Baseline** established.

### TRR

- **Entry criteria:** integrated build available, procedures approved, environments ready, instrumentation configured, and responsible teams staffed.
- **Exit criteria:** article cleared for formal test, readiness risks accepted or mitigated, and test execution authorized.

### PRR

- **Entry criteria:** test evidence complete enough for disposition, manufacturing approach defined, unresolved deficiencies documented, and production plan prepared.
- **Exit criteria:** production authorized, production hold with rework actions assigned, or program cancelled/deferred.

## Configuration Baselines

- **Functional Baseline (post-SRR):** captures the approved system-level functional and performance requirements.
- **Allocated Baseline (post-PDR):** captures the approved allocation of requirements and interfaces to subsystems and major elements.
- **Product Baseline (post-CDR):** captures the approved detailed design package used for build, integration, verification, and eventual production release.

## Roles

- HW Team
- SW Team
- Autonomy
- Aero
- Project Engineer
- SVP Engineering

## RACI Matrix

| Activity | HW Team | SW Team | Autonomy | Aero | Project Engineer | SVP Engineering |
|----------|---------|---------|----------|------|-----------------|----------------|
| ConOps / feasibility | C | C | C | R | A | A |
| System requirements | R | R | R | R | A | I |
| SRR gate | R | R | R | R | A | A |
| Preliminary design | R | R | R | R | A | I |
| PDR gate | R | R | R | R | A | A |
| Detailed design | R | R | R | R | A | I |
| CDR gate | R | R | R | R | A | A |
| Build & integration | R | R | R | C | A | I |
| TRR gate | R | R | R | R | A | A |
| Test & evaluation | R | R | R | R | A | I |
| Production authorization | C | C | C | C | A | A |
