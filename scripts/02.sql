
-- Create student TABLE
CREATE TABLE student (
	student_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	surname VARCHAR(50),
	bootcamp_id INT,
	country VARCHAR(50),
	address VARCHAR(100),
	city VARCHAR(100),
	email VARCHAR(50),
	phone VARCHAR(50)
);

ALTER TABLE student
ADD CONSTRAINT unique_email UNIQUE (email);

-- Create stu_bootcamp TABLE
CREATE TABLE stu_bootcamp (
	stu_bootcamp_id SERIAL PRIMARY KEY,
	student_id INT,
	bootcamp_id INT,
	FOREIGN KEY (student_id) REFERENCES student(student_id),
	FOREIGN KEY (bootcamp_id) REFERENCES bootcamp(bootcamp_id)
);

-- Create teacher TABLE
CREATE TABLE teacher (
	teacher_id SERIAL PRIMARY KEY,
	name VARCHAR(50),
	surname VARCHAR(50),
	phone VARCHAR(50),
	email VARCHAR(50)
);

-- Create module TABLE
CREATE TABLE module(
	module_id SERIAL PRIMARY KEY,
	bootcamp_id INT,
	teacher_id INT,
	FOREIGN KEY (bootcamp_id) REFERENCES bootcamp(bootcamp_id)
);

-- Create tea_module TABLE
CREATE TABLE tea_module (
	tea_module_id SERIAL PRIMARY KEY,
	module_id INT,
	teacher_id INT,
	FOREIGN KEY(module_id) REFERENCES MODULE(module_id),
	FOREIGN KEY(teacher_id) REFERENCES Teacher(teacher_id)
);