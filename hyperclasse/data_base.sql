-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 02 mars 2022 à 14:12
-- Version du serveur :  5.7.31
-- Version de PHP : 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `hyperclasse`
--

-- --------------------------------------------------------

--
-- Structure de la table `basket`
--

DROP TABLE IF EXISTS `basket`;
CREATE TABLE IF NOT EXISTS `basket` (
  `id` int(30) NOT NULL AUTO_INCREMENT,
  `user_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL,
  `line_total` int(30) NOT NULL,
  `status` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item` varchar(11) NOT NULL,
  `price` int(11) NOT NULL,
  `photo` varchar(30) NOT NULL,
  `description` varchar(1000) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `products`
--

INSERT INTO `products` (`id`, `item`, `price`, `photo`, `description`) VALUES
(1, 'Chemise', 50, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(2, 'Pantalon', 60, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(3, 'Veste', 80, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(4, 'Bottes', 150, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(5, 'T-shirt', 30, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(6, 'Jogging', 40, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(7, 'Casquette', 20, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(8, 'Short', 35, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(9, 'Lunettes', 30, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(10, 'Foulard', 15, 'foulard.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(11, 'Chaussettes', 10, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(12, 'Montre', 45, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(13, 'Coupe vent', 25, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(14, 'Manteau', 70, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(15, 'Baskets', 80, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(16, 'Ceinture', 30, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(17, 'Bonnet', 15, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(18, 'Gants', 15, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(19, 'Linterne', 20, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.'),
(20, 'Sac à dos', 50, 'image2.jpg', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam. Lorem ipsum dolor sit amet, consectetur adipisicing elit. Adipisci aspernatur dolore, doloribus expedita incidunt iusto necessitatibus, provident, quasi qui saepe unde veniam vero! A accusamus labore nulla porro ratione. Adipisci? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Alias aperiam autem dolor eaque enim expedita, fugit, hic magnam magni modi natus perspiciatis quasi qui, quia ratione reprehenderit repudiandae sequi totam.');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `email`, `password`) VALUES
(4, 'pedro', 'rodriguez', 'pedro@rodriguez.fr', '$2y$10$TGqG6l3zt.6AXN5C4EWtxuCOpUv7FLb4BsateKXwxlC1orZF81K..'),
(3, 'Jorge', 'Gutierrez', 'jorge.gutierrez@pepito.com', '$2y$10$JMYNP36pMSnZlfvQNDebaONC5SaAjYPHXM2HGP7KL6aWd/q0EC8Tu'),
(5, 'daniel', 'sanchez', 'daniel@sanchez.fr', '$2y$10$Fn/2hm6FVMXd/m2JCvUgZev3d/ub90jP.6dOtUjH/rVX6AyIsUtY2');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
