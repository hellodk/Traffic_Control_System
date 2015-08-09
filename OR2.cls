*******************************************************************************
****** OR2 schematic traffic  <vs>  OR2 layout traffic
*******************************************************************************

Filter/Reduce statistics only. Network matching was OK.
                                                                                                                                                                   
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
(N_18_MM) MOS                                     3       3           1       1
(P_18_MM) MOS                                     3       3           1       1
(N_18_MM:ParMos2#1) MosBlk                        -       -           1       1
(P_18_MM:SerMos2#1) MosBlk                        -       -           1       1
                                             ------  ------      ------  ------
Total                                             6       6           4       4

Schematic and Layout Match
