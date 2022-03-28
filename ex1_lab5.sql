create table addresses(
  address_id INTEGER PRIMARY KEY,
  city VARCHAR(100),
  district VARCHAR(100),
  street VARCHAR(100),
  house_Num VARCHAR(50) 
 );
  
create table Customer(
  Discount INTEGER,
  credit_limit decimal(9,3),
  Balance decimal(9,3),
  customer_id INTEGER PRIMARY KEY,
  address_id INTEGER,
  foreign key(address_id) REFERENCES addresses(address_id)
);
create table Item(
  item_id INTEGER PRIMARY KEY,
  descr VARCHAR(300)
);
create table Manufacturer(
  manufacturer_id INTEGER PRIMARY KEY,
  phone_number INTEGER
);
create table Order_details(
   order_id INTEGER PRIMARY KEY,
   order_Date DATE,
   city VARCHAR(100),
   customer_id INTEGER,
   foreign key(customer_id) REFERENCES Customer(customer_id),
   address_id INTEGER,
   foreign key(address_id) REFERENCES addresses(address_id)
 );
create table inclusion(
   order_id INTEGER,
   item_id INTEGER,
   foreign key(order_id) REFERENCES Order_details(order_id),
   foreign key (item_id) REFERENCES Item(item_id)
);
create table production(
  manufacturer_id INTEGER,
  item_id INTEGER,
  foreign key (manufacturer_id) REFERENCES Manufacturer(manufacturer_id),
  foreign key (item_id) REFERENCES Item(item_id)
);
