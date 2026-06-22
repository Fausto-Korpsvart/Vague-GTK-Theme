# Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com/) and this project adheres to [Semantic Versioning](https://semver.org/).

## [1.0.0] - 2026-06-22

### Added

- Initial official release of the **Vague GTK Theme**.
- Implemented multiple cohesive aesthetic variants to support diverse workspace lighting:
  - `Base`: The core balanced dark presentation.
  - `Medium`: Increased contrast iteration for defined UI separation.
  - `Soft`: Low-fatigue, desaturated palette designed for extended engineering sessions.
  - `Light`: Complete high-definition light mode variant.
- Engineered a strict modular directory layout to isolate component styling (`GTK3`, `GTK4`, and `Cinnamon`).
- Added a centralized, automated compilation workflow via `packager.sh` powered by `sassc`.
- Implemented a production-ready CI/CD deployment pipeline via GitHub Actions for automated `.tar.xz` asset packaging and dynamic semantic release management.
- Added a native terminal-based installation utility featuring automated dependency checks and environment diagnostics.

[1.0.0]: https://github.com/Fausto-Korpsvart/Vague/releases/tag/v1.0.0
