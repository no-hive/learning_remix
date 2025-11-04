// SPDX-License-Identifier: MIT
pragma solidity 0.8.19;

contract queue {

struct QueueList {
uint256 Position;
address Wallet;
}

QueueList [] ShopQueue;

mapping (uint256 => address) QueueMapping;
mapping (address => uint256) RQueueMapping;

function Wait (address _Wallet, uint256 _Position) public
{ ShopQueue.push(QueueList(_Position, _Wallet));
QueueMapping [_Position] = _Wallet;
RQueueMapping [_Wallet] = _Position;
}

function retrieve1 (uint256 _Position) public view returns (address) {
return QueueMapping[_Position];
}

function retrieve2 (uint256 _Wallet) public view returns (address) {
return QueueMapping[_Wallet];
}

}
