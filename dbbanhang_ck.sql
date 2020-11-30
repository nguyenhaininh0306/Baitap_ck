-- phpMyAdmin SQL Dump
-- version 2.11.6
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 30, 2020 at 10:54 AM
-- Server version: 5.0.51
-- PHP Version: 5.2.6

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dbbanhang_ck`
--

-- --------------------------------------------------------

--
-- Table structure for table `danhmuc`
--

CREATE TABLE `danhmuc` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tenthuonghieu` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `danhmuc`
--

INSERT INTO `danhmuc` (`id`, `tenthuonghieu`) VALUES
(1, 'Áo thun'),
(2, 'Áo khoác'),
(3, 'Quần thể thao');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `tensp` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `gia` varchar(50) character set utf8 collate utf8_unicode_ci NOT NULL,
  `mota` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `hinh` varchar(100) character set utf8 collate utf8_unicode_ci NOT NULL,
  `id_danhmuc` int(11) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`id`, `tensp`, `gia`, `mota`, `hinh`, `id_danhmuc`) VALUES
(1, 'Áo thun tay lở', '200000', 'Sản phẩm phù hợp với mọi tình huống', 'iphone12promax.jpg', 1);
