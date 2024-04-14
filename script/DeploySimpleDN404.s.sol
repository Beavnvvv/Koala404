// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

import {Koala} from "../src/Koala.sol";
import "forge-std/Script.sol";

contract SimpleDN404Script is Script {
    uint256 private constant _WAD = 1000000000000000000;

    function run() external {
        uint256 deployerPrivateKey = vm.envUint("PRIVATE_KEY");
        vm.startBroadcast(deployerPrivateKey);

        new Koala();
        vm.stopBroadcast();
    }
}
