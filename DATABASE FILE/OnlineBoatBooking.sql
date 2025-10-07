SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

CREATE TABLE `tms_admin` (
  `a_id` int NOT NULL,
  `a_name` varchar(200) NOT NULL,
  `a_email` varchar(200) NOT NULL,
  `a_pwd` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tms_feedback` (
  `f_id` int NOT NULL,
  `f_uname` varchar(200) NOT NULL,
  `f_content` longtext NOT NULL,
  `f_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tms_pwd_resets` (
  `r_id` int NOT NULL,
  `r_email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tms_syslogs` (
  `l_id` int NOT NULL,
  `u_id` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_ip` varbinary(200) NOT NULL,
  `u_city` varchar(200) NOT NULL,
  `u_country` varchar(200) NOT NULL,
  `u_logintime` timestamp(6) NOT NULL DEFAULT CURRENT_TIMESTAMP(6) ON UPDATE CURRENT_TIMESTAMP(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tms_user` (
  `u_id` int NOT NULL,
  `u_fname` varchar(200) NOT NULL,
  `u_lname` varchar(200) NOT NULL,
  `u_phone` varchar(200) NOT NULL,
  `u_addr` varchar(200) NOT NULL,
  `u_category` varchar(200) NOT NULL,
  `u_email` varchar(200) NOT NULL,
  `u_pwd` varchar(50) CHARACTER SET latin1 COLLATE latin1_swedish_ci NOT NULL,
  `u_boat_type` varchar(200) NOT NULL,
  `u_boat_regno` varchar(200) NOT NULL,
  `u_boat_bookdate` varchar(200) NOT NULL,
  `u_boat_book_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

CREATE TABLE `tms_vehicle` (
  `v_id` int NOT NULL,
  `v_name` varchar(200) NOT NULL,
  `v_reg_no` varchar(200) NOT NULL,
  `v_pass_no` varchar(200) NOT NULL,
  `v_driver` varchar(200) NOT NULL,
  `v_category` varchar(200) NOT NULL,
  `v_dpic` varchar(200) NOT NULL,
  `v_status` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

SET FOREIGN_KEY_CHECKS = 0;

TRUNCATE TABLE `tms_admin`;
TRUNCATE TABLE `tms_feedback`;
TRUNCATE TABLE `tms_pwd_resets`;
TRUNCATE TABLE `tms_syslogs`;
TRUNCATE TABLE `tms_user`;
TRUNCATE TABLE `tms_vehicle`;

ALTER TABLE `tms_admin` AUTO_INCREMENT = 1;
ALTER TABLE `tms_feedback` AUTO_INCREMENT = 1;
ALTER TABLE `tms_pwd_resets` AUTO_INCREMENT = 1;
ALTER TABLE `tms_syslogs` AUTO_INCREMENT = 1;
ALTER TABLE `tms_user` AUTO_INCREMENT = 1;
ALTER TABLE `tms_vehicle` AUTO_INCREMENT = 1;

SET FOREIGN_KEY_CHECKS = 1;

INSERT INTO `tms_admin` (`a_name`, `a_email`, `a_pwd`) VALUES
('Admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500');

INSERT INTO `tms_user` 
(`u_fname`, `u_lname`, `u_phone`, `u_addr`, `u_category`, `u_email`, `u_pwd`, `u_boat_type`, `u_boat_regno`, `u_boat_bookdate`, `u_boat_book_status`) 
VALUES
('Saro', 'Rahman', '01600000001', 'Mumbai, India', 'User', 'saro@gmail.com', '00000000', 'Speedboat', 'BT1001', '2025-10-01', 'Booked'),
('Akash', 'Patel', '01600000002', 'Delhi, India', 'User', 'akash@gmail.com', '123', 'Fishing Boat', 'FB3010', '', 'Available'),
('Kiran', 'Sakthi', '01600000003', 'Bengaluru, India', 'User', 'kiran@gmail.com', '00000000', 'Speedboat', 'BT2002', '2025-09-30', 'Booked'),
('Nishanth', 'Kumar', '01600000004', 'Chennai, India', 'User', 'nishanth@gmail.com', '11111111', 'Yacht', 'YT2024', '2025-10-05', 'Available');

INSERT INTO `tms_vehicle` (`v_name`, `v_reg_no`, `v_pass_no`, `v_driver`, `v_category`, `v_dpic`, `v_status`) VALUES
('Sea Explorer', 'BT1001', '6', 'Captain Nemo', 'Speedboat', 'sea_explorer.jpg', 'Booked'),
('Fisher King', 'FB3010', '4', 'Fisherman Joe', 'Fishing Boat', 'fisher_king.jpg', 'Available'),
('Wave Rider', 'BT2002', '8', 'Captain Aqua', 'Speedboat', 'wave_rider.jpg', 'Booked'),
('Yacht Supreme', 'YT2024', '10', 'Captain Nish', 'Yacht', 'yacht_supreme.jpg', 'Available');

INSERT INTO `tms_feedback` (`f_uname`, `f_content`, `f_status`) VALUES
('Saro Rahman', 'Great experience, fast and safe!', 'Published'),
('Akash Patel', 'Fishing boat was okay, needs improvement.', 'Pending'),
('Kiran Sakthi', 'Smooth ride, highly recommended.', 'Published'),
('Nishanth Kumar', 'Yacht experience was luxurious and comfortable.', 'Published');

INSERT INTO `tms_pwd_resets` (`r_email`) VALUES
('saro@gmail.com'),
('akash@gmail.com'),
('kiran@gmail.com'),
('nishanth@gmail.com');

INSERT INTO `tms_syslogs` (`u_id`, `u_email`, `u_ip`, `u_city`, `u_country`) VALUES
(1, 'saro@gmail.com', INET6_ATON('192.168.1.10'), 'Mumbai', 'India'),
(2, 'akash@gmail.com', INET6_ATON('192.168.1.20'), 'Delhi', 'India'),
(3, 'kiran@gmail.com', INET6_ATON('192.168.1.30'), 'Bengaluru', 'India'),
(4, 'nishanth@gmail.com', INET6_ATON('192.168.1.40'), 'Chennai', 'India');

ALTER TABLE `tms_admin`
  ADD PRIMARY KEY (`a_id`);

ALTER TABLE `tms_feedback`
  ADD PRIMARY KEY (`f_id`);

ALTER TABLE `tms_pwd_resets`
  ADD PRIMARY KEY (`r_id`);

ALTER TABLE `tms_syslogs`
  ADD PRIMARY KEY (`l_id`);

ALTER TABLE `tms_user`
  ADD PRIMARY KEY (`u_id`);

ALTER TABLE `tms_vehicle`
  ADD PRIMARY KEY (`v_id`);

ALTER TABLE `tms_admin`
  MODIFY `a_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

ALTER TABLE `tms_feedback`
  MODIFY `f_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tms_pwd_resets`
  MODIFY `r_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tms_syslogs`
  MODIFY `l_id` int NOT NULL AUTO_INCREMENT;

ALTER TABLE `tms_user`
  MODIFY `u_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

ALTER TABLE `tms_vehicle`
  MODIFY `v_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

COMMIT;
