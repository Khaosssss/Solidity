//crowdfunding
pragma solidity ^0.8.0;

//contract declaration
contract CrowdFunding{
    address public creator;
    ERC20 public tokenContract;
    uint n = 1;
    struct Campaign{
        uint256 goal;
        uint id;
        uint256 duration;
        uint256 deadline;
        uint256 totalAmount;
        mapping(address => uint256) contributions;
        bool isOpen;
    }
    
    Campaign[] public campaigns;
    
    constructor(address token){
        creator = msg.sender;
        tokenContract = ERC20(token);
    }
    function createCampaign(uint256 _goal,uint256 _duration) public{
        campaigns.push(Campaign({
            goal: _goal,
            duration: _duration,
            id: n++,
            deadline: block.timestamp + _duration,
            isOpen: true }));
    }
    function contribute(uint _id, uint256 amount) public{
        campaigns[_id+1].totalAmount += amount;
    }
    function cancelContribution(uint _id) public{
        require(campaigns[_id+1],"This camapign doesn't exist!!!")
        require(campaigns[_id+1].isOpen = true,"The campaign is closed!!");
        require(campaigns.[_id+1].contributions > 0,"You haven't contributed to this campaign!!!");
        uint refund = campaigns[_id+1].contributions[msg.sender];
        campaigns[_id+1].totalAmount -= refund;
        campaigns[_id+1].contributions[msg.sender] = 0;
        require(tokenContract.transfer(msg.sender,refund),"Transfer failed!!");
    }
    function withdrawFunds(uint _id){
        require(msg.sender = creator,"You're not the creator of this Campaign!!");
        require(campaigns[_id+1].totalAmount > campaigns[_id+1].goal,"Goal not met yet!!");
        uint256 amount = campaigns[_id].totalAmount;
        campaigns[_id].totalAmount = 0;
    }
}
