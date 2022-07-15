
const {ethers}= require("hardhat");

async function main() {
  const contract = await ethers.getContractFactory("whitelist")
  const deployed_contract= await contract.deploy(10);
  await deployed_contract.deployed();
  console.log("Contract Deployed to :" , deployed_contract.address)

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});

