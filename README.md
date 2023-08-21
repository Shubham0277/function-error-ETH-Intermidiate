# function-error-ETH-Intermidiate

## ExceptionHandlingContract

The `ExceptionHandlingContract` is a Solidity smart contract illustrating the practical application of `require()`, `assert()`, and `revert()` statements for efficient exception handling in Ethereum smart contract development.

### Contract Specifications

- Solidity Version: ^0.8.0

### Functions

#### `updateValue(uint256 _newnum)`

This function updates the `value` variable with a new value. It employs the `require()` statement to ensure the new value is greater than zero. Failure to meet this condition results in the transaction being reverted, accompanied by a custom error message.

#### `getCurrentValue()`

This function retrieves the current value stored in the `Currentvalue` variable.

#### `removeAmount(uint256 _amount)`

The `removeOperation` function executes an operation that subtracts a specified amount from the `value` variable. It uses the `assert()` statement to confirm that the provided amount is less than or equal to the current value. In case this condition is not met, the transaction is reverted. Additionally, if the operation leads to the `value` becoming zero, the transaction is explicitly reverted, accompanied by an informative error message.

### Usage

1. Compile the smart contract using a Solidity compiler compatible with version ^0.8.0.

2. Deploy the contract onto your chosen Ethereum network.

3. Engage with the deployed contract through its provided functions (`setValue()`, `getValue()`, `performOperation()`).

### Development

1. Clone the project repository.

2. Install the necessary dependencies.

3. Customize the contract or create new contracts as per your project requirements.

4. Thoroughly test the contract using a testing framework like Truffle or Hardhat.

5. Compile and deploy the contract to your targeted Ethereum network.

6. Don't forget to update the readme file with pertinent details specific to your project.

### Contributing

We warmly welcome contributions to the `ExceptionHandlingContract`. Whether you've identified a bug, have suggestions for enhancements, or wish to introduce new features, please feel free to either open an issue or submit a pull request.

### License

This project operates under the [MIT License](LICENSE).
