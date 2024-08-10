namespace db;

entity Employee {
    key ID         : UUID;
        firstName  : String(100);
        lastName   : String(100);
        age        : Integer;
        phone      : String(20);
        hiringDate : Date;
        salary:Association to Salary;
}
entity Salary  {
        Key Value : Decimal(10, 3);
            unit  : String(3);
        }
