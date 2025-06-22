INSERT INTO Member VALUES
(1, 'Ali', 'Khan', '1995-06-10', 'Premium', 'ali.khan@gmail.com', '9171112222', 'Queens'),
(2, 'Sara', 'Lee', '1998-04-22', 'Basic', 'sara.lee@gmail.com', '3472223333', 'Brooklyn'),
(3, 'Jamal', 'Brown', '1990-11-03', 'Family', 'jamal.brown@gmail.com', '7183334444', 'Bronx'),
(4, 'Lina', 'Choi', '1997-08-18', 'Student', 'lina.choi@gmail.com', '9294445555', 'Manhattan'),
(5, 'David', 'Kim', '1992-01-25', 'Premium', 'david.kim@gmail.com', '6465556666', 'Staten Island'),
(6, 'Nora', 'Ali', '1996-06-14', 'Basic', 'nora.ali@gmail.com', '2126667777', 'Queens');

INSERT INTO Trainer VALUES
(101, 'Emily', 'Rogers', 'Cardio', '2019-05-12', 48000.00, 'emily@trainer.com', '2128889999', 'NASM'),
(102, 'Raj', 'Singh', 'Yoga', '2020-08-10', 47000.00, 'raj@trainer.com', '9171234567', 'RYT200'),
(103, 'Ahmed', 'Ali', 'Strength', '2018-03-01', 50000.00, 'ahmed@trainer.com', '3479876543', 'ACE Certified'),
(104, 'Maya', 'Chen', 'Pilates', '2021-02-14', 46000.00, 'maya@trainer.com', '6465432109', 'Pilates Pro'),
(105, 'Carlos', 'Diaz', 'HIIT', '2022-06-01', 49000.00, 'carlos@trainer.com', '9297654321', 'HIIT Expert'),
(106, 'Fatima', 'Yusuf', 'Functional Training', '2023-09-01', 47500.00, 'fatima@trainer.com', '3329991122', 'ISSA Certified');


INSERT INTO WorkoutClass VALUES
(211, 'Zumba Blast', 'Beginner', 'Fun dance cardio', 20, '09:00:00', '10:00:00', 'Monday'),
(212, 'Power Yoga', 'Intermediate', 'Strength + Stretch', 18, '10:00:00', '11:00:00', 'Tuesday'),
(213, 'HIIT 30', 'Advanced', 'High intensity 30-min', 15, '18:00:00', '18:30:00', 'Wednesday'),
(214, 'Pilates Core', 'Intermediate', 'Core strength focus', 16, '11:00:00', '12:00:00', 'Thursday'),
(215, 'Strength Circuit', 'Beginner', 'Weight training intro', 12, '08:00:00', '09:00:00', 'Friday'),
(216, 'Mobility Flow', 'Beginner', 'Stretch & movement', 10, '17:00:00', '18:00:00', 'Saturday');

INSERT INTO Equipment VALUES
(301, 'Treadmill A', 'Cardio', '2023-01-01', 'Excellent', 'Monthly check', 'NordicTrack', 'Cardio Room'),
(302, 'Row Machine', 'Cardio', '2022-08-15', 'Good', 'Bi-monthly', 'Concept2', 'Cardio Room'),
(303, 'Dumbbell Rack', 'Strength', '2021-06-20', 'Fair', 'Quarterly', 'Rogue', 'Main Gym'),
(304, 'Bench Press', 'Strength', '2020-04-10', 'Good', 'Monthly', 'IronMaster', 'Main Gym'),
(305, 'Yoga Mats', 'Flexibility', '2022-12-01', 'Excellent', 'Yearly', 'Manduka', 'Yoga Hall'),
(306, 'Spin Bike', 'Cardio', '2023-03-18', 'New', 'Monthly', 'Peloton', 'Cardio Room');

INSERT INTO WorkoutPlan VALUES
(411, 'Lean Fit', 'Weight Loss', 12, 'High', 'Cardio + Calorie burn', '2024-01-01', 'Start with 20 min HIIT'),
(412, 'Muscle Builder', 'Muscle Gain', 16, 'Intense', 'Strength training', '2024-02-01', 'Add protein diet'),
(413, 'Yoga Reset', 'Flexibility', 10, 'Medium', 'Yoga & breathing', '2024-03-01', 'Focus on morning flow'),
(414, 'Core Crush', 'Ab Sculpt', 8, 'High', 'HIIT core sets', '2024-04-01', 'Planks and crunches'),
(415, 'Starter Plan', 'Beginner Fitness', 6, 'Low', 'Walking + Bodyweight', '2024-05-01', 'Daily log required'),
(416, 'Balance + Mobility', 'Balance & Control', 14, 'Medium', 'Stretch & hold', '2024-06-01', 'Track weekly');


INSERT INTO Payment VALUES
(501, 1, 120.00, '2024-05-01', 'Card', 'Paid', 'R1001', 12),
(502, 2, 80.00, '2024-05-02', 'Cash', 'Paid', 'R1002', 6),
(503, 3, 150.00, '2024-05-03', 'Online', 'Paid', 'R1003', 12),
(504, 4, 60.00, '2024-05-04', 'Zelle', 'Pending', 'R1004', 3),
(505, 5, 100.00, '2024-05-05', 'Cash', 'Paid', 'R1005', 6),
(506, 6, 90.00, '2024-05-06', 'Card', 'Paid', 'R1006', 3);

INSERT INTO Facility VALUES
(601, 'Main Gym', 'Weights', '06:00:00', '22:00:00', 40, '1st Floor', 'Open'),
(602, 'Cardio Room', 'Cardio', '06:30:00', '21:30:00', 35, '2nd Floor', 'Open'),
(603, 'Yoga Hall', 'Stretching', '07:00:00', '20:00:00', 20, '3rd Floor', 'Open'),
(604, 'Pilates Studio', 'Pilates', '08:00:00', '18:00:00', 15, '4th Floor', 'Open'),
(605, 'Spin Zone', 'Cycling', '06:00:00', '21:00:00', 25, 'Basement', 'Open'),
(606, 'HIIT Lab', 'HIIT', '05:00:00', '23:00:00', 30, 'Annex', 'Open');

INSERT INTO Schedule VALUES
(711, 101, '09:00:00', '10:00:00', 'Monday', 'Room A', 'Available', 211),
(712, 102, '10:00:00', '11:00:00', 'Tuesday', 'Room B', 'Available', 212),
(713, 103, '18:00:00', '18:30:00', 'Wednesday', 'Room C', 'Booked', 213),
(714, 104, '11:00:00', '12:00:00', 'Thursday', 'Room D', 'Available', 214),
(715, 105, '08:00:00', '09:00:00', 'Friday', 'Room E', 'Booked', 215),
(716, 106, '17:00:00', '18:00:00', 'Saturday', 'Room F', 'Available', 216);




