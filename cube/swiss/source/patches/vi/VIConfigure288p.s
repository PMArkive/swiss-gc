#include "../asm.h"
#define _LANGUAGE_ASSEMBLY
#include "../../../../reservedarea.h"

.globl VIConfigure288p
VIConfigure288p:
	li			%r0, 5
	li			%r6, 0
	lhz			%r5, 8 (%r3)
	srwi		%r5, %r5, 1
	subfic		%r4, %r5, 287
	srwi		%r4, %r4, 1
	sth			%r4, 12 (%r3)
	sth			%r5, 16 (%r3)
	stw			%r6, 20 (%r3)
	stw			%r0, 0 (%r3)
	mflr		%r0
	trap

.globl VIConfigure288p_length
VIConfigure288p_length:
.long (VIConfigure288p_length - VIConfigure288p)