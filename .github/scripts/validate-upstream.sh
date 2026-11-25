#!/usr/bin/env bash
set -euo pipefail

# Exercise the full parser/semantic/codegen/compat dependency surface used by js-redox,
# including the fork's regression tests for scope binding and Babel targets.
cargo test --locked -p oxc_parser -p oxc_semantic -p oxc_compat -p oxc_codegen -p oxc_ecmascript
cargo check --locked -p oxc_parser -p oxc_semantic -p oxc_compat -p oxc_codegen -p oxc_ecmascript --all-features
