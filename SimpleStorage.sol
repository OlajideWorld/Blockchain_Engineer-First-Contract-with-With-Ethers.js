// SPDX-License-Identifier: MIT
pragma solidity ^0.8.9;

contract SimpleStorage {
    // Data Types: String, int256, uint256, bytes32, boolean, address, constant

    bool hasFavouriteNumber = true;
    uint256 public favouriteNUmber = 234;
    int256 NewNumber = 234;
    bytes32 Name = "Timothy";
    address mywalletAddress = 0xFb649728f35781D82E96e575aF7B2972AD80D9d2;
    string myName = "Olajide";

    // Mapping
    mapping(string => uint256) public namesdictionary;

    // Structs
    struct People {
        string name;
        uint256 favouriteIndex;
    }

    People[] public peopleRegistered;

    // Adding people to a list
    function addPeople(string memory username, uint256 _userNumber) public {
        People memory newperson = People({
            name: username,
            favouriteIndex: _userNumber
        });
        peopleRegistered.push(newperson);
        // using a map to store
        namesdictionary[username] = _userNumber;
    }

    // Functions in Solidity
    function saveFavouriteNumeber(uint256 number) public virtual {
        favouriteNUmber = number;
    }

    // Pure Function
    function computeNumber(
        uint256 numberEntered
    ) public pure returns (uint256) {
        return numberEntered + 1;
    }

    function viewFunction() public view returns (uint256) {
        return favouriteNUmber;
    }
}
