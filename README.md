# function-error-ETH-Intermidiate

## CustomErrorHandling Smart Contract

The CustomErrorHandling smart contract is a simple Solidity contract that demonstrates error handling mechanisms using require, assert, and revert statements. These mechanisms are crucial for ensuring the correctness and security of Ethereum smart contracts.

# Functions and Error Handling

## checkGreaterThanZero(uint256 number)
Checks if the provided number is greater than zero using require.
If the condition is not met, it reverts the transaction with the error message "Number must be greater than zero."
Returns the result of number multiplied by 4 if the condition is met.

## validateNotZero(uint256 number)
Validates that the provided number is not zero using assert.
If number is equal to zero, it triggers an assertion failure and reverts the transaction.
Returns the result of number plus 2 if the assertion is successful.

## checkNotAllowed(uint256 number)
Checks if the provided number is equal to 7 using an if statement.
If number is 7, it explicitly reverts the transaction with the error message "7 is not allowed."
Returns the result of number minus 1 if it's not equal to 7.

## intentionallyTriggerErrors()
This function is designed to intentionally trigger the error-handling functions in the contract.
Calls checkGreaterThanZero(0) to trigger a require error because it passes 0, which is not greater than zero.
Calls validateNotZero(0) to trigger an assert error because it passes 0, which is equal to zero.
Calls checkNotAllowed(88) to trigger a revert error because it passes 88, which is explicitly checked for and not allowed in the checkNotAllowed function.

## Usage
To use the CustomErrorHandling contract, you can deploy it on the Ethereum blockchain using a development environment like Remix or Truffle. Once deployed, you can interact with the contract using Ethereum addresses and transactions.

## Error Handling Best Practices
Error handling is a critical aspect of smart contract development. Here are some best practices:
Use require for input validation and to check preconditions.
Use assert to validate internal invariants that should never be false.
Use revert for custom error messages and state reversion.
Always provide clear and informative error messages to assist users and developers in understanding contract failures.

# License
This project is licensed under the MIT License. You can find the license details in the LICENSE file.
