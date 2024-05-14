package chipyard

import org.chipsalliance.cde.config.{Config}
import freechips.rocketchip.diplomacy.{AsynchronousCrossing}
import freechips.rocketchip.subsystem.{InCluster}

import freechips.rocketchip.subsystem.{InCluster}

import riskybear._

// --------------
// Rocket Configs
// --------------

class RiskyBearConfig extends Config(
  // We want to connect through UART TSI
  new chipyard.config.WithBroadcastManager ++ // no l2
  new chipyard.harness.WithSerialTLTiedOff ++

  // Add QDEC modules
  new WithQDEC(address = 0x11000000) ++
  new chipyard.harness.WithQDECTiedOff ++

  // Add Motor modules
  new WithMotor(address = 0x12000000) ++

  new chipyard.NoCoresConfig)
