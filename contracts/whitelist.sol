// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
contract Whitelist
{



    // maximum number of whitelisted users
    uint8 public maxWhiteListedAddresses;

    // how many have  been whitelisted till now
    uint8 public numOfWhiteListedAddresses;

    // check what addresses have been whitelisted TRUE for whitelist
    mapping(address => bool) public whitelistedAddresses;

    constructor(uint8 _maxWhiteListedAddresses)
    {
        maxWhiteListedAddresses= _maxWhiteListedAddresses;
    }


    function addAddressToWhitelist() public
    {
        require(!whitelistedAddresses[msg.sender], "Already in list");
        require(numOfWhiteListedAddresses<maxWhiteListedAddresses, "limit reached");
        whitelistedAddresses[msg.sender]=true;
        numOfWhiteListedAddresses+=1;


    }









}