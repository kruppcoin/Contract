var ConvertLib = artifacts.require("./ConvertLib.sol");
var KruppCoin = artifacts.require("./KruppCoin.sol");

module.exports = function(deployer) {
  deployer.deploy(ConvertLib);
  deployer.link(ConvertLib, KruppCoin);
  deployer.deploy(KruppCoin);
};
