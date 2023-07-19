DROP DATABASE IF EXISTS craiglist;

CREATE DATABASE craiglist;
/c craiglist
CREATE TABLE Regions (
  region_id INT PRIMARY KEY AUTO_INCREMENT,
  region_name VARCHAR(100) NOT NULL
);
CREATE TABLE Users (
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  email VARCHAR(100) NOT NULL,
  preferred_region_id INT,
  FOREIGN KEY (preferred_region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Posts (
  post_id INT PRIMARY KEY AUTO_INCREMENT,
  title VARCHAR(200) NOT NULL,
  text TEXT NOT NULL,
  user_id INT NOT NULL,
  location VARCHAR(100) NOT NULL,
  region_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES Users(user_id),
  FOREIGN KEY (region_id) REFERENCES Regions(region_id)
);

CREATE TABLE Categories (
  category_id INT PRIMARY KEY AUTO_INCREMENT,
  category_name VARCHAR(100) NOT NULL
);

CREATE TABLE Post_Category (
  post_id INT NOT NULL,
  category_id INT NOT NULL,
  PRIMARY KEY (post_id, category_id),
  FOREIGN KEY (post_id) REFERENCES Posts(post_id),
  FOREIGN KEY (category_id) REFERENCES Categories(category_id)
);
