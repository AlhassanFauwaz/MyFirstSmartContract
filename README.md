# MyFirstSmartContract
I downloaded the MetaMask extension for my browser (Google Chrome)
After installation, I followed the setup process to create a new Ethereum wallet.
Secure Seed Phrase

MetaMask provided a seed phrase (12 random words), which I stored securely by writing it down offline and making sure to keep it in a safe location. This is important since losing the seed phrase means losing access to the wallet.

Part 2: Write and Compile the Smart Contract
Install Remix IDE

I used Remix IDE, a web-based development environment for writing and deploying Solidity smart contracts.
Opened the IDE in my browser and created a new folder or project, naming it MyFirstSmartContract and a file naming it SimpleStorage.sol.


After writing the contract, I selected the Solidity compiler in Remix IDE (I used version 0.8.25).
Clicked the "Compile" button to check for errors. The contract compiled successfully.

I created a public repository on GitHub named MyFirstSmartContract.
Initialized the repository with a README file.
Connect Remix to GitHub

In Remix, I configured the GitHub integration under settings by logging in with my GitHub account.
This allowed me to link the repository as a remote for my smart contract.
Push the Code to GitHub

After committing the smart contract code in Remix, I pushed it to the remote repository using the built-in GitHub integration in Remix.

 At first, I encountered issues connecting MetaMask to the correct test network.
Solution: I resolved this by manually selecting a test network (like Goerli or Sepolia) from MetaMask’s network options. I also added ETH from a faucet to ensure I had test funds to deploy contracts.
Solidity Compilation Error:

Challenge: I faced a version mismatch where the contract wouldn't compile.
Solution: I fixed this by selecting the correct Solidity compiler version (0.8.25 and above) in Remix to match the pragma version used in my contract.
GitHub Integration Confusion:

 Initially, I wasn’t sure how to push the code to GitHub directly from Remix.
I followed a tutorial in a live session that covered the steps to integrate GitHub with Remix, which helped me link my repository and push the code successfully.
