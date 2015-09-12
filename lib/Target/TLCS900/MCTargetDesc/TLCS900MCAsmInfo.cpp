//===-- TLCS900MCAsmInfo.cpp - TLCS900 asm properties -----------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the declarations of the TLCS900MCAsmInfo properties.
//
//===----------------------------------------------------------------------===//

#include "TLCS900MCAsmInfo.h"
using namespace llvm;

void TLCS900MCAsmInfo::anchor() { }

TLCS900MCAsmInfo::TLCS900MCAsmInfo(const Triple &TT) {
  PointerSize = CalleeSaveStackSlotSize = 2;

  CommentString = ";";

  AlignmentIsInBytes = false;
  UsesELFSectionDirectiveForBSS = true;
}
