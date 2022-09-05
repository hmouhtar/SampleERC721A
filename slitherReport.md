Summary
 - [incorrect-shift](#incorrect-shift) (2 results) (High)
 - [locked-ether](#locked-ether) (1 results) (Medium)
 - [unused-return](#unused-return) (1 results) (Medium)
 - [shadowing-local](#shadowing-local) (2 results) (Low)
 - [variable-scope](#variable-scope) (3 results) (Low)
 - [assembly](#assembly) (11 results) (Informational)
 - [pragma](#pragma) (1 results) (Informational)
 - [solc-version](#solc-version) (12 results) (Informational)
 - [naming-convention](#naming-convention) (5 results) (Informational)
 - [external-function](#external-function) (14 results) (Optimization)
## incorrect-shift
Impact: High
Confidence: High
 - [ ] ID-0
[ERC721A._mint(address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L735-L793) contains an incorrect shift operation: [_packedAddressData[to] += quantity * ((1 << _BITPOS_NUMBER_MINTED) | 1)](node_modules/erc721a/contracts/ERC721A.sol#L750)

node_modules/erc721a/contracts/ERC721A.sol#L735-L793


 - [ ] ID-1
[ERC721A._burn(uint256,bool)](node_modules/erc721a/contracts/ERC721A.sol#L913-L979) contains an incorrect shift operation: [_packedAddressData[from] += (1 << _BITPOS_NUMBER_BURNED) - 1](node_modules/erc721a/contracts/ERC721A.sol#L946)

node_modules/erc721a/contracts/ERC721A.sol#L913-L979


## locked-ether
Impact: Medium
Confidence: High
 - [ ] ID-2
Contract locking ether found:
	Contract [Squirrelz](contracts/Squirrelz.sol#L8-L32) has payable functions:
	 - [Squirrelz.mint(uint256)](contracts/Squirrelz.sol#L29-L31)
	But does not have a function to withdraw the ether

contracts/Squirrelz.sol#L8-L32


## unused-return
Impact: Medium
Confidence: Medium
 - [ ] ID-3
[ERC721A._checkContractOnERC721Received(address,address,uint256,bytes)](node_modules/erc721a/contracts/ERC721A.sol#L700-L719) ignores return value by [ERC721A__IERC721Receiver(to).onERC721Received(_msgSenderERC721A(),from,tokenId,_data)](node_modules/erc721a/contracts/ERC721A.sol#L706-L718)

node_modules/erc721a/contracts/ERC721A.sol#L700-L719


## shadowing-local
Impact: Low
Confidence: High
 - [ ] ID-4
[ERC721ACommon.constructor(string,string,address,uint96).symbol](node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L17) shadows:
	- [ERC721A.symbol()](node_modules/erc721a/contracts/ERC721A.sol#L281-L283) (function)
	- [IERC721A.symbol()](node_modules/erc721a/contracts/IERC721A.sol#L268) (function)

node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L17


 - [ ] ID-5
[ERC721ACommon.constructor(string,string,address,uint96).name](node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L16) shadows:
	- [ERC721A.name()](node_modules/erc721a/contracts/ERC721A.sol#L274-L276) (function)
	- [IERC721A.name()](node_modules/erc721a/contracts/IERC721A.sol#L263) (function)

node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L16


## variable-scope
Impact: Low
Confidence: High
 - [ ] ID-6
Variable '[ERC721A._checkContractOnERC721Received(address,address,uint256,bytes).retval](node_modules/erc721a/contracts/ERC721A.sol#L707)' in [ERC721A._checkContractOnERC721Received(address,address,uint256,bytes)](node_modules/erc721a/contracts/ERC721A.sol#L700-L719) potentially used before declaration: [retval == ERC721A__IERC721Receiver(to).onERC721Received.selector](node_modules/erc721a/contracts/ERC721A.sol#L709)

node_modules/erc721a/contracts/ERC721A.sol#L707


 - [ ] ID-7
Variable '[ERC721A._checkContractOnERC721Received(address,address,uint256,bytes).reason](node_modules/erc721a/contracts/ERC721A.sol#L710)' in [ERC721A._checkContractOnERC721Received(address,address,uint256,bytes)](node_modules/erc721a/contracts/ERC721A.sol#L700-L719) potentially used before declaration: [revert(uint256,uint256)(32 + reason,mload(uint256)(reason))](node_modules/erc721a/contracts/ERC721A.sol#L715)

node_modules/erc721a/contracts/ERC721A.sol#L710


 - [ ] ID-8
Variable '[ERC721A._checkContractOnERC721Received(address,address,uint256,bytes).reason](node_modules/erc721a/contracts/ERC721A.sol#L710)' in [ERC721A._checkContractOnERC721Received(address,address,uint256,bytes)](node_modules/erc721a/contracts/ERC721A.sol#L700-L719) potentially used before declaration: [reason.length == 0](node_modules/erc721a/contracts/ERC721A.sol#L711)

node_modules/erc721a/contracts/ERC721A.sol#L710


## assembly
Impact: Informational
Confidence: High
 - [ ] ID-9
[ERC721A._burn(uint256,bool)](node_modules/erc721a/contracts/ERC721A.sol#L913-L979) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L929-L934)

node_modules/erc721a/contracts/ERC721A.sol#L913-L979


 - [ ] ID-10
[ERC721A._isSenderApprovedOrOwner(address,address,address)](node_modules/erc721a/contracts/ERC721A.sol#L494-L507) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L499-L506)

node_modules/erc721a/contracts/ERC721A.sol#L494-L507


 - [ ] ID-11
[ERC721A._nextInitializedFlag(uint256)](node_modules/erc721a/contracts/ERC721A.sol#L399-L405) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L401-L404)

node_modules/erc721a/contracts/ERC721A.sol#L399-L405


 - [ ] ID-12
[ERC721A.transferFrom(address,address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L542-L603) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L562-L567)

node_modules/erc721a/contracts/ERC721A.sol#L542-L603


 - [ ] ID-13
[ERC721A._checkContractOnERC721Received(address,address,uint256,bytes)](node_modules/erc721a/contracts/ERC721A.sol#L700-L719) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L714-L716)

node_modules/erc721a/contracts/ERC721A.sol#L700-L719


 - [ ] ID-14
[ERC721A._setExtraDataAt(uint256,uint24)](node_modules/erc721a/contracts/ERC721A.sol#L988-L998) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L993-L995)

node_modules/erc721a/contracts/ERC721A.sol#L988-L998


 - [ ] ID-15
[ERC721A._packOwnershipData(address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L387-L394) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L388-L393)

node_modules/erc721a/contracts/ERC721A.sol#L387-L394


 - [ ] ID-16
[ERC721A._getApprovedSlotAndAddress(uint256)](node_modules/erc721a/contracts/ERC721A.sol#L512-L523) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L519-L522)

node_modules/erc721a/contracts/ERC721A.sol#L512-L523


 - [ ] ID-17
[ERC721A._setAux(address,uint64)](node_modules/erc721a/contracts/ERC721A.sol#L233-L242) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L237-L239)

node_modules/erc721a/contracts/ERC721A.sol#L233-L242


 - [ ] ID-18
[ERC721A._mint(address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L735-L793) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L766-L787)

node_modules/erc721a/contracts/ERC721A.sol#L735-L793


 - [ ] ID-19
[ERC721A._toString(uint256)](node_modules/erc721a/contracts/ERC721A.sol#L1049-L1082) uses assembly
	- [INLINE ASM](node_modules/erc721a/contracts/ERC721A.sol#L1050-L1081)

node_modules/erc721a/contracts/ERC721A.sol#L1049-L1082


## pragma
Impact: Informational
Confidence: High
 - [ ] ID-20
Different versions of Solidity are used:
	- Version used: ['0.8.16', '>=0.8.0<0.9.0', '^0.8.0', '^0.8.4']
	- [>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L3)
	- [>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L3)
	- [>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L3)
	- [^0.8.0](node_modules/@openzeppelin/contracts/access/Ownable.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/interfaces/IERC2981.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/security/Pausable.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/utils/Context.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol#L4)
	- [^0.8.0](node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol#L4)
	- [0.8.16](contracts/Squirrelz.sol#L3)
	- [^0.8.4](node_modules/erc721a/contracts/ERC721A.sol#L5)
	- [^0.8.4](node_modules/erc721a/contracts/IERC721A.sol#L5)

node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L3


## solc-version
Impact: Informational
Confidence: High
 - [ ] ID-21
solc-0.8.16 is not recommended for deployment

 - [ ] ID-22
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/utils/Context.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/utils/Context.sol#L4


 - [ ] ID-23
Pragma version[0.8.16](contracts/Squirrelz.sol#L3) necessitates a version too recent to be trusted. Consider deploying with 0.6.12/0.7.6/0.8.7

contracts/Squirrelz.sol#L3


 - [ ] ID-24
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L4


 - [ ] ID-25
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/interfaces/IERC2981.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/interfaces/IERC2981.sol#L4


 - [ ] ID-26
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/utils/introspection/ERC165.sol#L4


 - [ ] ID-27
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/security/Pausable.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/security/Pausable.sol#L4


 - [ ] ID-28
Pragma version[>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L3) is too complex

node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L3


 - [ ] ID-29
Pragma version[>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L3) is too complex

node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L3


 - [ ] ID-30
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/access/Ownable.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/access/Ownable.sol#L4


 - [ ] ID-31
Pragma version[^0.8.0](node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol#L4) allows old versions

node_modules/@openzeppelin/contracts/utils/introspection/IERC165.sol#L4


 - [ ] ID-32
Pragma version[>=0.8.0<0.9.0](node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L3) is too complex

node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L3


## naming-convention
Impact: Informational
Confidence: High
 - [ ] ID-33
Parameter [ERC721A.safeTransferFrom(address,address,uint256,bytes)._data](node_modules/erc721a/contracts/ERC721A.sol#L635) is not in mixedCase

node_modules/erc721a/contracts/ERC721A.sol#L635


 - [ ] ID-34
Contract [ERC721A__IERC721Receiver](node_modules/erc721a/contracts/ERC721A.sol#L12-L19) is not in CapWords

node_modules/erc721a/contracts/ERC721A.sol#L12-L19


 - [ ] ID-35
Parameter [ERC2981.royaltyInfo(uint256,uint256)._tokenId](node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43) is not in mixedCase

node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43


 - [ ] ID-36
Parameter [ERC2981.royaltyInfo(uint256,uint256)._salePrice](node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43) is not in mixedCase

node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43


 - [ ] ID-37
Parameter [BaseTokenURI.setBaseTokenURI(string)._baseTokenURI](node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L20) is not in mixedCase

node_modules/@divergencetech/ethier/contracts/erc721/BaseTokenURI.sol#L20


## external-function
Impact: Optimization
Confidence: High
 - [ ] ID-38
setApprovalForAll(address,bool) should be declared external:
	- [ERC721A.setApprovalForAll(address,bool)](node_modules/erc721a/contracts/ERC721A.sol#L461-L466)

node_modules/erc721a/contracts/ERC721A.sol#L461-L466


 - [ ] ID-39
renounceOwnership() should be declared external:
	- [Ownable.renounceOwnership()](node_modules/@openzeppelin/contracts/access/Ownable.sol#L61-L63)

node_modules/@openzeppelin/contracts/access/Ownable.sol#L61-L63


 - [ ] ID-40
safeTransferFrom(address,address,uint256) should be declared external:
	- [ERC721A.safeTransferFrom(address,address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L608-L614)

node_modules/erc721a/contracts/ERC721A.sol#L608-L614


 - [ ] ID-41
approve(address,uint256) should be declared external:
	- [ERC721A.approve(address,uint256)](node_modules/erc721a/contracts/ERC721A.sol#L425-L435)

node_modules/erc721a/contracts/ERC721A.sol#L425-L435


 - [ ] ID-42
totalSupply() should be declared external:
	- [ERC721A.totalSupply()](node_modules/erc721a/contracts/ERC721A.sol#L170-L176)

node_modules/erc721a/contracts/ERC721A.sol#L170-L176


 - [ ] ID-43
symbol() should be declared external:
	- [ERC721A.symbol()](node_modules/erc721a/contracts/ERC721A.sol#L281-L283)

node_modules/erc721a/contracts/ERC721A.sol#L281-L283


 - [ ] ID-44
balanceOf(address) should be declared external:
	- [ERC721A.balanceOf(address)](node_modules/erc721a/contracts/ERC721A.sol#L203-L206)

node_modules/erc721a/contracts/ERC721A.sol#L203-L206


 - [ ] ID-45
unpause() should be declared external:
	- [OwnerPausable.unpause()](node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L16-L18)

node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L16-L18


 - [ ] ID-46
transferOwnership(address) should be declared external:
	- [Ownable.transferOwnership(address)](node_modules/@openzeppelin/contracts/access/Ownable.sol#L69-L72)

node_modules/@openzeppelin/contracts/access/Ownable.sol#L69-L72


 - [ ] ID-47
tokenURI(uint256) should be declared external:
	- [ERC721A.tokenURI(uint256)](node_modules/erc721a/contracts/ERC721A.sol#L288-L293)

node_modules/erc721a/contracts/ERC721A.sol#L288-L293


 - [ ] ID-48
setDefaultRoyalty(address,uint96) should be declared external:
	- [ERC721ACommon.setDefaultRoyalty(address,uint96)](node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L65-L71)

node_modules/@divergencetech/ethier/contracts/erc721/ERC721ACommon.sol#L65-L71


 - [ ] ID-49
name() should be declared external:
	- [ERC721A.name()](node_modules/erc721a/contracts/ERC721A.sol#L274-L276)

node_modules/erc721a/contracts/ERC721A.sol#L274-L276


 - [ ] ID-50
pause() should be declared external:
	- [OwnerPausable.pause()](node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L11-L13)

node_modules/@divergencetech/ethier/contracts/utils/OwnerPausable.sol#L11-L13


 - [ ] ID-51
royaltyInfo(uint256,uint256) should be declared external:
	- [ERC2981.royaltyInfo(uint256,uint256)](node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43-L53)

node_modules/@openzeppelin/contracts/token/common/ERC2981.sol#L43-L53


