 pragma solidity >=0.4.20;

contract TodoList{
    uint public taskCount;

    struct Task{
        string TaskName;
        bool isCompleted;

        
    }
    mapping(uint=>Task) public todos;

    event TaskCreated(string task, uint taskNumber);

    constructor() public {
        taskCount =0;
    }

    function createTask(string memory _taskName) public {

        todos[taskCount++] = Task(_taskName, false);
        emit TaskCreated(_taskName, taskCount-1);
        //add task to mapping
        // increment taskcount 
        //emit event 


    }

}