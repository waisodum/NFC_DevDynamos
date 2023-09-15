// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Tracking {
    enum ShipmentStatus {PENDING, IN_TRANSIT,DELIVERED }
    struct Shipment{
        address sender;
        address receiver;
        uint256 pickupTime;
        uint256 deliveryTime;
        uint256 distance;
        uint256 price;
        ShipmentStatus status;
        bool is_paid;
    } 


mapping ( address=>Shipment[]) public Shipments;
uint256 public shipmentCount; 

struct TypeShipment {
        address sender;
        address receiver;
        uint256 pickupTime;
        uint256 deliveryTime;
        uint256 distance;
        uint256 price;
        ShipmentStatus status;
        bool is_paid;
}

TypeShipment[] typeShipments;

event ShipmentCreated(address indexed sender, address indexed receiver , uint256 pickupTime,uint256 distance ,uint256 price);

event ShipmentInTransit(address indexed sender, address indexed receiver , uint256 pickupTime);


































































































}