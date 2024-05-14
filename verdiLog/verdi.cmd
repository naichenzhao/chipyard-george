verdiSetActWin -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
verdiWindowResize -win $_Verdi_1 "436" "175" "900" "700"
simSetSimulator "-vcssv" -exec \
           "/bwrcq/C/nzhao/george/sims/vcs/simv-chipyard.harness-RiskyBearRocketConfig-debug" \
           -args \
           "+permissive +dramsim +dramsim_ini_dir=/bwrcq/C/nzhao/george/generators/testchipip/src/main/resources/dramsim2_ini +max-cycles=10000000 +ntb_random_seed_automatic +verbose +fsdbfile=/bwrcq/C/nzhao/george/sims/vcs/output/chipyard.harness.TestHarness.RiskyBearRocketConfig/test.fsdb +permissive-off ../../generators/riskybear/baremetal_test/test.riscv"
debImport "-dbdir" \
          "/bwrcq/C/nzhao/george/sims/vcs/simv-chipyard.harness-RiskyBearRocketConfig-debug.daidir"
debLoadSimResult \
           /bwrcq/C/nzhao/george/sims/vcs/output/chipyard.harness.TestHarness.RiskyBearRocketConfig/test.fsdb
wvCreateWindow
verdiDockWidgetSetCurTab -dock widgetDock_<Decl._Tree>
verdiSetActWin -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
srcTBTreeAction -win $_nTrace1 -path "MotorPWM"
srcTBBTreeSelect -win $_nTrace1 -path "MulAddRecFNPipe"
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBTreeAction -win $_nTrace1 -path "MotorTL"
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_port_0_motor_out_a" -line 103 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/io_port_0_motor_out_a"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_port_0_motor_out_a" -line 103 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_port_0_motor_out_b" -line 104 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/io_port_0_motor_out_b"
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 489766846.592755 540467348.310431
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "auto_clock_in_clock" -line 101 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/auto_clock_in_clock"
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetCursor -win $_nWave2 498264854.484192 -snap {("G1" 3)}
verdiSetActWin -win $_nWave2
wvZoom -win $_nWave2 497758166.147225 502318361.179921
wvZoom -win $_nWave2 498290806.041712 498954469.653591
wvZoom -win $_nWave2 498376199.360905 498456203.781325
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -inst "impl" -line 278 -pos 1 -win $_nTrace1
srcAction -pos 277 3 1 -win $_nTrace1 -name "impl" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_motor_out_a" -line 93 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 0)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/io_motor_out_a"
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_motor_out_b" -line 94 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/io_motor_out_b"
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -inst "motor_pin_a" -line 98 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "motor_pin_b" -line 105 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -inst "motor_pin_b" -line 105 -pos 1 -win $_nTrace1
srcAction -pos 104 3 3 -win $_nTrace1 -name "motor_pin_b" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_duty_in" -line 91 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G1" 2)}
wvSetPosition -win $_nWave2 {("G2" 0)}
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/motor_pin_b/io_duty_in\[15:0\]"
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetCursor -win $_nWave2 498338345.926434 -snap {("G2" 3)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 498393114.723923 -snap {("G2" 2)}
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "pwm_val" -line 100 -pos 2 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G2" 3)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/motor_pin_b/pwm_val\[15:0\]"
wvSetPosition -win $_nWave2 {("G2" 3)}
wvSetPosition -win $_nWave2 {("G2" 4)}
wvSetCursor -win $_nWave2 498474068.603424 -snap {("G3" 0)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 498472869.286691 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 498481864.162191 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 498510247.991547 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 498533634.667847 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 498548226.354769 -snap {("G2" 4)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 510290396.684591 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 510245622.193213 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 510200847.701834 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 510101704.185211 -snap {("G2" 4)}
wvSetCursor -win $_nWave2 509545221.220940 -snap {("G3" 0)}
wvSelectSignal -win $_nWave2 {( "G2" 4 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 509426888.636583 -snap {("G3" 0)}
wvSetCursor -win $_nWave2 510287198.506635 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 508662524.105198 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 508662524.105198 -snap {("G2" 3)}
wvSetCursor -win $_nWave2 508828829.358889
wvSetCursor -win $_nWave2 507914150.463591
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "pwm_val" -line 95 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G1" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/motor_pin_b/pwm_val\[11:0\]"
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetCursor -win $_nWave2 503721193.074273 -snap {("G3" 1)}
verdiSetActWin -win $_nWave2
wvSetCursor -win $_nWave2 507782167.423793 -snap {("G2" 2)}
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 507717187.696329 -snap {("G2" 2)}
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 511098114.094316 -snap {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvZoom -win $_nWave2 510118060.184260 539029650.530918
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 631108500.668136 -snap {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G1" 2 )} 
wvSelectSignal -win $_nWave2 {( "G1" 3 )} 
wvSelectSignal -win $_nWave2 {( "G1" 2 3 )} 
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetCursor -win $_nWave2 510911408.008949 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 519001596.937933 -snap {("G2" 2)}
wvZoom -win $_nWave2 508888860.776703 520157338.213502
wvZoom -win $_nWave2 511640874.941465 512309522.884310
wvZoom -win $_nWave2 511764915.190635 511830067.644779
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvSetCursor -win $_nWave2 510834572.572579 -snap {("G2" 2)}
wvSelectSignal -win $_nWave2 {( "G2" 2 )} 
wvSetMarker -win $_nWave2 -keepViewRange -name "M1" 511834689.195335
wvSetMarker -win $_nWave2 -keepViewRange -name "M1" 511834689.195335
wvSelectGroup -win $_nWave2 {G2}
wvSetMarker -win $_nWave2 -keepViewRange -name "M2" 519835622.177377
wvSetMarker -win $_nWave2 -keepViewRange -name "M2" 519871000.000000
wvSetCursor -win $_nWave2 571841686.560653 -snap {("G4" 0)}
debReload
wvZoom -win $_nWave2 483831423.758186 522835972.045643
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
debReload
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debLoadSimResult \
           /bwrcq/C/nzhao/george/sims/vcs/output/chipyard.harness.TestHarness.RiskyBearRocketConfig/motor_test.fsdb
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvZoom -win $_nWave2 848997743.360400 908618371.405372
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 857940837.567146 938428685.427858
wvZoom -win $_nWave2 915755344.150372 927418792.434998
wvZoom -win $_nWave2 919856856.570190 921277451.458074
wvZoom -win $_nWave2 920507260.100905 920643906.954580
wvZoom -win $_nWave2 920567859.267739 920574516.640998
wvSetCursor -win $_nWave2 920570953.012674 -snap {("G1" 0)}
wvSetCursor -win $_nWave2 920570982.120490 -snap {("G1" 1)}
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
verdiSetActWin -dock widgetDock_<Decl._Tree>
srcDeselectAll -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_presc" -line 92 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G1" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G3" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/motor_pin_b/io_presc\[31:0\]"
wvSetPosition -win $_nWave2 {("G3" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
srcTBBTreeSelect -win $_nTrace1 -path "MaxPeriodFibonacciLFSR"
verdiSetActWin -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBTreeAction -win $_nTrace1 -path "MotorTL"
srcDeselectAll -win $_nTrace1
srcSelect -signal "motor_presc" -line 123 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/motor_presc\[31:0\]"
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetCursor -win $_nWave2 920571397.946428 -snap {("G3" 3)}
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {125 133 7 7 29 17}
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 953185591.508432 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 956428800.440350 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 969725957.061212 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 874375614.462836 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 869510801.064959 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 953834233.294816 -snap {("G2" 1)}
wvSetCursor -win $_nWave2 950915345.256090 -snap {("G2" 1)}
wvZoom -win $_nWave2 952861270.615241 962915218.304185
wvZoom -win $_nWave2 957533436.187077 958607280.693516
wvZoom -win $_nWave2 957903681.138627 958040510.794663
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSelectSignal -win $_nWave2 {( "G3" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 957976155.559786 -snap {("G4" 0)}
wvSetCursor -win $_nWave2 957966241.605944 -snap {("G2" 1)}
wvZoom -win $_nWave2 957961626.489501 957973420.675967
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomIn -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 937780944.684387 941884643.832622
wvZoom -win $_nWave2 940049385.500157 940390292.425027
wvZoom -win $_nWave2 940116246.695858 940155426.504838
wvSetCursor -win $_nWave2 940127014.413446 -snap {("G2" 2)}
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoom -win $_nWave2 953116613.887255 961536577.532879
wvZoomOut -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "motor_speed" -line 124 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/motor_speed\[11:0\]"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 1)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 1 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 954649667.855169 -snap {("G5" 0)}
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
srcTBBTreeSelect -win $_nTrace1 -path "MotorPWM"
srcTBTreeAction -win $_nTrace1 -path "MotorPWM"
verdiSetActWin -dock widgetDock_<Decl._Tree>
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBBTreeSelect -win $_nTrace1 -path "MotorTL"
srcTBTreeAction -win $_nTrace1 -path "MotorTL"
srcDeselectAll -win $_nTrace1
srcSelect -inst "impl" -line 327 -pos 1 -win $_nTrace1
srcAction -pos 326 3 2 -win $_nTrace1 -name "impl" -ctrlKey off
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -inst "motor_pin_a" -line 99 -pos 1 -win $_nTrace1
srcAction -pos 98 3 7 -win $_nTrace1 -name "motor_pin_a" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_duty_in" -line 91 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_presc" -line 92 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_duty_in" -line 91 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 1)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G5" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/motor_pin_a/io_duty_in\[11:0\]"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
srcBackwardHistory -win $_nTrace1
srcHBSelect "TestDriver.testHarness.chiptop0.system.motor.impl" -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_dir" -line 91 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_presc" -line 92 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/io_presc\[31:0\]"
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
verdiSetActWin -win $_nWave2
wvCut -win $_nWave2
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_speed_in" -line 93 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
wvSetPosition -win $_nWave2 {("G2" 2)}
wvSetPosition -win $_nWave2 {("G3" 0)}
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/io_speed_in\[11:0\]"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetCursor -win $_nWave2 957689479.839661 -snap {("G4" 3)}
verdiSetActWin -win $_nWave2
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSelectSignal -win $_nWave2 {( "G4" 3 )} 
wvSetRadix -win $_nWave2 -format UDec
wvSetCursor -win $_nWave2 957784145.264784 -snap {("G5" 0)}
wvSelectSignal -win $_nWave2 {( "G4" 2 )} 
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_speed_in" -line 103 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_dir" -line 91 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G3" 2)}
wvSetPosition -win $_nWave2 {("G3" 3)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/io_dir"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSelectSignal -win $_nWave2 {( "G2" 1 )} 
verdiSetActWin -win $_nWave2
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_dir" -line 103 -pos 1 -win $_nTrace1
verdiSetActWin -dock widgetDock_MTB_SOURCE_TAB_1
srcDeselectAll -win $_nTrace1
srcSelect -signal "io_speed_in" -line 103 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "_GEN" -line 103 -pos 1 -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -signal "_GEN" -line 98 -pos 1 -win $_nTrace1
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 4)}
wvSetPosition -win $_nWave2 {("G4" 3)}
wvSetPosition -win $_nWave2 {("G4" 2)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 0)}
wvSetPosition -win $_nWave2 {("G4" 1)}
wvAddSignal -win $_nWave2 \
           "/TestDriver/testHarness/chiptop0/system/motor/impl/_GEN"
wvSetPosition -win $_nWave2 {("G4" 1)}
wvSetPosition -win $_nWave2 {("G4" 2)}
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {103 103 28 29 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {98 98 13 16 1 1}
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {98 98 13 16 1 1} -backward
srcDeselectAll -win $_nTrace1
srcAction -pos 97 12 0 -win $_nTrace1 -name ">" -ctrlKey off
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {98 98 13 16 1 1} -backward
srcDeselectAll -win $_nTrace1
srcDeselectAll -win $_nTrace1
srcSelect -win $_nTrace1 -range {98 98 13 16 1 1}
srcDeselectAll -win $_nTrace1
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
verdiSetActWin -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
debReload
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomOut -win $_nWave2
wvZoomIn -win $_nWave2
wvSetCursor -win $_nWave2 941937329.896694 -snap {("G3" 1)}
wvSetCursor -win $_nWave2 869344173.388430 -snap {("G3" 2)}
wvSetCursor -win $_nWave2 968399859.855372 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 949804568.533058 -snap {("G2" 2)}
wvSetCursor -win $_nWave2 968757461.611570 -snap {("G2" 2)}
