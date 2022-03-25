-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2018 at 06:01 PM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 5.6.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `email`, `password`) VALUES
(3, 'admin@charles.com', 'charles');

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `companyname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `contactnumber`, `birthdate`, `age`, `gender`, `civilstatus`, `address`, `occupation`, `companyname`) VALUES
(8, 'Arriane', 'Clarisse', 'Gatpo', 'arriane@gmail.com', 'arriane', '09751070324', '2000-07-15', '18', 'Female', 'Single', 'Quezon City', 'n/a', 'n/a'),
(9, 'Harley Davidson', 'Tamba', 'Sipasip', 'davey@gmail.com', 'harley', '0912031922', '2000-03-31', '19', 'Male', 'Single', 'Manila', 'n/a', 'n/a'),
(10, 'Zyrah Kae', 'Manait', 'Avila', 'zgkae@client.com', 'zyrah', '09751070320', '2000-07-08', '17', 'Female', 'Single', 'Taguig', 'n/a', 'n/a'),
(11, 'Estephanie ', 'Eurice', 'Rivera', 'estepe@client.com', 'estepe', '0912031922', '2000-07-18', '17', 'Female', 'Single', 'Taguig', 'n/a', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `client2`
--

CREATE TABLE `client2` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL,
  `civilstatus` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `occupation` varchar(50) NOT NULL,
  `companyname` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `client2`
--

INSERT INTO `client2` (`id`, `firstname`, `middlename`, `lastname`, `email`, `password`, `contactnumber`, `birthdate`, `age`, `gender`, `civilstatus`, `address`, `occupation`, `companyname`) VALUES
(4, 'Estephanie ', 'Estepe', 'Rivera', 'estepe@client.com', 'estepe', '0912031922', '2000-07-18', '17', 'Male', 'Single', 'Taguig', 'n/a', 'n/a');

-- --------------------------------------------------------

--
-- Table structure for table `cln`
--

CREATE TABLE `cln` (
  `message` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cln`
--

INSERT INTO `cln` (`message`) VALUES
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted'),
('Your message has been accepted');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `firstname`, `middlename`, `lastname`, `address`, `contactnumber`, `email`, `password`, `birthdate`, `age`, `gender`) VALUES
(1, 'christian', 'militar', 'delos santos', '22#botolan St. Brgy. Santol Quezon City', '1234567890', 'christian@yaho.com', 'christian', '2000-02-11', '18', 'Male'),
(4, 'danie', 'dag-ay', 'pobre', '18 kampi brgy 201 pasay city', '09301608349', 'danie_pobre@yahoo.com', '09102567910', '2000-05-07', '17', 'male'),
(5, 'rovic', 'mampusti', 'brillantes', 'Pureza', '09122598202', 'rovicbrillantes@gmail.com', 'brillantes01', '2000-02-01', '18', 'male'),
(6, 'Glenn Richard', 'San juan', 'Eregia', 'Antipolo City', '09076329153', 'eregia.glenn@yahoo.com', 'ivyejada', '1999-12-09', '18', 'male'),
(7, 'Virgie', 'Gonzaga', 'Reduta', 'taguig', '09294289309', 'gazielgie14@gmail.com', 'giecervanteschua', '2000-02-14', '18', 'female'),
(11, 'Charles', 'Charles', 'Rivera', 'Mandaluyong', '1234567890', 'charles@gmail.com', 'charles', '2018-03-15', '18', 'male'),
(12, 'Cheska', 'Orejola', 'Baluloy', 'Tondo, Manila', '09186529775', 'baluloy.francheska@gmail.com', 'baluloycheska', '2001-02-15', '18', 'female');

-- --------------------------------------------------------

--
-- Table structure for table `employee2`
--

