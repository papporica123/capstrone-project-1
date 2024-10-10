CREATE TABLE IF NOT EXISTS SalesmanN(
Salesman_id TEXT PRIMARY KEY, 
name TEXT,
city TEXT,
Comission RELEASE
);

INSERT INTO Salesman (Salesman_id, name, city, Comission) VALUES
  ('5001', 'James Hoog', 'New York', 0.15),
  ('5002', 'Nail Knite', 'Paris', 0.13),
  ('5005', 'Pit Alex', 'London', 0.11),
  ('5006', 'Mc Lyon', 'Paris', 0.14),
  ('5007', 'Paul Adam', 'Rome', 0.13),
  ('5003', 'Lauson Hen', 'San Jose', 0.12);

  CREATE TABLE IF NOT EXISTS Customer (
  customer_id TEXT,
  cust_name TEXT PRIMARY KEY,
  city TEXT,
  grade INTEGER,
  Salesman_id TEXT,
  FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);
);

INSERT INTO Customer (customer_id, cust_name, city, grade, salesman_id) VALUES
  ('3004', 'fabian johnson', 'paris', 300, '5006'),
  ('3009', 'geoff cameron', 'berlin', 100, '5003'),
  ('3003', 'jozy altidor', 'moscow', 200, '5007'),
  ('3001', 'brad guzan', 'london', NULL, '5005');
 
 CREATE TABLE IF NOT EXISTS Orders (
  ord_no TEXT PRIMARY KEY,
  purch_amt REAL,
  ord_date TEXT,
  ord_date TEXT,
  customer_id TEXT,
  Salesman_id TEXT,
  FOREIGN KEY (customer_id) REFERENCES Customer(customer_id),
  FOREIGN KEY (Salesman_id) REFERENCES Salesman(Salesman_id)
);

INSERT INTO Orders (ord_no, purch_amt, ord_date, customer_id, salesman_id) VALUES
  ('70002', 65.26, '2012-10-05', '3002', '5003'),
  ('70004', 110.5, '2012-08-17', '3009', '5007'),
  ('70007', 948.5, '2012-09-10', '3005', '5005'),
  ('70005', 2400.6, '2012-07-27', '3007', '5006');

 SELECT customer.cust_name, salesman.name, salesman.city
 FROM Customer 
JOIN Salesman ON Customer.city = salesman.city;

SELECT Customer.cust_name, Salesman.name
FROM Customer
JOIN Salesman ON Customer.Salesman_id = Salesman.Salesman_id;

