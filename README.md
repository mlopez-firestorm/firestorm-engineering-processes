# Firestorm Engineering Processes

## Purpose

This repository contains workflow documentation for Firestorm engineering teams. It is intended to make cross-functional processes easier to understand, review, and improve through shared written guidance and diagrams.

## How to Use

- Read the workflow overview pages in the `workflows/` directory.
- Follow diagram conventions described in `STYLE-GUIDE.md`.
- Generate PNG exports from Mermaid sources with `npm install && make pngs`.

Target-state diagrams are labeled **PROPOSED** and remain pending leadership approval.

## Team Overview

- **Hardware** — core design, hardware changes, and integrations
- **Software** — firmware, ground control software, companion-computer video and radio systems
- **Autonomy** — landing, terminal guidance, target search, and swarming behaviors
- **Aero** — sizing, architecture analysis, and aero/propulsion performance tools

## Table of Contents

- [Process Landscape](workflows/_landscape/overview.md)
- [HW Feature-Driven Design Changes (ECO)](workflows/01-hw-feature-driven/overview.md)
- [HW Field-Issue Resolution (FRACAS)](workflows/02-hw-field-issue/overview.md)
- [Software Release Process](workflows/03-sw-release/overview.md)
- [Flight Test Process](workflows/04-flight-test/overview.md)
- [Integration & Verification](workflows/05-integration-verification/overview.md)
- [New Product Development](workflows/06-new-product-dev/overview.md)
- [Autonomy Behavior Development](workflows/07-autonomy-behavior/overview.md)
- [Supplier/Vendor Management](workflows/08-supplier-vendor/overview.md)
