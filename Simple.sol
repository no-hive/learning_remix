// SPDX-License-Identifier: MIT

pragma solidity 0.8.19;

contract Simple {

struct EventsData {
uint256 Timestamp;
string Event;
}

EventsData [] MyEventsData;

mapping (uint256 => string) MyMap;

function CreateEvent (uint256 _Timestamp, string memory _Event) public {
MyMap [_Timestamp] = _Event;
MyEventsData.push (EventsData(_Timestamp, _Event));
}
}