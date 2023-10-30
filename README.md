# Hotel Room Smart Contract

This Solidity smart contract represents a simple hotel room booking system. It allows users to book a hotel room and pay the hotel owner in Ether.

## Contract Details

- **Version**: Solidity ^0.8.0
- **License**: MIT

## Contract Overview

The `HotelRoom` contract has the following features:

- Two room statuses: `Vacant` and `Occupied`.
- Events for room occupation.
- The hotel owner's address.
- Modifiers for ensuring the room is vacant and checking the cost.

## Room Statuses

- `Vacant`: The initial status when a room is available for booking.
- `Occupied`: The status when a room has been booked.

## Owner

The contract owner is the hotel owner, who receives payments from users when they book a room.

## Functions

### `constructor()`

The constructor initializes the contract, setting the owner and the initial room status to `Vacant`.

### `book()`

This function allows users to book a hotel room and make a payment to the hotel owner. The room status is changed to `Occupied`, and the booking event is logged. The cost of booking is specified in the function and is set to 2 Ether as an example.

## Modifiers

### `onlyWhileVacant`

This modifier checks if the room status is `Vacant` before allowing a user to book a room. If the room is occupied, the booking will fail.

### `costs(uint _amount)`

This modifier checks if the amount of Ether sent by the user is equal to or greater than the specified booking cost. If the user hasn't provided enough Ether, the booking will fail.

## Events

### `Occupy(address _occupant, uint _value)`

This event is logged when a room is successfully booked. It records the address of the occupant and the amount of Ether sent for the booking.

## Usage

To use this smart contract, you can deploy it on the Ethereum blockchain. Users can then interact with the contract to book hotel rooms by sending Ether.

## License

This smart contract is released under the MIT License. See the `LICENSE` file for more details.

---
