//===-- TLCS900RegisterInfo.td - TLCS900 Register defs -------*- tablegen -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source 
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Declarations that describe the TLCS900 register file
//===----------------------------------------------------------------------===//

class TLCS900Reg<bits<4> num, string n> : Register<n> {
  field bits<4> Num = num;
  let Namespace = "TLCS900";
}

class TLCS900RegWithSubregs<bits<4> num, string n, list<Register> subregs> 
  : RegisterWithSubRegs<n, subregs> {
  field bits<4> Num = num;
  let Namespace = "TLCS900";
}

//===----------------------------------------------------------------------===//
//  Registers
//===----------------------------------------------------------------------===//

def PCB  : TLCS900Reg<0,  "r0">;
def SPB  : TLCS900Reg<1,  "r1">;
def SRB  : TLCS900Reg<2,  "r2">;
def CGB  : TLCS900Reg<3,  "r3">;
def FPB  : TLCS900Reg<4,  "r4">;
def R5B  : TLCS900Reg<5,  "r5">;
def R6B  : TLCS900Reg<6,  "r6">;
def R7B  : TLCS900Reg<7,  "r7">;
def R8B  : TLCS900Reg<8,  "r8">;
def R9B  : TLCS900Reg<9,  "r9">;
def R10B : TLCS900Reg<10, "r10">;
def R11B : TLCS900Reg<11, "r11">;
def R12B : TLCS900Reg<12, "r12">;
def R13B : TLCS900Reg<13, "r13">;
def R14B : TLCS900Reg<14, "r14">;
def R15B : TLCS900Reg<15, "r15">;

def subreg_8bit : SubRegIndex<8> { let Namespace = "TLCS900"; }

let SubRegIndices = [subreg_8bit] in {
def PC  : TLCS900RegWithSubregs<0,  "r0",  [PCB]>;
def SP  : TLCS900RegWithSubregs<1,  "r1",  [SPB]>;
def SR  : TLCS900RegWithSubregs<2,  "r2",  [SRB]>;
def CG  : TLCS900RegWithSubregs<3,  "r3",  [CGB]>;
def FP  : TLCS900RegWithSubregs<4,  "r4",  [FPB]>;
def R5  : TLCS900RegWithSubregs<5,  "r5",  [R5B]>;
def R6  : TLCS900RegWithSubregs<6,  "r6",  [R6B]>;
def R7  : TLCS900RegWithSubregs<7,  "r7",  [R7B]>;
def R8  : TLCS900RegWithSubregs<8,  "r8",  [R8B]>;
def R9  : TLCS900RegWithSubregs<9,  "r9",  [R9B]>;
def R10 : TLCS900RegWithSubregs<10, "r10", [R10B]>;
def R11 : TLCS900RegWithSubregs<11, "r11", [R11B]>;
def R12 : TLCS900RegWithSubregs<12, "r12", [R12B]>;
def R13 : TLCS900RegWithSubregs<13, "r13", [R13B]>;
def R14 : TLCS900RegWithSubregs<14, "r14", [R14B]>;
def R15 : TLCS900RegWithSubregs<15, "r15", [R15B]>;
}

def GR8 : RegisterClass<"TLCS900", [i8], 8,
   // Volatile registers
  (add R12B, R13B, R14B, R15B, R11B, R10B, R9B, R8B, R7B, R6B, R5B,
   // Frame pointer, sometimes allocable
   FPB,
   // Volatile, but not allocable
   PCB, SPB, SRB, CGB)>;

def GR16 : RegisterClass<"TLCS900", [i16], 16,
   // Volatile registers
  (add R12, R13, R14, R15, R11, R10, R9, R8, R7, R6, R5,
   // Frame pointer, sometimes allocable
   FP,
   // Volatile, but not allocable
   PC, SP, SR, CG)>;
