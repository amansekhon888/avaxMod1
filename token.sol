
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SimpleDoorAccessControl {
    address public admin;
    string private doorSecretKey;
    bool public doorStatus; 

    event DoorOpened(address _openedBy);
    event DoorClosed(address _closedBy);

    constructor() {
        admin = msg.sender;
        doorSecretKey = "1234";
        doorStatus = false; 
    }

    modifier onlyAdmin() {
        require(msg.sender == admin, "Only admin can perform this action");
        _;
    }

    function openDoor(string memory _key) public {
        require(keccak256(abi.encodePacked(_key)) == keccak256(abi.encodePacked(doorSecretKey)), "Invalid key");
        assert(!doorStatus); 
        doorStatus = true;
        emit DoorOpened(msg.sender);
    }

    function closeDoor() public {
        assert(doorStatus); 
        doorStatus = false;
        emit DoorClosed(msg.sender);
    }

    function revertAction() public pure {
        revert("Reverting the action");
    }
}
