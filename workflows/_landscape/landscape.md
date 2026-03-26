# Firestorm Engineering Process Landscape

This top-level view shows how Firestorm's eight engineering workflows connect across new product development, design release, integration, verification, flight test, corrective action, autonomy maturation, and supplier support.

## Inter-Workflow Narrative

WF06 New Product Development is the upstream program driver. As new products move through requirements, design, and phase-gate reviews, WF06 spawns hardware work into WF01 HW Feature-Driven ECO and software work into WF03 SW Release so each discipline can deliver controlled product elements needed for the new platform.

WF01 HW Feature-Driven ECO converts approved hardware changes into released design outputs. Those released hardware definitions then feed WF05 Integration & Verification, where the aircraft is assembled and checked against the intended product baseline.

WF03 SW Release performs the equivalent control function for firmware, Ignite GCS, and companion-computer software. Its released software builds flow into WF05 Integration & Verification as controlled inputs for HITL, integrated aircraft assembly, and product-level verification.

WF07 Autonomy Behavior Development matures behaviors through requirements, simulation, HITL, flight test, and certification. Once behaviors are certified, WF07 feeds those certified behaviors into WF03 SW Release so they can be packaged, approved, and deployed through the controlled software release pipeline.

WF05 Integration & Verification is where released hardware, released software, autonomy-ready configurations, and the WF06 product baseline come together into a production-ready aircraft. That workflow also depends on qualified components from WF08 Supplier / Vendor Management so the integrated article is built from approved external sources.

WF04 Flight Test validates the integrated aircraft produced by WF05 in real operating conditions. When flight testing uncovers hardware or system-level failures, those failures feed into WF02 HW Field-Issue FRACAS so the issue can be classified, contained, investigated, and formally corrected.

WF02 HW Field-Issue FRACAS closes the hardware corrective-action loop. When FRACAS identifies a design-driven fix, the resulting corrective action feeds back into WF01 HW Feature-Driven ECO as an ECR so the design can be changed through formal release control.

WF04 Flight Test also generates behavior performance data and anomaly evidence that feed back into WF07 Autonomy Behavior Development. That closes the autonomy learning loop by using real flight data to refine algorithms, validate assumptions, and prioritize the next round of autonomy maturation before those behaviors re-enter WF03 for release.
