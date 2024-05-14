// See LICENSE for license details.
package chipyard.fpga.arty100t

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

import riskybear._

// // don't use FPGAShell's DesignKey
// class WithNoDesignKey extends Config((site, here, up) => {
//   case DesignKey => (p: Parameters) => new SimpleLazyRawModule()(p)
// })


// Config used for George
class RiskyBearConfig extends Config(
  // new chipyard.harness.WithSerialTLTiedOff ++

  // Add QDEC modules
  new chipyard.harness.WithQDECTiedOff ++
  new WithQDEC(address = 0x11000000) ++
  new WithMotor(address = 0x12000000) ++

  new chipyard.NoCoresConfig)

