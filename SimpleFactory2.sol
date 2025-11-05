contract Factory {
    address[] private deployedContracts; // Simpler: store addresses directly

    function createContract() public {
        Simple newContract = new Simple();
        deployedContracts.push(address(newContract));
    }
}