//===-- TLCS900MCAsmInfo.h - TLCS900 asm properties --------------*- C++ -*--===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the declaration of the TLCS900MCAsmInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TLCS900_MCTARGETDESC_TLCS900MCASMINFO_H
#define LLVM_LIB_TARGET_TLCS900_MCTARGETDESC_TLCS900MCASMINFO_H

#include "llvm/MC/MCAsmInfoELF.h"

namespace llvm {
  class Triple;

  class TLCS900MCAsmInfo : public MCAsmInfoELF {
    void anchor() override;
  public:
    explicit TLCS900MCAsmInfo(const Triple &TT);
  };

} // namespace llvm

#endif
