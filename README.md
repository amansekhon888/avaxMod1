# Simple Door Access Control Smart Contract

This is a simple smart contract written in Solidity that provides basic access control to a door using Ethereum blockchain. The contract allows an admin to set a secret key and grant access to specific users. Only the admin and authorized users can open the door using the correct secret key.

## Features

- Admin functionality to set the secret key and grant access to users.
- Functionality for authorized users to open and close the door.
- Error handling using require, assert, and revert statements.

## Getting Started

To deploy the contract and interact with it, you'll need an Ethereum development environment such as Remix, Truffle, or Hardhat. You can deploy the contract to a local development blockchain or a testnet/mainnet Ethereum network.

## Usage

1. Deploy the `SimpleDoorAccessControl` contract to an Ethereum blockchain.
2. Set the secret key and grant access to specific users using the `setSecretKeyAndGrantAccess` function.
3. Authorized users can open the door by calling the `openDoor` function with the correct secret key.
4. Once inside, authorized users can close the door by calling the `closeDoor` function.
5. If needed, the `revertAction` function can be called to simulate an action that reverts.

## Security Considerations

- Ensure that only authorized users have access to the contract's admin functionalities.
- Use secure methods to store the secret key, such as a hardware wallet or a secure key management system.
- Regularly audit the contract for potential vulnerabilities.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
