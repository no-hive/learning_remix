// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

import {Simple} from "Simple.sol";

contract Factory {

mapping (uint256 => address) public MyMap;

function CreateContract (uint256 _Counter) public {
Simple SimpleContract = new Simple ();
MyMap [_Counter] = (address(SimpleContract));
}
}