create table C_Group(
  group_id INTEGER PRIMARY KEY
);
create table Company(
  company_id INTEGER PRIMARY KEY
);
create table Item(
   item_id INTEGER PRIMARY KEY
);
create table plant(
  plant_id INTEGER PRIMARY KEY
);
create table production(
  itemId INTEGER,
  plantId INTEGER,
  foreign key(item_id) references Item(item_id),
  foreign key(plant_id) references plant(plant_id)
);
create table companyPlants(
  company_id INTEGER,
  plant_id INTEGER,
  foreign key(company_id) references Company(company_id),
  foreign key(plant_id) references plant(plant_id)
 );
 create table groupCompanies(
   company_id INTEGER,
   group_id INTEGER,
   foreign key(company_id) references Company(company_id),
   foreign key(group_id) references C_Group(group_id)
 );
create table Structure(
   company1 INTEGER,
   company2 INTEGER,
   foreign key(company1) references Company(company_id),
   foreign key(company2) references Company(company_id)
);
