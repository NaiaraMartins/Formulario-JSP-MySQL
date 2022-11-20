-- phpMyAdmin SQL Dump
-- version 4.6.0
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: 19-Nov-2022 às 20:31
-- Versão do servidor: 5.7.12
-- PHP Version: 5.6.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistema_petshop`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cargo`
--

CREATE TABLE `cargo` (
  `idcargo` int(11) NOT NULL,
  `nomecargo` varchar(30) NOT NULL,
  `funcao` varchar(90) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cargo`
--

INSERT INTO `cargo` (`idcargo`, `nomecargo`, `funcao`) VALUES
(123, 'Vendedora', 'Vendas'),
(254, 'analista III', 'junior'),
(999, ' Desenvolvedor ', 'Gerente'),
(4567, 'Assistente', 'Caixa'),
(4570, ' Arquiteto ', 'Senior'),
(12369, 'SRE', 'Qualidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `cliente`
--

CREATE TABLE `cliente` (
  `idcliente` int(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `dtnasc` date NOT NULL,
  `naturalidade` varchar(45) NOT NULL,
  `nomepai` varchar(45) NOT NULL,
  `rg` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `nomemae` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `cliente`
--

INSERT INTO `cliente` (`idcliente`, `nome`, `cpf`, `dtnasc`, `naturalidade`, `nomepai`, `rg`, `email`, `nomemae`) VALUES
(1, ' Rafaella ', '10293847', '2022-08-31', '   São Paulo  ', 'Paulo', '   345678   ', '  lla@com   ', ' Raquel'),
(3, ' Marcia ', '10293847', '1998-08-31', '    São Paulo   ', ' Luiz ', '    345678    ', '   lla@com    ', ' Ivone '),
(6, ' Donatella ', '10293847', '2022-08-31', '  São Paulo ', ' Pedro ', '  345678  ', ' lla@com  ', ' Dona ');

-- --------------------------------------------------------

--
-- Estrutura da tabela `departamento`
--

CREATE TABLE `departamento` (
  `iddepartamento` int(11) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `nomedepartamento` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `departamento`
--

INSERT INTO `departamento` (`iddepartamento`, `endereco`, `nomedepartamento`) VALUES
(80, ' Rua Doze ', 'Governança'),
(85, 'Rua Treze', 'Qualidade'),
(111, 'rua tres', 'rh'),
(456, 'rua vinte', 'Contabil'),
(3456, 'rua 14', 'Cozinha');

-- --------------------------------------------------------

--
-- Estrutura da tabela `depto_loja`
--

CREATE TABLE `depto_loja` (
  `loja_idloja` int(11) NOT NULL,
  `departamento_iddepartamento` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `depto_loja`
--

INSERT INTO `depto_loja` (`loja_idloja`, `departamento_iddepartamento`) VALUES
(9898, 85),
(9898, 111),
(9898, 989),
(9898, 3456),
(9898, 12344);

-- --------------------------------------------------------

--
-- Estrutura da tabela `endereco`
--

CREATE TABLE `endereco` (
  `idendereco` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  `estado` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `quadra` varchar(50) NOT NULL,
  `rua` varchar(45) NOT NULL,
  `cep` int(11) NOT NULL,
  `logradouro` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `endereco`
--

INSERT INTO `endereco` (`idendereco`, `cliente_idcliente`, `estado`, `cidade`, `quadra`, `rua`, `cep`, `logradouro`) VALUES
(89, 12333, '12', '12', '12', '12', 12, '12'),
(123, 345, '8', '8', '8', '8', 8, '8'),
(234, 12333, '12', '12', '12', '12', 12, '12'),
(456, 44445, 'sp', 'sp', '12', 'doze', 98890, 'rua'),
(3455, 12333, 'sp', 'sp', '3', 'rua dez', 9876, 'promotor'),
(123345, 9857, 'rtt', 'tg', '4', 'rt', 123, 'erg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `estoque`
--

CREATE TABLE `estoque` (
  `idproduto` int(11) NOT NULL,
  `produto_idproduto` int(11) NOT NULL,
  `validade` int(11) NOT NULL,
  `garantia` int(11) NOT NULL,
  `precocompra` double NOT NULL,
  `qtd_existente` int(11) NOT NULL,
  `qtd_minima` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `estoque`
--

INSERT INTO `estoque` (`idproduto`, `produto_idproduto`, `validade`, `garantia`, `precocompra`, `qtd_existente`, `qtd_minima`) VALUES
(52, 6783, 12, 12, 23, 25, 3),
(56, 6783, 12, 12, 23, 25, 3),
(99, 678, 23, 3, 34, 45, 5),
(123, 112, 33, 12, 1234, 12, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `fornecedor`
--

CREATE TABLE `fornecedor` (
  `idfornecedor` int(11) NOT NULL,
  `nomefantasia` varchar(45) NOT NULL,
  `site` varchar(45) NOT NULL,
  `representante` varchar(45) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `dt_registro` date NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `fornecedor`
--

INSERT INTO `fornecedor` (`idfornecedor`, `nomefantasia`, `site`, `representante`, `endereco`, `cnpj`, `dt_registro`, `email`) VALUES
(1, ' Flores ', 'flores', ' flores ', ' flores azuis ', '0987', '2022-10-05', ' 00'),
(3, 'Flores', 'flores', 'flores', 'flores azuis', '00', '2022-10-05', '00'),
(8, 'Sophia', 'sophi.com.br', 'Sophia', 'rua das flores', '23455678', '2022-09-01', 'sophia@gmail.com'),
(23, 'Hahume', 'hh.com.br', 'Hahume', 'rua das pedras', '98765', '2022-08-17', 'hh@gmail.com'),
(34, 'Cacau', 'caca.com.br', 'CacÃ¡', 'rua dos bombons', '98765457', '2022-08-22', 'bb@gmail.com'),
(123, 'Meg', 'caca.com.br', 'Magali', 'rua das aves', '98765457', '2022-08-10', 'aves@gmail.com'),
(778, 'rosa', 'www.com', 'dois', 'doze', '1234', '2022-10-17', 'djh.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `funcionario`
--

CREATE TABLE `funcionario` (
  `idfuncionario` int(11) NOT NULL,
  `cargo_idcargo` int(11) NOT NULL,
  `depto_loja_departamento_iddepartamento` int(11) NOT NULL,
  `depto_loja_loja_idloja` int(11) NOT NULL,
  `cpf` varchar(11) NOT NULL,
  `nome` varchar(45) NOT NULL,
  `rg` int(11) NOT NULL,
  `salario` double NOT NULL,
  `dtnasc` date NOT NULL,
  `carteiradetrab` int(11) NOT NULL,
  `residencia` varchar(45) NOT NULL,
  `nomepai` varchar(45) NOT NULL,
  `dtadmissao` date NOT NULL,
  `dt_registro` date NOT NULL,
  `nomemae` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `funcionario`
--

INSERT INTO `funcionario` (`idfuncionario`, `cargo_idcargo`, `depto_loja_departamento_iddepartamento`, `depto_loja_loja_idloja`, `cpf`, `nome`, `rg`, `salario`, `dtnasc`, `carteiradetrab`, `residencia`, `nomepai`, `dtadmissao`, `dt_registro`, `nomemae`) VALUES
(34, 254, 12344, 9898, '3445', 'marli', 2345, 12245, '2009-12-19', 2345, '235', 'mario', '2022-09-26', '2022-09-26', 'maria'),
(56, 123, 85, 85, '2', '2', 2, 2, '2022-10-06', 2, '', '2', '2022-10-05', '2022-10-02', '2'),
(345, 254, 12344, 9898, '456789', 'tchutchu', 345677, 67890, '2021-01-04', 3456, 'sÃ£o carlos', 'ednou', '2022-09-19', '2022-09-27', 'edlaine'),
(8963, 123, 85, 85, '0', '0', 0, 0, '2022-10-25', 0, '0', '0', '2022-09-26', '2022-09-26', '0'),
(34567, 123, 111, 9898, '1245', 'er', 235, 3455, '2013-06-11', 346, 'dfgh', 'fgh', '2022-10-25', '2022-10-25', 'fhj');

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_da_venda`
--

CREATE TABLE `itens_da_venda` (
  `notafiscal_numeronf` int(11) NOT NULL,
  `estoque_idproduto` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `valor` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_da_venda`
--

INSERT INTO `itens_da_venda` (`notafiscal_numeronf`, `estoque_idproduto`, `qtd`, `valor`) VALUES
(33, 99, 6, 6),
(234, 99, 256, 56),
(335, 112, 5, 5),
(2342, 123, 6, 25),
(234456, 99, 2, 560);

-- --------------------------------------------------------

--
-- Estrutura da tabela `itens_nota_compras`
--

CREATE TABLE `itens_nota_compras` (
  `nota_fiscal_compras_idnf_compras` int(11) NOT NULL,
  `estoque_idproduto` int(11) NOT NULL,
  `qtd` int(11) NOT NULL,
  `preco` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `itens_nota_compras`
--

INSERT INTO `itens_nota_compras` (`nota_fiscal_compras_idnf_compras`, `estoque_idproduto`, `qtd`, `preco`) VALUES
(9, 6783, 5, 5),
(34, 112, 2, 345),
(34, 678, 2, 345),
(34, 3333, 23, 345),
(456, 1, 56, 34),
(4556, 1, 56, 34);

-- --------------------------------------------------------

--
-- Estrutura da tabela `loja`
--

CREATE TABLE `loja` (
  `idloja` int(11) NOT NULL,
  `endereco` varchar(80) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `site` varchar(30) NOT NULL,
  `cnpj` varchar(30) NOT NULL,
  `email` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `loja`
--

INSERT INTO `loja` (`idloja`, `endereco`, `nome`, `site`, `cnpj`, `email`) VALUES
(85, 'rua flores', 'loja um', 'confia.com', '00007', 'confia@.com'),
(86, ' rua flores ', 'Loja dois', 'lojadois.com', '00007', 'lojadois@.com'),
(234, 'rua quinze', 'mel', 'mel.com', '56789', 'mel@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notafiscal`
--

CREATE TABLE `notafiscal` (
  `numeronf` int(11) NOT NULL,
  `funcionario_idfuncionario` int(11) NOT NULL,
  `cliente_idcliente` int(11) NOT NULL,
  `valordavenda` double NOT NULL,
  `dtvenda` date NOT NULL,
  `dtprevista_entrega` date NOT NULL,
  `dt_real_entrega` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `notafiscal`
--

INSERT INTO `notafiscal` (`numeronf`, `funcionario_idfuncionario`, `cliente_idcliente`, `valordavenda`, `dtvenda`, `dtprevista_entrega`, `dt_real_entrega`) VALUES
(69, 34, 345, 10, '2022-10-05', '2022-10-05', '2022-10-05'),
(335, 34, 9857, 124, '2022-09-26', '2022-09-27', '2022-09-27');

-- --------------------------------------------------------

--
-- Estrutura da tabela `nota_fiscal_compras`
--

CREATE TABLE `nota_fiscal_compras` (
  `idnf_compras` int(11) NOT NULL,
  `loja_idloja` int(11) NOT NULL,
  `fornecedor_idfornecedor` int(11) NOT NULL,
  `valorcompra` double NOT NULL,
  `dtcompra` date NOT NULL,
  `dtreceb` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `nota_fiscal_compras`
--

INSERT INTO `nota_fiscal_compras` (`idnf_compras`, `loja_idloja`, `fornecedor_idfornecedor`, `valorcompra`, `dtcompra`, `dtreceb`) VALUES
(63, 85, 3, 6, '2022-10-05', '2022-10-04'),
(96, 85, 3, 6, '2022-10-05', '2022-10-05'),
(344, 9898, 456, 1234, '2022-09-07', '2022-09-30'),
(630, 85, 3, 6, '2022-10-05', '2022-10-04'),
(33333, 9898, 778, 12, '2022-09-29', '2022-09-30');

-- --------------------------------------------------------

--
-- Estrutura da tabela `produto`
--

CREATE TABLE `produto` (
  `idproduto` int(11) NOT NULL,
  `nomeproduto` varchar(45) NOT NULL,
  `peso` double NOT NULL,
  `marca` varchar(45) NOT NULL,
  `valorunit` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `produto`
--

INSERT INTO `produto` (`idproduto`, `nomeproduto`, `peso`, `marca`, `valorunit`) VALUES
(1, ' Bolsa ', 23, 'Salon', 18),
(2, ' Carteira ', 15, 'Colli', 35),
(112, 'Mochila', 23, 'Salon', 12),
(678, 'tenis', 3456, 'delli', 678);

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_cliente`
--

CREATE TABLE `telefone_cliente` (
  `cliente_idcliente` int(11) NOT NULL,
  `telefonecliente` varchar(15) NOT NULL,
  `nomecliente` varchar(44) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone_cliente`
--

INSERT INTO `telefone_cliente` (`cliente_idcliente`, `telefonecliente`, `nomecliente`) VALUES
(89, '89', '9857'),
(345, '8', ''),
(9857, '3466', ''),
(12333, '980', ''),
(44445, '980', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `telefone_fornecedor`
--

CREATE TABLE `telefone_fornecedor` (
  `id_tel_fornecedor` int(11) NOT NULL,
  `fornecedor_idfornecedor` int(11) NOT NULL,
  `telefone` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `telefone_fornecedor`
--

INSERT INTO `telefone_fornecedor` (`id_tel_fornecedor`, `fornecedor_idfornecedor`, `telefone`) VALUES
(85, 8, '85'),
(455, 4556, '1234567'),
(850, 23, '85'),
(4554, 4556, '1234567'),
(4567, 4556, '666432'),
(8501, 23, '850'),
(11111, 456, '11989890'),
(12363, 4556, '126363635263');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cargo`
--
ALTER TABLE `cargo`
  ADD PRIMARY KEY (`idcargo`);

--
-- Indexes for table `cliente`
--
ALTER TABLE `cliente`
  ADD PRIMARY KEY (`idcliente`);

--
-- Indexes for table `departamento`
--
ALTER TABLE `departamento`
  ADD PRIMARY KEY (`iddepartamento`);

--
-- Indexes for table `depto_loja`
--
ALTER TABLE `depto_loja`
  ADD PRIMARY KEY (`loja_idloja`,`departamento_iddepartamento`),
  ADD KEY `loja_idloja` (`loja_idloja`),
  ADD KEY `departamento_iddepartamento` (`departamento_iddepartamento`) USING BTREE;

--
-- Indexes for table `endereco`
--
ALTER TABLE `endereco`
  ADD PRIMARY KEY (`idendereco`),
  ADD KEY `cliente_idcliente` (`cliente_idcliente`);

--
-- Indexes for table `estoque`
--
ALTER TABLE `estoque`
  ADD PRIMARY KEY (`idproduto`),
  ADD KEY `produto_idproduto` (`produto_idproduto`);

--
-- Indexes for table `fornecedor`
--
ALTER TABLE `fornecedor`
  ADD PRIMARY KEY (`idfornecedor`);

--
-- Indexes for table `funcionario`
--
ALTER TABLE `funcionario`
  ADD PRIMARY KEY (`idfuncionario`),
  ADD KEY `cargo_idcargo` (`cargo_idcargo`),
  ADD KEY `depto_loja_loja_idloja` (`depto_loja_loja_idloja`),
  ADD KEY `depto_loja_departamento_iddepartamento` (`depto_loja_departamento_iddepartamento`);

--
-- Indexes for table `itens_da_venda`
--
ALTER TABLE `itens_da_venda`
  ADD PRIMARY KEY (`notafiscal_numeronf`),
  ADD UNIQUE KEY `notafiscal_numeronf_2` (`notafiscal_numeronf`),
  ADD KEY `notafiscal_numeronf` (`notafiscal_numeronf`),
  ADD KEY `estoque_idproduto` (`estoque_idproduto`);

--
-- Indexes for table `itens_nota_compras`
--
ALTER TABLE `itens_nota_compras`
  ADD PRIMARY KEY (`nota_fiscal_compras_idnf_compras`,`estoque_idproduto`),
  ADD KEY `nota_fiscal_compras_idnf_compras` (`nota_fiscal_compras_idnf_compras`),
  ADD KEY `estoque_idproduto` (`estoque_idproduto`);

--
-- Indexes for table `loja`
--
ALTER TABLE `loja`
  ADD PRIMARY KEY (`idloja`);

--
-- Indexes for table `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD PRIMARY KEY (`numeronf`),
  ADD KEY `cliente_idcliente` (`cliente_idcliente`),
  ADD KEY `funcionario_idfuncionario` (`funcionario_idfuncionario`);

--
-- Indexes for table `nota_fiscal_compras`
--
ALTER TABLE `nota_fiscal_compras`
  ADD PRIMARY KEY (`idnf_compras`),
  ADD KEY `loja_idloja` (`loja_idloja`),
  ADD KEY `fornecedor_idfornecedor` (`fornecedor_idfornecedor`);

--
-- Indexes for table `produto`
--
ALTER TABLE `produto`
  ADD PRIMARY KEY (`idproduto`);

--
-- Indexes for table `telefone_cliente`
--
ALTER TABLE `telefone_cliente`
  ADD PRIMARY KEY (`cliente_idcliente`),
  ADD KEY `cliente_idcliente` (`cliente_idcliente`);

--
-- Indexes for table `telefone_fornecedor`
--
ALTER TABLE `telefone_fornecedor`
  ADD PRIMARY KEY (`id_tel_fornecedor`),
  ADD KEY `fornecedor_idfornecedor` (`fornecedor_idfornecedor`);

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `funcionario`
--
ALTER TABLE `funcionario`
  ADD CONSTRAINT `funcionario_ibfk_1` FOREIGN KEY (`cargo_idcargo`) REFERENCES `cargo` (`idcargo`),
  ADD CONSTRAINT `funcionario_ibfk_2` FOREIGN KEY (`cargo_idcargo`) REFERENCES `cargo` (`idcargo`);

--
-- Limitadores para a tabela `notafiscal`
--
ALTER TABLE `notafiscal`
  ADD CONSTRAINT `notafiscal_ibfk_2` FOREIGN KEY (`funcionario_idfuncionario`) REFERENCES `funcionario` (`idfuncionario`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
