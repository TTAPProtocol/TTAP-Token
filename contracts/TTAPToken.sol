pragma solidity >=0.6.0 <0.8.0;
import "./gsn/Context.sol";
import "./access/Ownable.sol";
import "./token/ERC20.sol";

/**
 * @dev Very simple ERC20 Token example, where all tokens are pre-assigned to the creator.
 * Note they can later distribute these tokens as they wish using `transfer` and other
 * `ERC20` functions.
 */
contract TTAPToken is Context, Ownable, ERC20 {

    using SafeMath for uint256;

    event ValueReceived(address sender, uint256 amount);

    constructor () public ERC20("TTAP Protocol", "TTAP") {
        _mint(_msgSender(), 3300000000 * (10 ** uint256(decimals())));
    }


}