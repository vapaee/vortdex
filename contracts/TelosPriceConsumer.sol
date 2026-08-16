// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IDIAOracle {
    function getValue(string calldata key) external view returns (uint128, uint128);
}

contract TelosPriceConsumer {
    address constant DIA_ORACLE_ADDRESS = 0xf774801c9f1b11e70966CE65EC7f95d7730F380d;

    function getTelosPrice() external view returns (uint128 priceUSD) {
        (uint128 price, ) = IDIAOracle(DIA_ORACLE_ADDRESS).getValue('TLOS/USD');
        return price;
    }
}
