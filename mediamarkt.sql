-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : ven. 16 oct. 2026 à 15:04
-- Version du serveur : 10.4.28-MariaDB
-- Version de PHP : 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `mediamarkt`
--

-- --------------------------------------------------------

--
-- Structure de la table `smartphones`
--

CREATE TABLE `smartphones` (
  `id_smartphones` int(11) NOT NULL,
  `nom_smartphone` varchar(150) NOT NULL,
  `marque_smartphone` varchar(50) NOT NULL,
  `date_de_sortie` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `smartphones`
--

INSERT INTO `smartphones` (`id_smartphones`, `nom_smartphone`, `marque_smartphone`, `date_de_sortie`) VALUES
(1, 'iPhone 18 Pro', 'APPLE', '2026-09-18'),
(2, 'Galaxy A17', 'SAMSUNG', '2025-08-14'),
(3, 'Galaxy S26', 'SAMSUNG', '2026-02-25');

-- --------------------------------------------------------

--
-- Structure de la table `tvs`
--

CREATE TABLE `tvs` (
  `id_tvs` int(11) NOT NULL,
  `nom_TV` varchar(150) NOT NULL,
  `marque_TV` varchar(50) NOT NULL,
  `taille` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `tvs`
--

INSERT INTO `tvs` (`id_tvs`, `nom_TV`, `marque_TV`, `taille`) VALUES
(1, 'QE85QN74FATXXN', 'SAMSUNG', 85),
(2, '75QNED8MB6A', 'LG', 75),
(3, '32PFS6050/12', 'PHILIPS', 32);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

CREATE TABLE `utilisateurs` (
  `id_utilisateurs` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `date_de_naissance` date NOT NULL,
  `adresse` varchar(250) NOT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `utilisateurs`
--

INSERT INTO `utilisateurs` (`id_utilisateurs`, `nom`, `prenom`, `age`, `date_de_naissance`, `adresse`, `email`) VALUES
(1, 'Lee', 'Sin', 37, '1989-02-18', 'Londres', 'lee_sin@gmail.com'),
(2, 'Dubois', 'Emma', 25, '2000-12-06', 'Paris', 'emmadubois@hotmail.com'),
(3, 'Smith', 'Jenny', 15, '2011-06-07', 'Washington', 'JennyS@gmail.com');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `smartphones`
--
ALTER TABLE `smartphones`
  ADD PRIMARY KEY (`id_smartphones`);

--
-- Index pour la table `tvs`
--
ALTER TABLE `tvs`
  ADD PRIMARY KEY (`id_tvs`);

--
-- Index pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  ADD PRIMARY KEY (`id_utilisateurs`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `smartphones`
--
ALTER TABLE `smartphones`
  MODIFY `id_smartphones` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `tvs`
--
ALTER TABLE `tvs`
  MODIFY `id_tvs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `utilisateurs`
--
ALTER TABLE `utilisateurs`
  MODIFY `id_utilisateurs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