CREATE TABLE `employee2` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee2`
--

INSERT INTO `employee2` (`id`, `firstname`, `middlename`, `lastname`, `address`, `contactnumber`, `email`, `password`, `birthdate`, `age`, `gender`) VALUES
(1, 'Cheska', 'Orejola', 'Baluloy', 'Tondo, Manila', '09186529775', 'baluloy.francheska@gmail.com', 'baluloycheska', '2001-02-15', '17', 'female'),
(2, 'Cheska', 'Orejola', 'Baluloy', 'Tondo, Manila', '09186529775', 'baluloy.francheska@gmail.com', 'baluloycheska', '2001-02-15', '18', 'female'),
(3, 'christian', 'militar', 'delos santos', '22#botolan St. Brgy. Santol Quezon City', '1234567890', 'christian@yaho.com', 'christian', '2000-02-11', '18', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `loantransaction`
--

CREATE TABLE `loantransaction` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` varchar(50) NOT NULL,
  `loaninterest` varchar(50) NOT NULL,
  `cashableamount` varchar(50) NOT NULL,
  `termofpayment` varchar(50) NOT NULL,
  `monthlypayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loantransaction`
--

INSERT INTO `loantransaction` (`id`, `date`, `loantype`, `loanamount`, `loaninterest`, `cashableamount`, `termofpayment`, `monthlypayment`) VALUES
(1, '2018-03-17', 'Mortgage Loan', '123', '123', '123', '1234', '123');

-- --------------------------------------------------------

--
-- Table structure for table `loantransaction2`
--

CREATE TABLE `loantransaction2` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` varchar(50) NOT NULL,
  `loaninterest` varchar(50) NOT NULL,
  `cashableamount` varchar(50) NOT NULL,
  `termofpayment` varchar(50) NOT NULL,
  `monthlypayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loantransaction2`
--

INSERT INTO `loantransaction2` (`id`, `date`, `loantype`, `loanamount`, `loaninterest`, `cashableamount`, `termofpayment`, `monthlypayment`) VALUES
(1, '2018-03-17', 'Mortgage Loan', '123', '123', '123', '1234', '1234');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransaction`
--

CREATE TABLE `paymenttransaction` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `paymentamount` varchar(50) NOT NULL,
  `clientdetails` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttransaction`
--

INSERT INTO `paymenttransaction` (`id`, `date`, `loantype`, `paymentamount`, `clientdetails`) VALUES
(1, '2018-03-26', 'Mortgage Loan', '123', '12350'),
(2, '2018-03-27', 'Personal Financing', '999', 'sheet');

-- --------------------------------------------------------

--
-- Table structure for table `paymenttransaction2`
--

CREATE TABLE `paymenttransaction2` (
  `id` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `loantype` varchar(100) NOT NULL,
  `paymentamount` varchar(100) NOT NULL,
  `clientdetails` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `paymenttransaction2`
--

INSERT INTO `paymenttransaction2` (`id`, `date`, `loantype`, `paymentamount`, `clientdetails`) VALUES
(1, '2018-03-26', 'Mortgage Loan', '123', '12350');

-- --------------------------------------------------------

--
-- Table structure for table `reloantransaction`
--

CREATE TABLE `reloantransaction` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` varchar(50) NOT NULL,
  `loaninterest` varchar(50) NOT NULL,
  `cashableamount` varchar(50) NOT NULL,
  `termofpayment` varchar(50) NOT NULL,
  `monthlypayment` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reloantransaction`
--

INSERT INTO `reloantransaction` (`id`, `date`, `loantype`, `loanamount`, `loaninterest`, `cashableamount`, `termofpayment`, `monthlypayment`) VALUES
(2, '2018-03-15', 'Vehicle Financing', '1000', '2389', '123', '90123', '1234'),
(3, '2018-03-22', 'Mortgage Loan', '123', '123', '123', '1234', '1234'),
(4, '2018-03-22', 'Mortgage Loan', '123', '123', '123', '1234', '1234'),
(5, '2018-03-22', 'Mortgage Loan', '11', '123', '123', '1234', '1234'),
(6, '2018-03-22', 'Vehicle Financing', '123', '123', '123', '1234', '1234'),
(7, '2018-03-22', 'Mortgage Loan', '123', '123', '123', '1234', '1234'),
(8, '2018-03-22', 'Mortgage Loan', '123', '123', '123', '1234', '1234'),
(9, '2018-03-22', 'Mortgage Loan', '123', '123', '123', '1234', '1234'),
(10, '2018-03-27', 'Mortgage Loan', '1000000000000', '1', '1000000000000', 'abaot', '1'),
(11, '2018-03-27', 'Mortgage Loan', '1000000000000', '1', '1000000000000', 'abaot', '1'),
(12, '2018-03-27', 'Mortgage Loan', '1000000000000', '1', '1000000000000', 'abaot', '1'),
(13, '2018-03-23', 'Mortgage Loan', '11', '11', '11', '11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `reloantransaction2`
--

CREATE TABLE `reloantransaction2` (
  `id` int(10) NOT NULL,
  `date` varchar(100) NOT NULL,
  `loantype` varchar(100) NOT NULL,
  `loanamount` varchar(100) NOT NULL,
  `loaninterest` varchar(100) NOT NULL,
  `cashableamount` varchar(100) NOT NULL,
  `termofpayment` varchar(100) NOT NULL,
  `monthlypayment` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reloantransaction2`
