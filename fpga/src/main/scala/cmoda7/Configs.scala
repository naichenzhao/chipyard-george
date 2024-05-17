// See LICENSE for license details.
package chipyard.fpga.cmoda7

import org.chipsalliance.cde.config._
import freechips.rocketchip.subsystem._
import freechips.rocketchip.devices.debug._
import freechips.rocketchip.devices.tilelink._
import org.chipsalliance.diplomacy._
import org.chipsalliance.diplomacy.lazymodule._
import freechips.rocketchip.system._
import freechips.rocketchip.tile._

import sifive.blocks.devices.uart._
import sifive.fpgashells.shell.{DesignKey}

import testchipip.serdes.{SerialTLKey}

import chipyard.{BuildSystem}

// don't use FPGAShell's DesignKey
class WithNoDesignKey extends Config((site, here, up) => {
  case DesignKey => (p: Parameters) => new SimpleLazyRawModule()(p)
})

// By default, this uses the on-board USB-UART for the TSI-over-UART link
// The PMODUART HarnessBinder maps the actual UART device to JD pin
class WithCmodA7Tweaks(freqMHz: Double = 48) extends Config(
  new WithCmodA7PMODUART ++
  new WithCmodA7UARTTSI ++
  new WithCmodA7JTAG ++
  new WithNoDesignKey ++
  new testchipip.tsi.WithUARTTSIClient ++
  new chipyard.harness.WithSerialTLTiedOff ++
  new chipyard.harness.WithHarnessBinderClockFreqMHz(freqMHz) ++
  new chipyard.config.WithMemoryBusFrequency(freqMHz) ++
  new chipyard.config.WithFrontBusFrequency(freqMHz) ++
  new chipyard.config.WithSystemBusFrequency(freqMHz) ++
  new chipyard.config.WithPeripheryBusFrequency(freqMHz) ++
  new chipyard.config.WithControlBusFrequency(freqMHz) ++
  new chipyard.config.WithOffchipBusFrequency(freqMHz) ++
  new chipyard.harness.WithAllClocksFromHarnessClockInstantiator ++
  new chipyard.clocking.WithPassthroughClockGenerator ++

  // new testchipip.soc.WithSbusScratchpad(size = (64 << 10)) ++
  new freechips.rocketchip.subsystem.WithNoMemPort ++         // remove offchip mem port
  new testchipip.serdes.WithNoSerialTL ++
  new freechips.rocketchip.subsystem.WithoutTLMonitors)

class TinyRocketCmodConfig extends Config(
  new WithCmodA7Tweaks ++
  new freechips.rocketchip.subsystem.WithNBreakpoints(2) ++
  new chipyard.config.WithBroadcastManager ++ // no l2
  new chipyard.TinyRocketConfig)

class SmallRocketCmodConfig extends Config(
  new WithCmodA7Tweaks ++
  new freechips.rocketchip.subsystem.WithNBreakpoints(2) ++
  new testchipip.soc.WithNoScratchpads ++                         // All memory is the Rocket TCMs
  new freechips.rocketchip.subsystem.WithIncoherentTiles ++
  new freechips.rocketchip.subsystem.WithIncoherentBusTopology ++ // use incoherent bus topology
  new freechips.rocketchip.subsystem.WithNBanks(0) ++             // remove L2$
  new freechips.rocketchip.subsystem.WithNoMemPort ++             // remove backing memory
  new freechips.rocketchip.subsystem.WithNSmallCores(1) ++             // single tiny rocket-core
  new chipyard.config.AbstractConfig)

class SmallRocketFPUCmodConfig extends Config(
  new WithCmodA7Tweaks ++
  new freechips.rocketchip.subsystem.WithNBreakpoints(2) ++
  new testchipip.soc.WithNoScratchpads ++                         // All memory is the Rocket TCMs
  new freechips.rocketchip.subsystem.WithIncoherentTiles ++
  new freechips.rocketchip.subsystem.WithIncoherentBusTopology ++ // use incoherent bus topology
  new freechips.rocketchip.subsystem.WithNBanks(0) ++             // remove L2$
  new freechips.rocketchip.subsystem.WithNoMemPort ++             // remove backing memory
  new freechips.rocketchip.subsystem.WithNSmallCores(1) ++             // single tiny rocket-core
  new chipyard.config.AbstractConfig)

class NoCoresCmodA7Config extends Config(
  new WithCmodA7Tweaks ++
  new chipyard.config.WithBroadcastManager ++ // no l2
  new chipyard.NoCoresConfig)
