-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema pump_and_dump_prevention_screenerdb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `pump_and_dump_prevention_screenerdb` ;

-- -----------------------------------------------------
-- Schema pump_and_dump_prevention_screenerdb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `pump_and_dump_prevention_screenerdb` DEFAULT CHARACTER SET utf8 ;
USE `pump_and_dump_prevention_screenerdb` ;

-- -----------------------------------------------------
-- Table `stock`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `stock` ;

CREATE TABLE IF NOT EXISTS `stock` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `nameofstock` VARCHAR(40) NOT NULL,
  `tikr` VARCHAR(40) NOT NULL,
  `current_trading_price` VARCHAR(40) NOT NULL,
  `open` VARCHAR(40) NOT NULL,
  `market_cap_in_mil` VARCHAR(40) NOT NULL,
  `shares_outstanding_in_mil` VARCHAR(40) NOT NULL,
  `public_float_in_mil` VARCHAR(40) NOT NULL,
  `revenue_per_employee_in_mil` VARCHAR(40) NOT NULL,
  `price_to_earnings_ratio` VARCHAR(40) NOT NULL,
  `short_interest_in_mil` VARCHAR(40) NOT NULL,
  `percent_of_float_shorted` VARCHAR(40) NOT NULL,
  `average_volume_in_mil` VARCHAR(40) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SET SQL_MODE = '';
DROP USER IF EXISTS screeneruser@localhost;
SET SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
CREATE USER 'screeneruser'@'localhost' IDENTIFIED BY 'screeneruser';

GRANT SELECT, INSERT, TRIGGER, UPDATE, DELETE ON TABLE * TO 'screeneruser'@'localhost';

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `stock`
-- -----------------------------------------------------
START TRANSACTION;
USE `pump_and_dump_prevention_screenerdb`;
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (1, 'Castor Maritime Inc', 'CTRM', '1.0300', '0.9639', '601.75', '364.46', '363.72', '5.968', '1.70', '17.84', '4.90', '178.87');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (2, 'Ageagle Aerial Systems Inc\n', 'UAVS', '8.40', '8.11', '498.05', '58.64', '53.62', '29.67', '1.65', '6.03', '11.25', '9.68');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (3, 'SoS Limited', 'SOS', '6.53', '6.10', '213.26', '121.53', '14.62', '245.87', '0.80', '9.62', '3.42', '48.64');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (4, 'Univec Conglomerate Inc', 'UNVC', '0.1220', '0.1187', '41.62', '32.68', '18.80', '2.302', '1.35', '3.45', '1.65', '3.85');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (5, 'The9 Limited', 'NCTY', '61.00', '54.95', '385.71', '8.36', '5.90', '810.19', '5.27', '679.72', '11.51', '4.64');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (6, 'Future Fintech Group Inc\n', 'FTFT', '6.04', '5.71', '359.63', '47.05', '27.13', '4283.28', '2.00', '852.20', '3.14', '12.42');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (7, 'GameStop Corp.', 'GME', '267.71', '275.00', '18.45', '69.75', '54.49', '461.86', '1.62', '14.20', '26.06', '41.43');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (8, 'AMC Entertainment Holdings Inc', 'AMC', '11.34', '10.16', '4222.22', '377.80', '374.83', '140.74', '2.63', '55.49', '14.80', '152.18');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (9, 'Viveve Medical Inc', 'VIVE', '3.53', '3.45', '27.67', '7.84', '7.40', '119.40', '1.16', '2.06', '27.81', '1.99');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (10, 'Second Sight Medical Products Inc', 'EYES', '14.81', '10.27', '352.85', '23.21', '6.27', '30.17', '1.21', '150.29', '2.40', '21.48');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (11, 'Blink Charging Co', 'BLNK', '39.32', '39.24', '1640.64', '35.95', '35.69', '41.18', '1.64', '13.52', '37.89', '11.71');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (12, 'Cinedigm Corp\n', 'CIDM', '1.2500', '1.2200', '207.44', '165.95', '128.38', '545.71', '1.16', '2.49', '1.94', '20.1');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (13, 'Canaan Inc - ADR', 'CAN', '35.05', '32.40', '5420.00', '132.90', '6.27', '618.27', '1.55', '4.34', '2.22', '16.81');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (14, 'Marathon Digital Holdings Inc', 'MARA', '40.80', '37.77', '3820.75', '93.91', '83.75', '395.08', '1.62', '9.18', '10.97', '38.34');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (15, 'Riot Blockchain Inc', 'RIOT', '62.60', '58.10', '4240.05', '50.93', '65.57', '1.140', '1.22', '8.22', '12.54', '33.10');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (16, 'Tilray Inc', 'TLRY', '27.39', '26.28', '4740.10', '171.76', '150.59', '204.35', '1.54', '22.47', '14.92', '39.34');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (17, 'Caladrius Biosciences Inc', 'CLBS', '2.170', '2.06', '129.13', '59.51', '57.60', '30.60', '1.80', '471.22', '0.82', '5.83');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (18, 'Tesla Inc', 'TSLA', '692.99', '670.00', '665000.00', '959.85', '771.7', '445.69', '1103.61', '44.00', '5.70', '41.47');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (19, 'United States Steel Corporation', 'X', '24.24', '22.24', '6340.30', '220.40', '259.13', '417.17', '1.44', '30.50', '11.77', '18.78');
INSERT INTO `stock` (`id`, `nameofstock`, `tikr`, `current_trading_price`, `open`, `market_cap_in_mil`, `shares_outstanding_in_mil`, `public_float_in_mil`, `revenue_per_employee_in_mil`, `price_to_earnings_ratio`, `short_interest_in_mil`, `percent_of_float_shorted`, `average_volume_in_mil`) VALUES (20, 'FuelCell Energy Inc', 'FCEL', '17.98', '17.15', '5860.00', '322.41', '309.26', '224.28', '1.88', '26.31', '8.51', '49.19');

COMMIT;
