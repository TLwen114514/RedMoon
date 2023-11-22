//SPDX-License-Identifier:MIT
pragma solidity ^0.8.16;

interface IDAO {
    //dao成员加入
    function addMember() external payable returns (bool);

    //dao成员退出
    function removeMember() external returns (bool);

    //检查DAO组织余额
    function checkBalance() external view returns (uint256);

    //提款
    function withdraw() external;

    //增加质疑
    function addProposal(
        uint256 numberOfData,
        address _owner,
        string memory link,
        address question
    ) external returns (bool);

    //获取总共在质疑的订单
    function getTotalProposalNumber() external view returns (uint[] memory);

    //DAO成员调用对质疑投票
    function judge(uint number, bool decide) external returns (bool);

    //质疑者获取质疑结果
    function getResult(uint256 numberOfData) external returns (bool);

    //展示界面
    struct showStruct {
        uint256 id;
        string link;
        uint256 ddl;
        string introduce;
    }

    function getTotalProposal()
        external
        view
        returns (showStruct[] memory _show);
}
