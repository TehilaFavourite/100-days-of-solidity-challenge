contract Vehicle {
    string public color;
    uint256 public wheels;

    constructor(string memory _color, uint256 _wheels) {
        color = _color;
        wheels = _wheels;
    }
}

contract Car is Vehicle {
    uint256 public doors;

    constructor(string memory _color, uint256 _wheels, uint256 _doors) Vehicle(_color, _wheels) {
        doors = _doors;
    }
}

contract Motorcycle is Vehicle {
    string public type;

    constructor(string memory _color, uint256 _wheels, string memory _type) Vehicle(_color, _wheels) {
        type = _type;
    }
}
