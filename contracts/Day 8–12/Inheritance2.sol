contract Grandparent {
    string public hairColor;
    string public eyeColor;
    uint256 public height;

    constructor(string memory _hairColor, string memory _eyeColor, uint256 _height) {
        hairColor = _hairColor;
        eyeColor = _eyeColor;
        height = _height;
    }
}

contract Parent is Grandparent {
    string public profession;

    constructor(string memory _hairColor, string memory _eyeColor, uint256 _height, string memory _profession)
        Grandparent(_hairColor, _eyeColor, _height)
    {
        profession = _profession;
    }
}

contract Child is Parent {
    string public hobby;

    constructor(string memory _hairColor, string memory _eyeColor, uint256 _height, string memory _profession, string memory _hobby)
        Parent(_hairColor, _eyeColor, _height, _profession)
    {
        hobby = _hobby;
    }
}
