using {
    db.Employee,
    db.Salary
} from '../db/schema';


service employeeService {

    entity employee as projection on Employee;
    entity salary   as projection on Salary;

}
