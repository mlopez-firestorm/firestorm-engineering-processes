# Software Release Process

## Purpose

This workflow defines how firmware for the aircraft flight controller, the Ignite ground control station (QGroundControl-based), and companion computer software are built, tested, approved, released, and deployed. It replaces ad hoc release handling with a gated process that makes release readiness, production approval, and fleet traceability explicit.

## Release Streams

### 1. Firmware

Firmware releases cover aircraft flight-controller software and any platform logic needed for safe vehicle operation. This stream emphasizes code review, automated build verification, unit and integration testing, SITL and HITL evidence, and flight-test validation before production release.

### 2. Ignite GCS

Ignite releases cover the QGC-based operator interface, mission workflow updates, payload controls, and operator-facing integrations. This stream follows the same gated path while focusing on UI stability, telemetry behavior, operator workflows, and compatibility with released aircraft firmware.

### 3. Companion Computer

Companion computer releases cover onboard video, radio, mission-computing, and edge-processing software. This stream requires software build/test control plus verification of interfaces to aircraft systems, autonomy functions, and fielded communications hardware.

## End-to-End Release Flow

Each stream follows the same core lifecycle:

1. **Development** — SW Engineer implements a feature, fix, or configuration-controlled change in the appropriate stream.
2. **Code Review** — changes move through pull request review, with Autonomy consulted for behavior changes and HW consulted when interfaces are affected.
3. **Build** — CI or the responsible team generates a reproducible release build candidate.
4. **Unit / Integration Test** — automated tests verify code-level behavior and software interfaces.
5. **System Test (SITL / HITL)** — representative system-level validation confirms the candidate works in integrated environments.
6. **Release Candidate** — the SW Lead and Project Engineer review evidence and approve promotion to release-candidate status.
7. **Flight Test Validation** — flight testing confirms the candidate performs safely and as intended on aircraft where applicable.
8. **Release to Production** — Quality confirms verification evidence and the Project Engineer approves the production gate.
9. **Deployment to Fleet** — released software is installed on applicable aircraft, ground stations, or companion-compute assets with version-to-serial traceability.

## Release Gating

The process is intentionally gated so each transition has defined entry criteria.

### Development → Code Review

- Change is linked to an approved work item, issue, or release objective.
- Developer completes local verification appropriate to the change.
- Impacted interfaces and downstream dependencies are identified.

### Code Review → Build

- Pull request is approved by the SW team.
- Autonomy reviews changes affecting aircraft behavior or autonomy functions.
- HW reviews changes that affect hardware interfaces, IO mappings, payload links, or onboard integration points.

### Build → Unit / Integration Test

- Build completes successfully from a controlled branch or tag.
- Version identifier is generated and captured.
- Required unit tests and software integration tests pass.

### Unit / Integration Test → System Test (SITL / HITL)

- No unresolved blocking defects remain.
- Test environment and configuration match the intended release scope.
- Interface compatibility is confirmed across firmware, Ignite, and companion software where combined testing is required.

### System Test → Release Candidate

- Required SITL and HITL cases pass for affected functionality.
- Test evidence is recorded and reviewed.
- Known issues are dispositioned and accepted for release-candidate evaluation.

### Release Candidate → Flight Test Validation

- SW Lead approves the candidate as technically ready.
- Project Engineer approves progression into production-oriented validation.
- Quality confirms the evidence package is complete enough to support flight testing.

### Flight Test Validation → Release to Production

- Flight-test objectives are completed successfully for affected aircraft behavior or mission capability.
- Defects found during validation are resolved or formally dispositioned.
- Quality verifies release records, test evidence, and approved version metadata.

### Release to Production → Deployment to Fleet

- Production release is approved by the Project Engineer.
- Released binaries, packages, and notes are baselined.
- Deployment instructions, rollback path, and applicability to fleet assets are defined.

## Version Numbering Convention

Use **semantic versioning** for all three release streams:

- **MAJOR** — incompatible interface or behavior changes requiring coordinated adoption.
- **MINOR** — backward-compatible feature additions or operational enhancements.
- **PATCH** — backward-compatible fixes, stability improvements, or low-risk corrections.

Recommended format:

- Firmware: `FW vMAJOR.MINOR.PATCH`
- Ignite: `IGN vMAJOR.MINOR.PATCH`
- Companion Computer: `CC vMAJOR.MINOR.PATCH`

Release candidates should use a suffix such as `-rc.1`, `-rc.2`, and so on until production approval.

## Configuration Tracking and Fleet Traceability

Every production release should maintain explicit mapping from software version to affected aircraft serial numbers and deployed support assets. At minimum, the release record should capture:

- software stream and released version
- build or package identifier
- compatible or required paired versions in the other streams
- aircraft serial numbers receiving the release
- deployment date and responsible release/deployment personnel
- rollback or superseded version reference

This traceability allows the team to answer which software is installed on each aircraft, which ground stations and companion-compute baselines are compatible, and which assets must be updated or quarantined when issues are found in the field.

## Roles

- SW Team
- Autonomy
- HW Team
- Project Engineer
- Quality
- Field Ops

## RACI Matrix

| Activity | SW Team | Autonomy | HW Team | Project Engineer | Quality | Field Ops |
|----------|---------|----------|---------|-----------------|---------|-----------|
| Develop feature/fix | R | C (if behavior) | C (if interface) | I | — | — |
| Code review | R | C (if behavior) | — | — | — | — |
| Build & unit test | R | — | — | — | — | — |
| Integration test (SITL/HITL) | R | R (if behavior) | C | I | — | — |
| Release candidate approval | A | C | C | A (production gate) | R | — |
| Flight test validation | R | R | C | A | R | C |
| Release to production | R | — | — | A | R | — |
| Deploy to fleet | C | — | — | I | R | R |
