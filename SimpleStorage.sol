// SPDX-License-Identifier: MIT
pragma solidity 0.8.19; // version from the tutorial 

contract archive1 {

    struct daily_archive_st {
        string archive;
        uint256 day;
    }

daily_archive_st [365] public daily_archive_array; // 365 days of data

function daily_archive (string memory _archive, uint256 _day) public {
daily_archive_array [_day] = daily_archive_st ({
archive: _archive,
day: _day
});
}

}