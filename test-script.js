const Sample = artifacts.require("Sample");

const exec = function () {
  Sample.new(600)
    .then(instance => instance.storedData())
    .then(val => {
      console.log("The returned value is: ", parseInt(val));
      process.exit(0);
    })
    .catch(() => process.exit(1));
};

module.exports = exec;
