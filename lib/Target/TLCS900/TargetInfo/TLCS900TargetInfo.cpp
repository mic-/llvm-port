//===-- TLCS900TargetInfo.cpp - TLCS900 Target Implementation ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "TLCS900.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/TargetRegistry.h"
using namespace llvm;

Target llvm::TheTLCS900Target;

extern "C" void LLVMInitializeTLCS900TargetInfo() {
  RegisterTarget<Triple::msp430>
    X(TheTLCS900Target, "msp430", "TLCS900 [experimental]");
}
