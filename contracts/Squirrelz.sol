pragma solidity ^0.8.4;

import "@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol";
import "@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol";

contract Squirrelz is ERC721ACommon, BaseTokenURI {
    constructor()
        ERC721ACommon("Squirrelz", "SQUIRRELZ", payable(address(this)), 10)
        BaseTokenURI("ipfs://QmQsrxb2MSVZSJfC61ukoJm9dkPJD3z2aCzyHmq4Pz3Nm8/")
    {}

    /**
    @dev Required override to select the correct baseTokenURI.
     */
    function _baseURI()
        internal
        view
        override(BaseTokenURI, ERC721A)
        returns (string memory)
    {
        return BaseTokenURI._baseURI();
    }

    function mint(uint256 quantity) external payable {
        _mint(msg.sender, quantity);
    }
}