--

INSERT INTO `reloantransaction2` (`id`, `date`, `loantype`, `loanamount`, `loaninterest`, `cashableamount`, `termofpayment`, `monthlypayment`) VALUES
(1, '2018-03-26', 'Mortgage Loan', '123', '123', '123', '1234', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `requestform`
--

CREATE TABLE `requestform` (
  `id` int(10) NOT NULL,
  `date` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` varchar(50) NOT NULL,
  `loaninterest` varchar(50) NOT NULL,
  `cashableamount` varchar(50) NOT NULL,
  `termofpayment` varchar(50) NOT NULL,
  `monthlypayment` varchar(50) NOT NULL,
  `request` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requestform`
--

INSERT INTO `requestform` (`id`, `date`, `loantype`, `loanamount`, `loaninterest`, `cashableamount`, `termofpayment`, `monthlypayment`, `request`) VALUES
(1, '2018-03-23', 'Mortgage Loan', '11', '11', '11', '11', '11', 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE `transaction` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `balance` varchar(50) NOT NULL,
  `installdate` varchar(50) NOT NULL,
  `rate` varchar(50) NOT NULL,
  `paid` varchar(50) NOT NULL,
  `paiddate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `transactionloan`
--

CREATE TABLE `transactionloan` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` varchar(50) NOT NULL,
  `interestrate` int(50) NOT NULL,
  `installmentdate` varchar(50) NOT NULL,
  `paidamount` int(50) NOT NULL,
  `paydate` varchar(50) NOT NULL,
  `totalbalance` int(50) NOT NULL,
  `reloanamount` varchar(50) NOT NULL,
  `reinterestrate` int(50) NOT NULL,
  `totalloan` varchar(50) NOT NULL,
  `totalrate` int(50) NOT NULL,
  `repaidamount` int(50) NOT NULL,
  `totalpay` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionloan`
--

INSERT INTO `transactionloan` (`id`, `name`, `loantype`, `loanamount`, `interestrate`, `installmentdate`, `paidamount`, `paydate`, `totalbalance`, `reloanamount`, `reinterestrate`, `totalloan`, `totalrate`, `repaidamount`, `totalpay`) VALUES
(57, 'ZGKAE-SNS01', 'Mortgage Loan', '25000', 3999, '2018-04-17', 10500, '2018-04-07', 23449, '3500', 1450, '28500', 5449, 0, 0),
(58, 'R2D2-SNS01', 'Vehicle Financing', '10000', 2500, '2018-04-16', 3500, '2018-04-12', 9000, '0', 0, '10000', 2500, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactionloan2`
--

CREATE TABLE `transactionloan2` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` int(50) NOT NULL,
  `interestrate` int(50) NOT NULL,
  `installmentdate` varchar(50) NOT NULL,
  `paidamount` int(50) NOT NULL,
  `paydate` varchar(50) NOT NULL,
  `totalbalance` int(50) NOT NULL,
  `reloanamount` int(50) NOT NULL,
  `reinterestrate` int(50) NOT NULL,
  `totalloan` int(50) NOT NULL,
  `totalrate` int(50) NOT NULL,
  `repaidamount` int(50) NOT NULL,
  `totalpay` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionloan2`
--

INSERT INTO `transactionloan2` (`id`, `name`, `loantype`, `loanamount`, `interestrate`, `installmentdate`, `paidamount`, `paydate`, `totalbalance`, `reloanamount`, `reinterestrate`, `totalloan`, `totalrate`, `repaidamount`, `totalpay`) VALUES
(42, 'ZGKAE-SNS01', 'Personal Financing', 25000, 3999, '2018-04-17', 0, '2018-04-07', 0, 1000, 200, 0, 0, 0, 0),
(43, 'ZGKAE-SNS01', 'Mortgage Loan', 25000, 3999, '2018-04-17', 500, '2018-04-07', 0, 500, 250, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactionnotif`
--

CREATE TABLE `transactionnotif` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` int(50) NOT NULL,
  `interestrate` int(50) NOT NULL,
  `installmentdate` varchar(50) NOT NULL,
  `paidamount` int(50) NOT NULL,
  `paydate` varchar(50) NOT NULL,
  `totalbalance` int(50) NOT NULL,
  `reloanamount` int(50) NOT NULL,
  `reinterestrate` int(50) NOT NULL,
  `totalloan` int(50) NOT NULL,
  `totalrate` int(50) NOT NULL,
  `repaidamount` int(50) NOT NULL,
  `totalpay` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionnotif`
--

INSERT INTO `transactionnotif` (`id`, `name`, `loantype`, `loanamount`, `interestrate`, `installmentdate`, `paidamount`, `paydate`, `totalbalance`, `reloanamount`, `reinterestrate`, `totalloan`, `totalrate`, `repaidamount`, `totalpay`) VALUES
(10, 'SHSCP5-SNS01', 'Mortgage Loan', 2000, 100, '2018-04-24', 0, '2018-04-11', 0, 0, 0, 0, 0, 0, 0),
(11, 'HDTS-SNS01', 'Vehicle Financing', 12000, 2500, '2018-04-25', 0, '2018-04-07', 0, 0, 0, 0, 0, 0, 0),
(12, 'GASL-SNS01', 'Vehicle Financing', 4500, 10000, '2018-04-28', 0, '2018-04-07', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `transactionpay`
--

CREATE TABLE `transactionpay` (
  `id` int(10) NOT NULL,
  `name` varchar(50) NOT NULL,
  `loantype` varchar(50) NOT NULL,
  `loanamount` int(50) NOT NULL,
  `interestrate` int(50) NOT NULL,
  `installmentdate` varchar(50) NOT NULL,
  `paidamount` int(50) NOT NULL,
  `paydate` varchar(50) NOT NULL,
  `totalbalance` int(50) NOT NULL,
  `reloanamount` int(50) NOT NULL,
  `reinterestrate` int(50) NOT NULL,
  `totalloan` int(50) NOT NULL,
  `totalrate` int(50) NOT NULL,
  `repaidamount` int(50) NOT NULL,
  `totalpay` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transactionpay`
--

INSERT INTO `transactionpay` (`id`, `name`, `loantype`, `loanamount`, `interestrate`, `installmentdate`, `paidamount`, `paydate`, `totalbalance`, `reloanamount`, `reinterestrate`, `totalloan`, `totalrate`, `repaidamount`, `totalpay`) VALUES
(25, 'ZGKAE-SNS01', 'Personal Financing', 25000, 3999, '2018-04-17', 500, '2018-04-07', 0, 0, 0, 0, 0, 0, 0),
(26, 'R2D2-SNS01', 'Vehicle Financing', 10000, 2500, '2018-04-16', 3000, '2018-04-12', 0, 0, 0, 0, 0, 0, 0),
(27, 'ZGKAE-SNS01', 'Mortgage Loan', 25000, 3999, '2018-04-17', 10000, '2018-04-07', 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(10) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `firstname`, `middlename`, `lastname`, `address`, `contactnumber`, `email`, `password`, `birthdate`, `age`, `gender`) VALUES
(11, 'Christian', 'Militar', 'De Los Santos', 'Quezon City', '09060670203', 'user@christian.com', 'christian', '2000-02-10', '18', 'male'),
(12, 'Charles', 'Charles', 'Rivera', 'Mandaluyong', '1234567890', 'charles@gmail.com', 'charles', '2018-03-14', '18', 'male'),
(13, 'josh', 'josh', 'josh', 'taguig', '1234567890', 'joshua@gmail.com', 'josh', '2018-03-27', '18', 'male'),
(14, 'Christian', 'Militar', 'De Los Santos', 'Quezon City', '09060670203', 'user@christian.com', 'christian', '2000-02-10', '18', 'Male');

-- --------------------------------------------------------

--
-- Table structure for table `user2`
--

CREATE TABLE `user2` (
  `id` int(11) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `middlename` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(50) NOT NULL,
  `contactnumber` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `birthdate` varchar(50) NOT NULL,
  `age` varchar(50) NOT NULL,
  `gender` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user2`
--

INSERT INTO `user2` (`id`, `firstname`, `middlename`, `lastname`, `address`, `contactnumber`, `email`, `password`, `birthdate`, `age`, `gender`) VALUES
(1, 'christian', 'militar', 'delos santos', 'Quezon City', '09076329153', 'tian@gmail.com', 'tian', '2018-01-01', '18', 'female');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client2`
--
ALTER TABLE `client2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee2`
--
ALTER TABLE `employee2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantransaction`
--
ALTER TABLE `loantransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `loantransaction2`
--
ALTER TABLE `loantransaction2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymenttransaction`
--
ALTER TABLE `paymenttransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `paymenttransaction2`
--
ALTER TABLE `paymenttransaction2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reloantransaction`
--
ALTER TABLE `reloantransaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reloantransaction2`
--
ALTER TABLE `reloantransaction2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requestform`
--
ALTER TABLE `requestform`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionloan`
--
ALTER TABLE `transactionloan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionloan2`
--
ALTER TABLE `transactionloan2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionnotif`
--
ALTER TABLE `transactionnotif`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transactionpay`
--
ALTER TABLE `transactionpay`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user2`
--
ALTER TABLE `user2`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `client2`
--
ALTER TABLE `client2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `employee2`
--
ALTER TABLE `employee2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `loantransaction`
--
ALTER TABLE `loantransaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `loantransaction2`
--
ALTER TABLE `loantransaction2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `paymenttransaction`
--
ALTER TABLE `paymenttransaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `paymenttransaction2`
--
ALTER TABLE `paymenttransaction2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `reloantransaction`
--
ALTER TABLE `reloantransaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `reloantransaction2`
--
ALTER TABLE `reloantransaction2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `requestform`
--
ALTER TABLE `requestform`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `transactionloan`
--
ALTER TABLE `transactionloan`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=59;

--
-- AUTO_INCREMENT for table `transactionloan2`
--
ALTER TABLE `transactionloan2`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `transactionnotif`
--
ALTER TABLE `transactionnotif`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `transactionpay`
--
ALTER TABLE `transactionpay`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user2`
--
ALTER TABLE `user2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
