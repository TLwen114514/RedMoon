//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;

interface Imain {
    function FindNumberOfData(
        uint[] memory _NumberOfData
    )
        external
        view
        returns (
            uint[] memory,
            string[] memory,
            uint[] memory,
            string[] memory
        );

    function DaoDeciding(
        address _Owner,
        uint256 _NumberOfData,
        bool _IsDataTrue
    ) external payable returns (bool);
}
