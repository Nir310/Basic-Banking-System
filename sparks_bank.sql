

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";



CREATE TABLE `transaction` (
  `sno` int(3) NOT NULL,
  `sender` text NOT NULL,
  `receiver` text NOT NULL,
  `balance` int(8) NOT NULL,
  `datetime` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `transaction` (`sno`, `sender`, `receiver`, `balance`, `datetime`) VALUES
(1, 'Niranjan', 'Sahil', 1500, '2021-08-05 18:08:56'),
(2, 'Niranjan', 'Amogh', 900, '2021-08-09 18:08:56'),
(3, 'Amogh', 'Atharv', 1000, '2021-08-11 14:55:43'),
(4, 'Avdhut', 'Sahil', 1000, '2021-08-12 14:58:55'),
(5, 'Abhi', 'Hrushi', 5000, '2021-08-12 21:49:16'),
(6, 'Atharv', 'Niranjan', 5000, '2021-08-13 20:41:06'),
(7, 'Hrushi', 'Sahil', 5000, '2021-08-13 23:34:40'),
(8, 'Amogh', 'Sanket', 5000, '2021-08-14 10:42:24');



CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(30) NOT NULL,
  `balance` int(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;



INSERT INTO `users` (`id`, `name`, `email`, `balance`) VALUES
(1, 'Niranjan', 'niranjan01@gmail.com', 50000),
(2, 'Amogh', 'amogh05@gmail.com', 30000),
(3, 'Atharv', 'atharv26@gmail.com', 39900),
(4, 'Avdhut', 'avdhut14@gmail.com', 10000),
(5, 'Sahil', 'sahil03@gmail.com', 40000),
(6, 'Guru', 'gurunath04@gmail.com', 19990),
(7, 'Hrushi', 'hrushikesh24@gmail.com', 50009),
(8, 'Sanket', 'sanket17@gmail.com', 40100),
(9, 'ketan', 'ketan388@gmail.com', 30000),
(10, 'Abhi', 'abhi21@gmail.com', 50001);


ALTER TABLE `transaction`
  ADD PRIMARY KEY (`sno`);


ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);


ALTER TABLE `transaction`
  MODIFY `sno` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;


ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;