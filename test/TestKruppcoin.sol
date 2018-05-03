pragma solidity ^0.4.2;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/KruppCoin.sol";

contract TestKruppCoin {

  function testInitialBalanceUsingDeployedContract() public {
    KruppCoin meta = KruppCoin(DeployedAddresses.KruppCoin());

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 KruppCoin initially");
  }

  function testInitialBalanceWithNewKruppCoin() public {
    KruppCoin meta = new KruppCoin();

    uint expected = 10000;

    Assert.equal(meta.getBalance(tx.origin), expected, "Owner should have 10000 KruppCoin initially");
  }

}
