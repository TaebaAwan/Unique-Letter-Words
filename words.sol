// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract UniqueLetters {
    function convertToASCII(string memory str)
        internal
        pure
        returns (uint256[] memory)
    {
        bytes memory strBytes = bytes(str);
        uint256[] memory asciiCodes = new uint256[](strBytes.length);

        for (uint256 i = 0; i < strBytes.length; i++) {
            asciiCodes[i] = uint8(strBytes[i]);
        }

        return asciiCodes;
    }

    function checkForDuplicateWords(string memory str)
        public
        pure
        returns (bool)
    {
        uint256[] memory numbers = convertToASCII(str);
        for (uint256 i = 0; i < numbers.length; i++) {
            uint256 number = numbers[i];

            for (uint256 j = i + 1; j < numbers.length; j++) {
                if (number == numbers[j]) {
                    return true;
                }
            }
        }
        return false;
    }
}
