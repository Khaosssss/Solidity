# Smart Contract Deployment Guide Using Remix IDE

This guide explains how to deploy a smart contract on an EVM-compatible blockchain using Remix IDE.

## Prerequisites

Before you start, make sure you have the following:

- A web browser (Chrome, Firefox, etc.)
- An Ethereum wallet like [MetaMask](https://metamask.io/) set up for your browser.

## Access Remix IDE

1. **Open Remix IDE:**

   Navigate to [Remix IDE](https://remix.ethereum.org/) in your web browser.

## Write or Import Your Smart Contract

1. **Create a New File:**

   - In Remix, go to the "File Explorers" tab (on the left sidebar).
   - Click the "New File" button.
   - Name your file with a `.sol` extension, e.g., `MyContract.sol`.

2. **Write or Paste Your Solidity Code:**

   - Write your smart contract code in the editor. For example:

   ```solidity
   // SPDX-License-Identifier: MIT
   pragma solidity ^0.8.18;

   contract MyContract {
       string public message;

       constructor(string memory _message) {
           message = _message;
       }

       function setMessage(string memory _message) public {
           message = _message;
       }
   }

   2. **Write or Paste Your Solidity Code:**

