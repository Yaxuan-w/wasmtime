;;! target = "aarch64"
;;! test = "winch"

(module
    (func (result i64)
	(i64.const 7)
	(i64.const 5)
	(i64.rem_s)
    )
)

;; wasm[0]::function[0]:
;;       stp     x29, x30, [sp, #-0x10]!
;;       mov     x29, sp
;;       str     x28, [sp, #-0x10]!
;;       mov     x28, sp
;;       ldur    x16, [x0, #8]
;;       ldur    x16, [x16, #0x10]
;;       mov     x17, #0
;;       movk    x17, #0x10
;;       add     x16, x16, x17
;;       cmp     sp, x16
;;       b.lo    #0x78
;;   2c: mov     x9, x0
;;       sub     x28, x28, #0x10
;;       mov     sp, x28
;;       stur    x0, [x28, #8]
;;       stur    x1, [x28]
;;       mov     x16, #5
;;       mov     x0, x16
;;       mov     x16, #7
;;       mov     x1, x16
;;       cbz     x0, #0x7c
;;   54: sdiv    x16, x1, x0
;;       msub    x1, x0, x16, x1
;;       mov     x0, x1
;;       add     x28, x28, #0x10
;;       mov     sp, x28
;;       mov     sp, x28
;;       ldr     x28, [sp], #0x10
;;       ldp     x29, x30, [sp], #0x10
;;       ret
;;   78: .byte   0x1f, 0xc1, 0x00, 0x00
;;   7c: .byte   0x1f, 0xc1, 0x00, 0x00
