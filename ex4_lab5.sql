create table SalesPerson(
  sp_id INTEGER PRIMARY KEY
);
create table Customer( 
  customer_id INTEGER PRIMARY KEY
);
create table Mechanic( 
  mechanic_id INTEGER PRIMARY KEY
);

create table Car(
  car_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  sp_id INTEGER,
  foreign key(sp_id) REFERENCES SalesPerson(sp_id),
  foreign key(customer_id) REFERENCES Customer(customer_id)
);

create table Invoice(
  invoice_id INTEGER PRIMARY KEY,
  car_id INTEGER,
  invoiceDate date,
  foreign key(car_id) REFERENCES Car(car_id)
);
create table ServiceTicket(
  service_id INTEGER PRIMARY KEY,
  customer_id INTEGER,
  carSerialNumber VARCHAR(10),
  serviceDate date,
  description VARCHAR(300),
  foreign key (customer_id) REFERENCES Customer(customer_id)
);
create table mechanicService(
  mechanic_id INTEGER,
  service_id INTEGER,
  foreign key (mechanic_id) REFERENCES Mechanic(mechanic_id),
  foreign key(service_id) references ServiceTicket(service_id)
 );
create table CarDealerShip(
  carSerialNumber INTEGER,
  service_id INTEGER,
  foreign key(service_id) references ServiceTicket(service_id)
);
