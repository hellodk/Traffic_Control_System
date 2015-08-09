*******************************************************************************
****** AND2 schematic traffic  <vs>  AND2 layout traffic
*******************************************************************************
                                                                                                                                                                                                                            
Pre-expand Statistics                      
======================                          Original       
Cell/Device                               schematic  layout
(P_18_MM) MOS                                     3       3
(N_18_MM) MOS                                     3       3
                                             ------  ------
Total                                             6       6

Filter Statistics
=================                               Original            Filtered
Cell/Device                               schematic  layout   schematic  layout
(N_18_MM) MOS                                     3       3           3       3
(P_18_MM) MOS                                     3       3           3       3

Reduce Statistics
=================                               Filtered             Reduced
Cell/Device                               schematic  layout   schematic  layout
(N_18_MM) MOS                                     3       3           3       0*
(P_18_MM) MOS                                     3       3           1       1
(P_18_MM:ParMos2#1) MosBlk                        -       -           1       1
(-, N_18_MM:SerMos3#1) MosBlk                     -       -           -       1*

Match Statistics
================                                  Total             Unmatched
Cell/Device                               schematic  layout   schematic  layout
(N_18_MM) MOS                                     3       0*          3       0*
(P_18_MM) MOS                                     1       1           0       0
(P_18_MM:ParMos2#1) MosBlk                        1       1           0       0
(-, N_18_MM:SerMos3#1) MosBlk                     -       1*          -       1*
                                             ------  ------      ------  ------
Total                                             5       3           3       1

Match Statistics for Nets                         7       7           1       1

=========================================================================[AND2]
====== Bad Initial Net Bindings (nets don't match) ============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 1)
Schematic Net:  VDD1
S       1   of P_18_MM {D S}
S      *1   of P_18_MM B
S       1   of P_18_MM:ParMos2#1 {OUT OUT2}
S      *1   of P_18_MM:ParMos2#1 TERM4

Layout Net:  VDD1
L       1   of P_18_MM {D S}
L       1   of P_18_MM:ParMos2#1 {OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 2)
Schematic Net:  b
S      *1   of N_18_MM G
S       1   of P_18_MM:ParMos2#1 {IN1 IN2}

Layout Net:  b
L       1   of P_18_MM:ParMos2#1 {IN1 IN2}
L      *1   of N_18_MM:SerMos3#1 ?{IN1 IN2 IN3}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 3)
Schematic Net:  out
S      *1   of N_18_MM {D S}
S       1   of P_18_MM {D S}

Layout Net:  out
L       1   of P_18_MM {D S}
L      *1   of N_18_MM:SerMos3#1 ?{OUT OUT2}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (badbind 4)
Schematic Net:  a
S      *1   of N_18_MM G
S       1   of P_18_MM:ParMos2#1 {IN1 IN2}

Layout Net:  a
L       1   of P_18_MM:ParMos2#1 {IN1 IN2}
L      *1   of N_18_MM:SerMos3#1 ?{IN1 IN2 IN3}

=========================================================================[AND2]
====== Unmatched Pins =========================================================
===============================================================================

S ?GND1

=========================================================================[AND2]
====== Unbound Pin ============================================================
===============================================================================

S GND1

=========================================================================[AND2]
====== Unmatched Internal Nets ================================================
===============================================================================

L ?avS55

=========================================================================[AND2]
====== Bad Matched Nets (don't really match) ==================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 1)
Schematic Net:  net058
S      *1   of N_18_MM {D S}
S      *1   of N_18_MM G
S       1   of P_18_MM G
S       1   of P_18_MM:ParMos2#1 {OUT OUT2}

Layout Net:  avC5
L       1   of P_18_MM G
L       1   of P_18_MM:ParMos2#1 {OUT OUT2}
L      *1   of N_18_MM:SerMos3#1 ?{OUT OUT2}
L      *1   of N_18_MM:SerMos3#1 ?{IN1 IN2 IN3}

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badmatch 2)
Schematic Net:  net8
S      *2   of N_18_MM {D S}
S      *1   of N_18_MM B

Layout Net:  avS54
L      *1   of N_18_MM:SerMos3#1 ?TERM4

=========================================================================[AND2]
====== Suggested Terminal Rewire ==============================================
===============================================================================

In the layout, terminal 'TERM4' of instance I##8 probably should connect to 
net VDD1 instead of net avS55.
This makes a better match between layout net VDD1 and schematic net VDD1.

In the layout, terminal 'B' of instance avD750_3 probably should connect to 
net VDD1 instead of net avS55.
This makes a better match between layout net VDD1 and schematic net VDD1.


=========================================================================[AND2]
====== Problem Schematic Nets (no exact match in layout) ======================
===============================================================================
S
S ?out
S       1   of N_18_MM {D S}
S       1   of P_18_MM {D S}
S
S ?net8
S       2   of N_18_MM {D S}
S       1   of N_18_MM B
S
S ?GND1
S       2   of N_18_MM {D S}
S       2   of N_18_MM B
S
S ?b ?a
S (total 2) with:
S       1   of N_18_MM G
S       1   of P_18_MM:ParMos2#1 {IN1 IN2}
S
S ?net058
S       1   of N_18_MM {D S}
S       1   of N_18_MM G
S       1   of P_18_MM G
S       1   of P_18_MM:ParMos2#1 {OUT OUT2}
S
S ?VDD1
S       1   of P_18_MM {D S}
S       1   of P_18_MM B
S       1   of P_18_MM:ParMos2#1 {OUT OUT2}
S       1   of P_18_MM:ParMos2#1 TERM4

=========================================================================[AND2]
====== Problem Layout Nets (no exact match in schematic) ======================
===============================================================================
L
L ?avS54
L       1   of N_18_MM:SerMos3#1 ?TERM4
L
L ?VDD1
L       1   of P_18_MM {D S}
L       1   of P_18_MM:ParMos2#1 {OUT OUT2}
L
L ?out
L       1   of P_18_MM {D S}
L       1   of N_18_MM:SerMos3#1 ?{OUT OUT2}
L
L ?avS55
L       1   of P_18_MM B
L       1   of P_18_MM:ParMos2#1 TERM4
L
L ?a ?b
L (total 2) with:
L       1   of P_18_MM:ParMos2#1 {IN1 IN2}
L       1   of N_18_MM:SerMos3#1 ?{IN1 IN2 IN3}
L
L ?avC5
L       1   of P_18_MM G
L       1   of P_18_MM:ParMos2#1 {OUT OUT2}
L       1   of N_18_MM:SerMos3#1 ?{OUT OUT2}
L       1   of N_18_MM:SerMos3#1 ?{IN1 IN2 IN3}

=========================================================================[AND2]
====== Matched Instances with Bad Net Connections =============================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 1)
Schematic Instance: M5  P_18_MM
Layout Instance:    avD750_3  P_18_MM

Pin        SchNet                      : LayNet
---        ------                      : ------
B          VDD1                        : ?avS55

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = =(badcon 2)
Schematic Instance: I##7  P_18_MM:ParMos2#1
Layout Instance:    I##8  P_18_MM:ParMos2#1

Pin        SchNet                      : LayNet
---        ------                      : ------
TERM4      VDD1                        : ?avS55

=========================================================================[AND2]
====== Unmatched Schematic Instances ==========================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 1)
Schematic Instance: M4  N_18_MM

S Pin        Net
S ---        ---
S D          out
S G          net058
S S          ?GND1
S B          ?GND1

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 2)
Schematic Instance: M0  N_18_MM

S Pin        Net
S ---        ---
S D          net058
S G          b
S S          net8
S B          net8

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (schinst 3)
Schematic Instance: M1  N_18_MM

S Pin        Net
S ---        ---
S D          net8
S G          a
S S          ?GND1
S B          ?GND1

=========================================================================[AND2]
====== Unmatched Layout Instances =============================================
===============================================================================

= = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = = (layinst 1)
Layout Instance:    I##7  N_18_MM:SerMos3#1

L Pin        Net
L ---        ---
L OUT        net058
L OUT2       out
L TERM4      net8
L IN1        b
L IN2        a
L IN3        net058

=========================================================================[AND2]
====== Summary of Errors ======================================================
===============================================================================

Schematic  Layout     Error Type
---------  ------     ----------
 1          -         Unmatched Pins
 4          4         Bad Initial Net Bindings
 2          2         Bad Matched Nets
 -          2         Suggested Terminal Rewire
 -          1         Unmatched Internal Nets
 2          2         Matched Instances with Bad Net Connections
 3          1         Unmatched Instances
 1          -         Unbound Pin

