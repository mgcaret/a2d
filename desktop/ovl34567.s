
        .setcpu "6502"

        .include "apple2.inc"
        .include "../inc/apple2.inc"
        .include "../inc/prodos.inc"
        .include "../mgtk.inc"
        .include "../desktop.inc"
        .include "../macros.inc"
        .include "inc/desktoplc.inc"

.macro entry arg1, arg2
        .byte arg1
        .addr arg2
.endmacro

        dummy1234 := $1234

;;; ============================================================
;;; Interdependent Overlays

        .include "ovl3.s"       ; Selector (1/2) @ $9000-$9FFF
        .include "ovl4.s"       ; Common         @ $5000-$6FFF
        .include "ovl5.s"       ; File Copy      @ $7000-$77FF
        .include "ovl6.s"       ; File Delete    @ $7000-$77FF
        .include "ovl7.s"       ; Selector (2/2) @ $7000-$77FF

        common_overlay_L5000 := common_overlay::L5000
