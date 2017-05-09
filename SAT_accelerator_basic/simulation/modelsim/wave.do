onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/N
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/clk
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/resetN
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/fifoIndexTracker
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/command
add wave -noupdate -expand -group TestBench /SAT_accelerator_tb/outSATRes
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/outCNF
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/N
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/outSATRes
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/clk
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/resetN
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/command
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/ResetN_Clause
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/ResetN_CNF
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/Clause_En
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/CNF_En
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/varPos
add wave -noupdate -group {SAT TOP} /SAT_accelerator_tb/SAT_acc_test/negCtrl
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/truthVal}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/outCNF}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/clk}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/resetClause}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/enableClause}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/negCtrl}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/varPos}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/resetCNF}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/enableCNF}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/accTruthVal}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/clauseOut}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/inORgate}
add wave -noupdate -group SAT_3 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[3]/SAT_acc/inANDgate}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/truthVal}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/outCNF}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/clk}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/resetClause}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/enableClause}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/negCtrl}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/varPos}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/resetCNF}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/enableCNF}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/accTruthVal}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/clauseOut}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/inORgate}
add wave -noupdate -group SAT_2 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[2]/SAT_acc/inANDgate}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/truthVal}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/outCNF}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/clk}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/resetClause}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/enableClause}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/negCtrl}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/varPos}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/resetCNF}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/enableCNF}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/accTruthVal}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/clauseOut}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/inORgate}
add wave -noupdate -group SAT_1 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[1]/SAT_acc/inANDgate}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/truthVal}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/outCNF}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/clk}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/resetClause}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/enableClause}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/negCtrl}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/varPos}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/resetCNF}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/enableCNF}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/accTruthVal}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/clauseOut}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/inORgate}
add wave -noupdate -group SAT_0 {/SAT_accelerator_tb/SAT_acc_test/generate_blocks[0]/SAT_acc/inANDgate}
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/ResetN_Clause
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/ResetN_CNF
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/Clause_En
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/CNF_En
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/varPos
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/negCtrl
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/clk
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/resetN
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/command
add wave -noupdate -expand -group Sync /SAT_accelerator_tb/SAT_acc_test/SAT_sync/state
add wave -noupdate -group Buffer /SAT_accelerator_tb/b1/clk
add wave -noupdate -group Buffer /SAT_accelerator_tb/b1/reset
add wave -noupdate -group Buffer /SAT_accelerator_tb/b1/fifoIndexTracker
add wave -noupdate -group Buffer /SAT_accelerator_tb/b1/outVal
add wave -noupdate -group Buffer /SAT_accelerator_tb/b1/fifoVal
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {24000 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 404
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {14800 ps} {41200 ps}
