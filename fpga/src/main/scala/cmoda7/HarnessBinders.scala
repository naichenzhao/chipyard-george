package chipyard.fpga.cmoda7

import chisel3._

import freechips.rocketchip.jtag.{JTAGIO}
import freechips.rocketchip.subsystem.{PeripheryBusKey}
import freechips.rocketchip.tilelink.{TLBundle}
import freechips.rocketchip.diplomacy.{LazyRawModuleImp}
import org.chipsalliance.diplomacy.nodes.{HeterogeneousBag}
import sifive.blocks.devices.uart.{UARTPortIO, UARTParams}
import sifive.blocks.devices.jtag.{JTAGPins, JTAGPinsFromPort}
import sifive.blocks.devices.pinctrl.{BasePin}
import sifive.fpgashells.shell._
import sifive.fpgashells.ip.xilinx._
import sifive.fpgashells.shell.xilinx._
import sifive.fpgashells.clocks._
import chipyard._
import chipyard.harness._
import chipyard.iobinders._
import testchipip.serdes._

class WithCmodA7UARTTSI extends HarnessBinder({
  case (th: HasHarnessInstantiators, port: UARTTSIPort, chipId: Int) => {
    val ath = th.asInstanceOf[LazyRawModuleImp].wrapper.asInstanceOf[CmodA7Harness]
    val harnessIO = IO(new UARTPortIO(port.io.uartParams)).suggestName("uart_tsi")
    harnessIO <> port.io.uart
    val packagePinsWithPackageIOs = Seq(
      ("J17" , IOPin(harnessIO.rxd)),
      ("J18", IOPin(harnessIO.txd)))
    packagePinsWithPackageIOs foreach { case (pin, io) => {
      ath.xdc.addPackagePin(io, pin)
      ath.xdc.addIOStandard(io, "LVCMOS33")
      ath.xdc.addIOB(io)
    } }

    ath.other_leds(1) := port.io.dropped
    // ath.other_leds(9) := port.io.tsi2tl_state(0)
    // ath.other_leds(10) := port.io.tsi2tl_state(1)
    // ath.other_leds(11) := port.io.tsi2tl_state(2)
    // ath.other_leds(12) := port.io.tsi2tl_state(3)
  }
})

// Uses PMOD JA/JB
// class WithCmodA7SerialTLToGPIO extends HarnessBinder({
//   case (th: HasHarnessInstantiators, port: SerialTLPort, chipId: Int) => {
//     val artyTh = th.asInstanceOf[LazyRawModuleImp].wrapper.asInstanceOf[CmodA7Harness]
//     val harnessIO = IO(chiselTypeOf(port.io)).suggestName("serial_tl")
//     harnessIO <> port.io

//     harnessIO match {
//       case io: DecoupledPhitIO => {
//         val clkIO = io match {
//           case io: InternalSyncPhitIO => IOPin(io.clock_out)
//           case io: ExternalSyncPhitIO => IOPin(io.clock_in)
//         }
//         val packagePinsWithPackageIOs = Seq(
//           ("G13", clkIO),
//           ("B11", IOPin(io.out.valid)),
//           ("A11", IOPin(io.out.ready)),
//           ("D12", IOPin(io.in.valid)),
//           ("D13", IOPin(io.in.ready)),
//           ("B18", IOPin(io.out.bits.phit, 0)),
//           ("A18", IOPin(io.out.bits.phit, 1)),
//           ("K16", IOPin(io.out.bits.phit, 2)),
//           ("E15", IOPin(io.out.bits.phit, 3)),
//           ("E16", IOPin(io.in.bits.phit, 0)),
//           ("D15", IOPin(io.in.bits.phit, 1)),
//           ("C15", IOPin(io.in.bits.phit, 2)),
//           ("J17", IOPin(io.in.bits.phit, 3))
//         )
//         packagePinsWithPackageIOs foreach { case (pin, io) => {
//           artyTh.xdc.addPackagePin(io, pin)
//           artyTh.xdc.addIOStandard(io, "LVCMOS33")
//         }}

//         // Don't add IOB to the clock, if its an input
//         io match {
//           case io: InternalSyncPhitIO => packagePinsWithPackageIOs foreach { case (pin, io) => {
//             artyTh.xdc.addIOB(io)
//           }}
//           case io: ExternalSyncPhitIO => packagePinsWithPackageIOs.drop(1).foreach { case (pin, io) => {
//             artyTh.xdc.addIOB(io)
//           }}
//         }

//         artyTh.sdc.addClock("ser_tl_clock", clkIO, 100)
//         artyTh.sdc.addGroup(pins = Seq(clkIO))
//         artyTh.xdc.clockDedicatedRouteFalse(clkIO)
//       }
//     }
//   }
// })

// Maps the UART device to the on-board USB-UART
class WithCmodA7UART(rxdPin: String = "J17", txdPin: String = "J18") extends HarnessBinder({
  case (th: HasHarnessInstantiators, port: UARTPort, chipId: Int) => {
    val ath = th.asInstanceOf[LazyRawModuleImp].wrapper.asInstanceOf[CmodA7Harness]
    val harnessIO = IO(chiselTypeOf(port.io)).suggestName("uart")
    harnessIO <> port.io
    val packagePinsWithPackageIOs = Seq(
      (rxdPin, IOPin(harnessIO.rxd)),
      (txdPin, IOPin(harnessIO.txd)))
    packagePinsWithPackageIOs foreach { case (pin, io) => {
      ath.xdc.addPackagePin(io, pin)
      ath.xdc.addIOStandard(io, "LVCMOS33")
      ath.xdc.addIOB(io)
    } }
  }
})

// Maps the UART device to PMOD JD pins 3/7
class WithCmodA7PMODUART extends WithCmodA7UART("L18", "K18")

class WithCmodA7JTAG extends HarnessBinder({
  case (th: HasHarnessInstantiators, port: JTAGPort, chipId: Int) => {
    val ath = th.asInstanceOf[LazyRawModuleImp].wrapper.asInstanceOf[CmodA7Harness]
    val harnessIO = IO(chiselTypeOf(port.io)).suggestName("jtag")
    harnessIO <> port.io

    ath.sdc.addClock("JTCK", IOPin(harnessIO.TCK), 10)
    ath.sdc.addGroup(clocks = Seq("JTCK"))
    ath.xdc.clockDedicatedRouteFalse(IOPin(harnessIO.TCK))
    val packagePinsWithPackageIOs = Seq(
      ("N18", IOPin(harnessIO.TCK)),
      ("H19", IOPin(harnessIO.TMS)),
      ("H17", IOPin(harnessIO.TDI)),
      ("G17", IOPin(harnessIO.TDO))
    )
    packagePinsWithPackageIOs foreach { case (pin, io) => {
      ath.xdc.addPackagePin(io, pin)
      ath.xdc.addIOStandard(io, "LVCMOS33")
      ath.xdc.addPullup(io)
    } }
  }
})