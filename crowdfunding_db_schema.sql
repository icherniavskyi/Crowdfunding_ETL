CREATE TABLE contacts (
    contact_id INT PRIMARY KEY,
    first_name CHAR(25),
    last_name CHAR(25),
    email VARCHAR(50)
);

CREATE TABLE category (
    category_id VARCHAR(5) PRIMARY KEY,
    category VARCHAR(25)
);

CREATE TABLE subcategory (
    subcategory_id VARCHAR(10) PRIMARY KEY,
    subcategory VARCHAR(50)
);

CREATE TABLE campaign (
    cf_id INT PRIMARY KEY,
    contact_id INT,
    company_name VARCHAR(50),
    description VARCHAR(250),
    goal FLOAT,
    pledged FLOAT,
    outcome CHAR(10),
    backers_count INT,
    country CHAR(5),
    currency CHAR(5),
    launched_date DATE,
    end_date DATE,
    category_id VARCHAR(5),
    subcategory_id VARCHAR(10),
    FOREIGN KEY (contact_id) REFERENCES contacts(contact_id),
    FOREIGN KEY (category_id) REFERENCES category(category_id),
    FOREIGN KEY (subcategory_id) REFERENCES subcategory(subcategory_id)
);