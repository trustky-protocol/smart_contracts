import { HardhatUserConfig } from "hardhat/config";
import "@nomicfoundation/hardhat-toolbox";
import dotenv from "dotenv";

dotenv.config();

const config: HardhatUserConfig = {
  solidity: "0.8.17",
  networks: {
    mumbai: {
      url: process.env.MUMBAI_RPC_URI || "",
      accounts: [process.env.PRIVATE_KEY || ""],
    },
  },
};

export default config;
