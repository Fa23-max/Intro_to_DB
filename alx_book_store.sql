CREATE DATABASE IF NOT EXISTS alx_book_store;
CREATE TABLE authors (
  author_id int(11) NOT NULL,
  author_name varchar(215) NOT NULL,
  PRIMARY KEY (author_id)
);
CREATE TABLE books (
  book_id int(11) NOT NULL,
  title varchar(130) NOT NULL,
  author_id int(11) NOT NULL,
  price double NOT NULL,
  publication_date date NOT NULL,
  PRIMARY KEY (book_id),
  FOREIGN KEY (author_id) REFERENCES authors(author_id)
);
CREATE TABLE customers (
  customer_id int(11) NOT NULL,
  customer_name varchar(215) NOT NULL,
  email varchar(215) NOT NULL,
  address text NOT NULL,
  PRIMARY KEY (customer_id)
);
CREATE TABLE orders (
  order_id int(11) NOT NULL,
  customer_id int(11) NOT NULL,
  order_date date NOT NULL,
  PRIMARY KEY (order_id),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_details (
  orderdetailid int(11) NOT NULL,
  order_id int(11) NOT NULL,
  book_id int(11) NOT NULL,
  quantity double NOT NULL,
  PRIMARY KEY (orderdetailid),
  FOREIGN KEY (order_id) REFERENCES orders(order_id),
  FOREIGN KEY (book_id) REFERENCES books(book_id)
);
