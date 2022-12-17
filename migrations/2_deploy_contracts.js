const Sample = artifacts.require("Sample");
const Factory = artifacts.require("Factory");

module.exports = function (deployer) {
  deployer.deploy(Sample, 200);
  deployer.deploy(Factory);
};
