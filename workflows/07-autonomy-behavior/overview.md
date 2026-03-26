# Autonomy Behavior Development

## Purpose

This workflow defines a new process for developing, validating, certifying, and releasing Firestorm autonomy behaviors such as landing, terminal guidance, target search, and swarming. It replaces ad hoc behavior maturation with a documented path that increases validation fidelity over time while preserving fast early iteration and formal gates before operational release.

## 8-Stage Behavior Development Lifecycle

### 1. Behavior Requirements

The Autonomy team defines the behavior objective, mission context, success criteria, safety constraints, interfaces, and required evidence. Aero, SW, and HW provide consulted input on performance limits, software dependencies, and platform constraints while the Project Engineer owns alignment to program intent.

### 2. Algorithm Design

Autonomy develops the proposed behavior logic, architecture, and control approach needed to satisfy the requirement set. Aero remains a primary technical partner for behaviors that depend on vehicle performance, envelopes, or terminal conditions.

### 3. Simulation Validation (SITL)

The initial design is exercised in software-in-the-loop to evaluate nominal performance, off-nominal responses, and requirement coverage before hardware-bound testing begins. SITL is the fastest iteration environment, so failures at this stage should drive redesign and rapid retest rather than downstream workarounds.

### 4. HITL Validation

After SITL success, the behavior is integrated into hardware-in-the-loop testing to validate timing, interfaces, compute loading, sensor assumptions, and software/hardware readiness. HITL is the first point where Autonomy, SW, HW, and Quality all have direct execution responsibility.

### 5. Flight Test

Behaviors that clear HITL enter controlled flight test using the general flight-test workflow in [WF04](../04-flight-test/overview.md). Flight test confirms the behavior in representative operating conditions and verifies that simulation assumptions hold with real aircraft, operators, and environmental variability.

### 6. Performance Analysis

Autonomy and Aero analyze test data to compare measured behavior against requirements, expected envelopes, and observed edge cases. Analysis determines whether the behavior is ready for certification or must loop back for redesign, model updates, or additional validation.

### 7. Behavior Certification

The certification stage consolidates evidence from SITL, HITL, and flight test into a formal readiness decision. Safety-critical behaviors, especially terminal guidance and swarming, may require additional review gates, deeper hazard scrutiny, and explicit SVP Engineering involvement before certification approval.

### 8. Release & Deployment

Certified behaviors are deployed through the software release pipeline in [WF03](../03-sw-release/overview.md). Release includes final coordination on packaging, deployment readiness, and quality evidence so the certified behavior can move into controlled operational use.

## Validation Progression

This process intentionally moves from fast, low-cost iteration to slower, higher-fidelity validation. SITL enables the highest iteration speed, HITL adds platform realism and integration risk reduction, and flight test provides the most representative evidence but with the highest cost and slowest turnaround.

## Safety-Critical Review Expectations

Not all autonomy behaviors carry the same operational risk. Landing, terminal guidance, target search, and swarming should all follow this workflow, but terminal guidance and other safety-critical behaviors may require enhanced entry criteria, additional review gates, or narrower approval authority before certification and release.

## Roles

- Autonomy Engineer
- SW Engineer
- HW Engineer
- Aero Engineer
- Field Operator
- Project Engineer
- SVP Engineering
- Quality Engineer

## RACI Matrix

| Activity | Autonomy | SW Team | HW Team | Aero | Project Engineer | SVP Engineering | Quality |
|----------|----------|---------|---------|------|-----------------|----------------|---------|
| Define behavior requirements | R | C | C | C | A | I | — |
| Algorithm design | R | C | — | R | I | — | — |
| SITL simulation | R | C | — | C | I | — | — |
| HITL validation | R | R | R | C | I | — | R |
| Flight test | R | R | R | R | A | I | R |
| Performance analysis | R | C | C | R | I | — | — |
| Behavior certification | R | C | C | C | A | A (safety) | R |
| Release & deployment | R | R | — | — | A | — | R |
