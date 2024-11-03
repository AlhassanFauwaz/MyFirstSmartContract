// SPDX-License-Identifier: MIT
pragma solidity ^0.8.25;

contract SimpleStorage {
    // State variable to store the user's favorite number
    uint256 private favoriteNumber; 

    // Dynamic array to store multiple favorite numbers
    uint256[] public favoriteNumbers; 

    // Struct to store a person's name and their favorite number
    struct Person {
        string name;            // Person's name
        uint256 favoriteNumber; // Their favorite number
    }

    // Array of Person structs to store multiple people's data
    Person[] public people; 

    // Enum to manage contract states (Active or Inactive)
    enum ContractState { 
        Active,   // State representing an active contract
        Inactive  // State representing an inactive contract
    }

    // State variable to store the current contract state
    ContractState public state; 

    // Part 2: Mapping to store names and associated favorite numbers
    mapping(string => uint256) public nameToFavoriteNumber;

    // Part 3: Event to log when the favorite number is updated
    event NumberUpdated(uint256 newFavoriteNumber);

    // Function to store a favorite number
    function storeNumber(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
        emit NumberUpdated(_favoriteNumber); // Emit the event when number is updated
    }

    // Function to retrieve the favorite number
    function getFavoriteNumber() public view returns (uint256) {
        return favoriteNumber;
    }

    // Function to compare favorite number
    function isGreaterThan(uint256 _value) public view returns (bool) {
        return favoriteNumber > _value;
    }

    // Function to sum numbers from 1 to favoriteNumber
    function sumToFavoriteNumber() public view returns (uint256) {
        uint256 sum = 0;
        for (uint256 i = 1; i <= favoriteNumber; i++) {
            sum += i;
        }
        return sum;
    }

    // Internal function to return a simple string
    function internalFunction() internal pure returns (string memory) {
        return "This is an internal function!";
    }

    // Wrapper function to expose internalFunction
    function callInternalFunction() public view returns (string memory) {
        return internalFunction();
    }

    // External function
    function externalFunction() external pure returns (string memory) {
        return "This is an external function!";
    }

    // Public function to call the external function
    function testExternalFunction() public view returns (string memory) {
        return this.externalFunction();
    }

    // Function to add a favorite number to the array
    function addFavoriteNumber(uint256 _favoriteNumber) public {
        favoriteNumbers.push(_favoriteNumber);
    }

    // Function to add a person and store their favorite number in the mapping
    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(Person(_name, _favoriteNumber));
        nameToFavoriteNumber[_name] = _favoriteNumber; // Add to the mapping
    }

    // Function to activate the contract
    function activateContract() public {
        state = ContractState.Active;
    }

    // Function to deactivate the contract
    function deactivateContract() public {
        state = ContractState.Inactive;
    }

    // Function to check if the contract is active
    function isActive() public view returns (bool) {
        return state == ContractState.Active;
    }

    // Part 4: Function demonstrating storage, memory, and calldata usage

    // Function using a storage variable for persistent storage
    function updateFavoriteNumberStorage(uint256 _newFavoriteNumber) public {
        favoriteNumber = _newFavoriteNumber;
    }

    // Function using memory for temporary calculations
    function temporarySum(uint256 _num1, uint256 _num2) public pure returns (uint256) {
        uint256 sum = _num1 + _num2; // Stored temporarily in memory
        return sum;
    }

    // Function demonstrating calldata usage
    function processCalldataString(string calldata _input) public pure returns (string memory) {
        return _input;
    }
}
