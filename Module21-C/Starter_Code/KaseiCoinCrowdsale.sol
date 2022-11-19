pragma solidity ^0.5.5;

import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";


contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {

     constructor(
        uint rate,
        address payable wallet, // sale beneficiary
        KaseiCoin token // the KaseiCoin itself that the KaseiCoinCrowdsale will work with
    )
        Crowdsale(rate, wallet, token) public {}

}

contract KaseiCoinCrowdsaleDeployer {

    address public kasei_token_address;
    address public kasei_crowdsale_address;

    constructor(
        string memory name,
        string memory symbol,
        address payable wallet // this address will receive all Ether raised by the sale
    )
        public
    {
         // create the KaseiCoin and keep its address handy
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        kasei_token_address = address(token);

        // create the KaseiCoinCrowdsale and tell it about the token
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token);
        kasei_crowdsale_address = address(kasei_crowdsale);
        
        // make the KaseiCoinCrowdsale contract a minter, then have the KaseiCoinCrowdsaleDeployer renounce its minter role
        token.addMinter(kasei_crowdsale_address);
        token.renounceMinter();
    }
}
