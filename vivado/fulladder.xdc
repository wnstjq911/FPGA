//  fulladder(전가산기) pin mapping

set_property PACKAGE_PIN K15 [get_ports adder_out[0]]      // 첫 번째 출력 adder_out  => Sum
set_property IOSTANDARD LVCMOS33 [get_ports adder_out[0]]
set_property PACKAGE_PIN J14 [get_ports adder_out2[0]]     // 두 번째 출력 adder_out2 => Co
set_property IOSTANDARD LVCMOS33 [get_ports adder_out2[0]]
