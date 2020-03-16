// RUN: pmlc-opt --target-intel_gen | FileCheck %s

!tensor = type tensor<2x4x!eltwise.f32>

func @eltwise_add(%A: !tensor, %B: !tensor, %C: !tensor) -> !tensor {
  %0 = "eltwise.add"(%A, %B) : (!tensor, !tensor) -> !tensor
  %1 = "eltwise.add"(%0, %C) : (!tensor, !tensor) -> !tensor
  return %1 : !tensor
}
