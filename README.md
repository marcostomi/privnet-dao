# PrivNet DAO

**Protocolo Descentralizado para Redes Privativas 5G/LTE**

MVP completo desenvolvido para a disciplina **Web 3.0 - Unidade 1 | Capítulo 5**

### Problema resolvido
Empresas de telecomunicações e indústrias precisam de redes privativas rápidas, seguras e sob demanda. O PrivNet DAO permite financiar slices de rede através de staking, receber NFTs como certificados de capacidade e governar o protocolo de forma descentralizada.

### Contratos Deployados (Sepolia Testnet)

| Contrato            | Endereço                                      | Explorer |
|---------------------|-----------------------------------------------|----------|
| **PNTToken (ERC-20)** | 0x561e613814bD2eE59e723EC407d3bD1c4f857290 | [Ver](https://sepolia.etherscan.io/address/0x561e613814bD2eE59e723EC407d3bD1c4f857290) |
| **SliceNFT (ERC-721)** | 0xacCEE1C54E0BA08B6d15489057724F71EF842880 | [Ver](https://sepolia.etherscan.io/address/0xacCEE1C54E0BA08B6d15489057724F71EF842880) |
| **Governance**      | 0x7e0d119cCfF0B9fB00EbAd0CA9646E2EC6348A13 | [Ver](https://sepolia.etherscan.io/address/0x7e0d119cCfF0B9fB00EbAd0CA9646E2EC6348A13) |
| **StakingContract** | 0x5eC2c4CCD28cFAe9cF49baad2D9d31cebB427C3E | [Ver](https://sepolia.etherscan.io/address/0x5eC2c4CCD28cFAe9cF49baad2D9d31cebB427C3E) |

### Funcionalidades implementadas
- Token ERC-20 (PNT)
- NFT ERC-721 (SliceNFT - certificado de rede privativa)
- Contrato de Staking com recompensa
- Governança simples (DAO)
- Proteção ReentrancyGuard + Ownable
- Mock Oracle (simula Chainlink)

### Como testar
1. Aprovar tokens no StakingContract
2. Fazer `stake()` → recebe NFT automaticamente
3. Criar proposta na Governance e votar

**Desenvolvido por:** Marcos Tomi  
**Área:** Telecomunicações e Redes Privativas  
**Repositório:** https://github.com/marcostomi/privnet-dao
