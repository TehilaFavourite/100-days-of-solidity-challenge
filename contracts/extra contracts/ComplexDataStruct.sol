// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ContactBook {
    // Define a struct to represent the contact details
    struct Contact {
        string name;
        string phoneNumber;
        string email;
    }

    // Mapping to store contacts, where the key is an address (Ethereum address) and the value is the Contact struct
    mapping(address => Contact) public contacts;

    // Function to add a new contact
    function addContact(
        string memory name,
        string memory phoneNumber,
        string memory email
    ) public {
        // Create a new Contact struct with the provided details
        Contact memory newContact = Contact(name, phoneNumber, email);

        // Store the new contact in the mapping using the sender's address as the key
        contacts[msg.sender] = newContact;
    }

    // Function to get the contact details of the caller
    function getMyContact()
        public
        view
        returns (
            string memory name,
            string memory phoneNumber,
            string memory email
        )
    {
        // Access the contact details from the mapping using the caller's address
        Contact memory myContact = contacts[msg.sender];
        return (myContact.name, myContact.phoneNumber, myContact.email);
    }
}
