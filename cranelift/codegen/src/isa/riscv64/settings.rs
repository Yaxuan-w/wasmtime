//! riscv64 Settings.

use crate::settings::{self, Builder, Value, detail};
use core::fmt;

// Include code generated by `cranelift-codegen/meta/src/gen_settings.rs:`. This file contains a
// public `Flags` struct with an impl for all of the settings defined in
include!(concat!(env!("OUT_DIR"), "/settings-riscv64.rs"));
