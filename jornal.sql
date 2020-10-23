-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 22-Out-2020 às 01:13
-- Versão do servidor: 10.4.11-MariaDB
-- versão do PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `jornal`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `ano`
--

CREATE TABLE `ano` (
  `Ano` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `ano`
--

INSERT INTO `ano` (`Ano`) VALUES
(1980),
(1981),
(1982),
(1983),
(1984),
(1985),
(1986),
(1987),
(1988),
(1989),
(1990),
(1991),
(1992),
(1993),
(1994),
(1995),
(1996),
(1997),
(1998),
(1999),
(2000),
(2001),
(2002),
(2003),
(2004),
(2005),
(2006),
(2007),
(2008),
(2009),
(2010),
(2011),
(2012),
(2013),
(2014),
(2015),
(2016),
(2017),
(2018),
(2019),
(2020);

-- --------------------------------------------------------

--
-- Estrutura da tabela `categoria`
--

CREATE TABLE `categoria` (
  `codCategoria` int(11) NOT NULL,
  `categoria` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `categoria`
--

INSERT INTO `categoria` (`codCategoria`, `categoria`) VALUES
(1, 'Esporte'),
(2, 'Entreterimento'),
(3, 'Politica'),
(4, 'Tecnologia'),
(5, 'viagem');

-- --------------------------------------------------------

--
-- Estrutura da tabela `dia`
--

CREATE TABLE `dia` (
  `Dia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `dia`
--

INSERT INTO `dia` (`Dia`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12),
(13),
(14),
(15),
(16),
(17),
(18),
(19),
(20),
(21),
(22),
(23),
(24),
(25),
(26),
(27),
(28),
(29),
(30),
(31);

-- --------------------------------------------------------

--
-- Estrutura da tabela `mes`
--

CREATE TABLE `mes` (
  `Mes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `mes`
--

INSERT INTO `mes` (`Mes`) VALUES
(1),
(2),
(3),
(4),
(5),
(6),
(7),
(8),
(9),
(10),
(11),
(12);

-- --------------------------------------------------------

--
-- Estrutura da tabela `noticia`
--

CREATE TABLE `noticia` (
  `codNoticia` int(11) NOT NULL,
  `titulo` varchar(255) DEFAULT NULL,
  `noticia` text DEFAULT NULL,
  `codRedator` int(11) DEFAULT NULL,
  `codCategoria` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `noticia`
--

INSERT INTO `noticia` (`codNoticia`, `titulo`, `noticia`, `codRedator`, `codCategoria`, `Dia`, `Ano`, `Mes`) VALUES
(1, 'Lagosta, aborto, Deus e Lava Jato: o que Kassio Marques disse em sabatina', 'Indicado pelo presidente Jair Bolsonaro (sem partido) para uma vaga no STF (Supremo Tribunal Federal), o desembargador federal Kassio Nunes Marques passa hoje por sabatina no Senado. Em sua fala inicial, ele citou Deus e trechos da Bílbia. Depois, respondeu perguntas sobre aborto, Lava Jato e polêmicas sobre seu currículo. Marques também justificou sua decisão de liberar uma licitação do STF para o fornecimento de lagostas e vinhos premiados. A sabatina está sendo realizada pela CCJ (Comissão de Constituição e Justiça) do Senado.', 6, 3, 20, 2020, 10),
(2, 'Google é processado pelo Departamento de Justiça dos EUA por monopólio em sistema de buscas', 'Governo dos EUA diz que gigante da tecnologia paga outras companhias para que elas privilegiem seu sistema, violando legislação antitruste. Empresa afirma que processo é falho.\r\nO Departamento de Justiça dos Estados Unidos e 11 estados norte-americanos entraram com uma ação antitruste contra o Google, nesta terça-feira (20), por supostamente violar a lei ao usar seu poder de mercado para afastar rivais', 2, 4, 20, 2020, 10),
(5, 'Planos de viagem ao Rio de Janeiro retornam ao nível pré-pandemia', 'O setor de Viagens e Turismo pode finalmente estar diante de uma oportunidade de fazer os turistas colocarem o pé na estrada. A quantidade de relatos de planos de viagens para o Rio de Janeiro encontradas pela inteligência artificial em relatos contidos em blogs, fóruns e redes sociais, atingiu o mesmo volume observado em março, antes das restrições trazidas pela epidemia, o que indica um retorno dos viajantes nos próximos meses, em especial no verão.', 5, 5, 20, 2020, 10);

-- --------------------------------------------------------

--
-- Estrutura da tabela `redator`
--

CREATE TABLE `redator` (
  `codRedator` int(11) NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `sobrenome` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `telefone` varchar(10) DEFAULT NULL,
  `cidade` varchar(100) DEFAULT NULL,
  `ddd` int(11) DEFAULT NULL,
  `codTurma` int(11) DEFAULT NULL,
  `Dia` int(11) DEFAULT NULL,
  `Mes` int(11) DEFAULT NULL,
  `Ano` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `redator`
--

INSERT INTO `redator` (`codRedator`, `nome`, `sobrenome`, `email`, `telefone`, `cidade`, `ddd`, `codTurma`, `Dia`, `Mes`, `Ano`) VALUES
(1, 'joão', 'santos', 'joao@email.com', '99564-5522', 'Mauá', 11, 2, 10, 7, 2003),
(2, 'Richard', 'Santos', 'richard@email.com', '99836-4943', 'Ribeirão Pires', 11, 1, 8, 4, 2003),
(5, 'Ester ', 'Carolline', 'ester@email.com', '99615-4563', 'Rio Grande da Serra', 11, 6, 19, 8, 2003),
(6, 'Milena', 'Santos', 'milena@email.com', '99568-2147', 'Ribeirão Pires', 11, NULL, 16, 6, 2002);

-- --------------------------------------------------------

--
-- Estrutura da tabela `turma`
--

CREATE TABLE `turma` (
  `codTurma` int(11) NOT NULL,
  `turma` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `turma`
--

INSERT INTO `turma` (`codTurma`, `turma`) VALUES
(1, '1C'),
(2, '2C'),
(3, '3C'),
(4, '1F'),
(5, '2F'),
(6, '3F');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `ano`
--
ALTER TABLE `ano`
  ADD PRIMARY KEY (`Ano`);

--
-- Índices para tabela `categoria`
--
ALTER TABLE `categoria`
  ADD PRIMARY KEY (`codCategoria`);

--
-- Índices para tabela `dia`
--
ALTER TABLE `dia`
  ADD PRIMARY KEY (`Dia`);

--
-- Índices para tabela `mes`
--
ALTER TABLE `mes`
  ADD PRIMARY KEY (`Mes`);

--
-- Índices para tabela `noticia`
--
ALTER TABLE `noticia`
  ADD PRIMARY KEY (`codNoticia`),
  ADD KEY `codRedator` (`codRedator`),
  ADD KEY `codCategoria` (`codCategoria`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Ano` (`Ano`),
  ADD KEY `Mes` (`Mes`);

--
-- Índices para tabela `redator`
--
ALTER TABLE `redator`
  ADD PRIMARY KEY (`codRedator`),
  ADD KEY `codTurma` (`codTurma`),
  ADD KEY `Dia` (`Dia`),
  ADD KEY `Mes` (`Mes`),
  ADD KEY `Ano` (`Ano`);

--
-- Índices para tabela `turma`
--
ALTER TABLE `turma`
  ADD PRIMARY KEY (`codTurma`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categoria`
--
ALTER TABLE `categoria`
  MODIFY `codCategoria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `noticia`
--
ALTER TABLE `noticia`
  MODIFY `codNoticia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `redator`
--
ALTER TABLE `redator`
  MODIFY `codRedator` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de tabela `turma`
--
ALTER TABLE `turma`
  MODIFY `codTurma` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `noticia`
--
ALTER TABLE `noticia`
  ADD CONSTRAINT `noticia_ibfk_1` FOREIGN KEY (`codRedator`) REFERENCES `redator` (`codRedator`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_2` FOREIGN KEY (`codCategoria`) REFERENCES `categoria` (`codCategoria`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_3` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `noticia_ibfk_5` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Limitadores para a tabela `redator`
--
ALTER TABLE `redator`
  ADD CONSTRAINT `redator_ibfk_1` FOREIGN KEY (`codTurma`) REFERENCES `turma` (`codTurma`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_2` FOREIGN KEY (`Dia`) REFERENCES `dia` (`Dia`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_3` FOREIGN KEY (`Mes`) REFERENCES `mes` (`Mes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `redator_ibfk_4` FOREIGN KEY (`Ano`) REFERENCES `ano` (`Ano`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
