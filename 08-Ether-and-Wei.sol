// SPDX-License-Identifier: MIT

pragma solidity ^0.8.2;

// https://solidity-by-example.org/ether-units/
contract EtherAndWei {
    // 1 wei = 0.000000000000000001 ether
    uint public oneWei = 1 wei;
    // Wei is the default, if units are omitted the compiler assumes wei
    bool public isOneWei = 1 wei == 1;
    
    // 1 ether = 10^18 wei
    uint public oneEther = 1 ether;
    // 1 ether is equal to 10^18 wei
    bool public isOneEther = 1 ether == 1e18 wei;
}

// Appendix: Comprehensive breakdown of ether units (see https://gwei.io)
//   1 Ether 1,000,000,000,000,000,000 WEI = 1 (EXA)WEI
//   1 (MILLI)ETHER = 0.001 ETHER1,000,000,000,000,000 WEI = 1 (PETA)WEI
//   1 (MICRO)ETHER = 0.000001 ETHER1,000,000,000,000 WEI = 1 (TERA)WEI
//   1 (Nano)ETHER = 0.000000001 ETHER1,000,000,000 WEI = 1 (GIGA)WEI
//   1 (PICO)ETHER = 0.000000000001 ETHER1,000,000 WEI = 1 (MEGA)WEI
//   1 (FEMTO)ETHER = 0.000000000000001 ETHER1,000 WEI = 1 (KILO)WEI
//   1 (ATTO)ETHER = 0.000000000000000001 ETHER1 WEI