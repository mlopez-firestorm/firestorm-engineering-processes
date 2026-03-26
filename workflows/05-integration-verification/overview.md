# Integration & Verification

## Purpose

This workflow defines how HW, SW, Autonomy, and Aero subsystems come together into a complete aircraft and get verified before production. It establishes a new cross-functional process for subsystem readiness, interface verification, integrated test, configuration control, and production release so the team can move from released designs and builds into a verified production baseline with clear accountability.

## 8-Stage Integration & Verification Lifecycle

### 1. Subsystem Readiness

Each discipline declares its subsystem ready for integration. HW confirms released hardware is available in the intended configuration, SW confirms the relevant firmware and companion-compute builds are controlled and reproducible, Autonomy confirms the intended behavior build is ready for integrated evaluation, and Aero confirms the performance and configuration assumptions needed for system verification are baselined.

### 2. Interface Verification

The teams verify the key interface control documents (ICDs) and working interfaces between HW↔FW, FW↔Companion, Companion↔Autonomy, and Autonomy↔Aero. This step checks that signal definitions, data contracts, version compatibility, and expected behaviors line up before deeper system-level testing begins.

### 3. Hardware-in-the-Loop (HITL)

SW and Autonomy run software against real hardware in a representative integration setup. HITL is the first strong evidence point that the controlled software stack interacts correctly with physical hardware, onboard interfaces, and timing-sensitive behaviors before full aircraft assembly and broader verification.

### 4. System Integration

The complete aircraft is assembled in its intended integrated configuration and the teams run system-level functional tests. This stage confirms the major subsystems operate together as one product rather than as isolated subsystem demonstrations.

### 5. System Verification

The integrated aircraft is verified against system requirements such as range, endurance, payload accommodation, and required behaviors. The Project Engineer owns acceptance of this evidence because this is the point where subsystem success must translate into product-level compliance.

### 6. Configuration Audit

Before production release, the team verifies that the integrated article and its documentation match the approved baseline. This audit checks that the as-built aircraft, loaded software, autonomy version, and supporting records align to the intended product definition and that deviations are dispositioned.

### 7. Production Readiness Review (PRR)

The PRR is the final leadership gate before production release. HW, SW, Autonomy, Aero, Quality, and the Project Engineer review integrated evidence, open issues, baseline status, and production handoff readiness. SVP Engineering provides final gate authority.

### 8. Release to Production

After PRR approval, the controlled design package is released to the production floor. That package should include the approved hardware definition, released software/autonomy baselines, verification evidence, and any configuration instructions needed so production builds match what engineering verified.

## Configuration Baselines

This workflow starts from the **Product Baseline**, which is established at CDR in [WF06 — New Product Development](../06-new-product-dev/overview.md). Integration and verification then confirm the product definition as it moves through three practical states:

- **Product Baseline** — the approved detailed design package coming out of CDR and used as the intended integration target.
- **As-Built** — the actual integrated aircraft configuration, including hardware revisions and loaded software/autonomy versions, created during assembly and integration.
- **As-Deployed** — the final released configuration handed to production and ultimately installed on production aircraft or delivered assets.

The core objective of WF05 is to prove that the as-built system matches the product baseline closely enough to support release, and that the as-deployed configuration remains traceable to what was verified.

## Current vs. Target State

This is a **new process**. No current-state integration workflow exists today; the documentation and diagrams in WF05 describe the proposed target-state process Firestorm should adopt.

## Cross-Workflow Connections

- **WF01 — HW Feature-Driven Design Changes:** provides released hardware design inputs when integration depends on approved ECO-driven changes.
- **WF03 — Software Release Process:** provides released firmware, Ignite, and companion-computer builds as controlled inputs to HITL and system integration.
- **WF06 — New Product Development:** provides the product baseline established at CDR and hands the program into integration and verification execution.

## Roles

- HW Team
- SW Team
- Autonomy
- Aero
- Project Engineer
- SVP Engineering
- Quality

## RACI Matrix

| Activity | HW Team | SW Team | Autonomy | Aero | Project Engineer | SVP Engineering | Quality |
|----------|---------|---------|----------|------|-----------------|----------------|---------|
| Declare subsystem ready | R | R | R | R | I | — | I |
| Interface verification (ICD) | R | R | R | C | I | — | R |
| HITL testing | C | R | R | C | I | — | R |
| System integration | R | R | R | C | I | — | R |
| System verification | R | R | R | R | A | I | R |
| Configuration audit | R | R | R | R | I | — | A |
| PRR gate | R | R | R | R | A | A (final) | R |
| Release to production | R | R | — | — | A | I | R |
