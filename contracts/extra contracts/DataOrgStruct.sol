// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract InventoryManagement {
    // Define a struct to represent product details
    struct Product {
        uint256 productId;
        string name;
        uint256 price;
        uint256 quantity;
    }

    // Array to store the list of products
    Product[] public products;

    // Function to add a new product to the inventory
    function addProduct(
        uint256 productId,
        string memory name,
        uint256 price,
        uint256 quantity
    ) public {
        // Create a new Product struct with the provided details
        Product memory newProduct = Product(productId, name, price, quantity);

        // Add the new product to the products array
        products.push(newProduct);
    }

    // Function to get the details of a specific product by its index
    function getProductDetails(
        uint256 index
    )
        public
        view
        returns (
            uint256 productId,
            string memory name,
            uint256 price,
            uint256 quantity
        )
    {
        require(index < products.length, "Invalid product index");

        // Access the product details from the products array
        Product memory product = products[index];
        return (
            product.productId,
            product.name,
            product.price,
            product.quantity
        );
    }

    // Function to get the total number of products in the inventory
    function getTotalProducts() public view returns (uint256) {
        return products.length;
    }
}
