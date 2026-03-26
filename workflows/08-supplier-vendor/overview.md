# Supplier / Vendor Management

## Purpose

This workflow defines a proposed supplier and vendor management process for hardware components and externally sourced items that affect product quality, schedule, or compliance. It documents a formal path from need identification through supplier evaluation, qualification, approved supplier listing, procurement, incoming inspection, and supplier change notification. This is a new process intended to replace the current informal approach with a repeatable, auditable lifecycle.

## 7-Stage Supplier Lifecycle

### 1. Identification

The HW Team identifies a component or service need and defines the technical, quality, regulatory, and delivery requirements needed to support the program. The SW Team is consulted where the supplied item affects embedded interfaces, firmware compatibility, software-controlled behavior, or data exchange. Requirements should include performance expectations, traceability needs, and counterfeit parts prevention awareness consistent with AS6174 for higher-risk electronic parts.

### 2. Supplier Evaluation

Potential suppliers are evaluated against the defined requirements, quality history, manufacturing capability, lead time, responsiveness, and business risk. Procurement and Quality participate with the HW Team to confirm commercial viability, quality controls, and the supplier's ability to meet documentation and traceability expectations before any source is advanced.

### 3. Qualification / FAI

Selected suppliers or components move through qualification testing before routine use. Qualification may include bench testing, fit and function checks, environmental screening, documentation review, and first article inspection (FAI) aligned with AS9102 where appropriate. This stage establishes objective evidence that the supplied item performs as required before broader release.

### 4. Approved Supplier List (ASL)

Once evaluation and qualification evidence are complete, the Project Engineer approves the supplier for use with Quality support and consultation from HW and Procurement. Approved sources are added to the approved supplier list (ASL), which becomes the controlled reference for future purchases of qualified items.

### 5. Procurement

Procurement places purchase orders only with approved sources unless an exception path is explicitly approved. Purchase documents should flow down the applicable technical, inspection, traceability, packaging, and notification requirements so the supplier understands what evidence must accompany delivered material.

### 6. Incoming Quality / Inspection

Delivered material is received and inspected against purchase requirements, certifications, and physical condition. Quality leads the incoming inspection activity, with HW consulted as needed for technical acceptance criteria. Nonconforming or suspect material is rejected or routed into MRB disposition before use, helping prevent escapes and reducing counterfeit or incorrect-part risk.

### 7. Change Notification

Approved suppliers are expected to notify Firestorm before changes that could affect form, fit, function, materials, processes, manufacturing location, sub-tier sourcing, or compliance status. Change notifications are reviewed by HW, SW when interface-relevant, Quality, Procurement, and the Project Engineer so the team can determine whether re-evaluation, requalification, FAI refresh, or ASL restrictions are required.

## External References

- **AS9100 Rev D §8.4.1** — control of externally provided processes, products, and services
- **AS9102** — first article inspection expectations for qualification evidence
- **AS6174** — counterfeit parts prevention awareness for procured components

## Roles

- HW Team
- SW Team
- Project Engineer
- SVP Engineering
- Quality
- Procurement

## RACI Matrix

| Activity | HW Team | SW Team | Autonomy | Aero | Project Engineer | SVP Engineering | Quality | Procurement |
|----------|---------|---------|----------|------|-----------------|----------------|---------|-------------|
| Identify component need | R | C | — | — | I | — | — | — |
| Define requirements | R | C | C | C | I | — | C | — |
| Evaluate suppliers | R | — | — | — | C | I | R | R |
| Qualify component (test) | R | C | — | — | I | — | R | — |
| Approve supplier (ASL) | C | — | — | — | A | I | R | C |
| Procurement | C | — | — | — | A | — | C | R |
| Incoming inspection | C | — | — | — | — | — | R | C |
| Supplier change notification | R | C | C | C | A | I | R | C |
