create table Airport(
  IATACode INTEGER PRIMARY KEY
);
create table Flight_Leg(
  flightLeg_id INTEGER PRIMARY KEY
);
create table Flight(
  flightNum INTEGER PRIMARY KEY,
  flightLeg_id INTEGER,
  foreign key(flightLeg_id) REFERENCES Flight_Leg(flightLeg_id)
);
create table AircraftType(
  type_id INTEGER PRIMARY KEY
);
create table DailyFlightLeg_Combination(
  DFLeg_id INTEGER PRIMARY KEY
);
create table DailyFlightLeg(
  DFLeg_id INTEGER,
  flightLeg_id INTEGER,
  foreign key(DFLeg_id) REFERENCES DailyFlightLeg_Combination(DFLeg_id),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
create table CanLand(
  IATACode INTEGER,
  type_id INTEGER,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(type_id) REFERENCES AircraftType(type_id)
);
create table startsAt(
  flightLeg_id INTEGER,
  IATACode INTEGER,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
create table endsAt(
  flightLeg_id INTEGER,
  IATACode INTEGER,
  foreign key(IATACode) REFERENCES Airport(IATACode),
  foreign key(flightLeg_id) REFERENCES FlightLeg(flightLeg_id)
);
