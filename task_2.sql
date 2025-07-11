-- Use the alx_book_store database
USE alx_book_store;
CREATE TABLE Authors(
    author_id AUTO_INCREMENT  PRIMARY KEY,
     author_name VARCHAR(215) NOT NULL);
CREATE TABLE IF NOT EXISTS books (
    book_id AUTO_INCREMENT PRIMARY KEY, 
    title VARCHAR(130) NOT NULL,
     author_id NOT NULL,
     price DOUBLE NOT NULL,
      publication_date DATE 
      FOREIGN KEY(author_id) REFERENCES Authors(author_id));
CREATE TABLE IF NOT EXISTS customers (
    customer_id AUTO_INCREMENT PRIMARY KEY,
     customer_name VARCHAR(215) NOT NULL, 
     email VARCHAR(215) UNIQUE NOT NULL,
      address TEXT);
CREATE TABLE IF NOT EXISTS orders (
    order_id INT AUTO_INCREMENT PRIMARY KEY, 
    customer_id INT NOT NULL,
    order_date DATE NOT NULL, 
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id));
CREATE TABLE IF NOT EXISTS Order_Details (
    orderdetailid INT AUTO_INCREMENT PRIMARY KEY, 
    order_id INT NOT NULL, 
    book_id INT NOT NULL, 
    quantity DOUBLE NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (book_id) REFERENCES Books(book_id));