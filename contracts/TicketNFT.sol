// SPDX-License-Identifier: MIT
pragma solidity >=0.6.0 <0.9.0;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@chainlink/contracts/src/v0.6/VRFConsumerBase.sol";

contract TicketNFT is ERC721 {

    bytes32 public keyHash;
    uint256 public vrfCoordinator;
    uint256 internal fee;

    constructor(address _VRFCoordinator, address _LinkToken, bytes32 _keyHash) 
    public
    VRFConsumerBase(_VRFCoordinator, _LinkToken) 
    ERC721("MyNFT", "MNFT")  {
        vrfCoordinator = _VRFCoordinator;
        keyHash = _keyHash;
        fee = 0.1 * 10**18; // 0.1 LINK
    }

    

}