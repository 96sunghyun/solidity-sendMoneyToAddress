// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.4.16 <0.9.0;

contract sendMoneyTo {
    event fromTo(address from, address to);

    receive() external payable{}

    function sendMoney(address payable getter) public {
        (bool sent,) = payable(getter).call{value : address(this).balance}('');
        require(sent, "sorry for this, don iee an ga ne");
        emit fromTo(msg.sender, getter);
    }

}