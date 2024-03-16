using {hrms.system as hrms} from './data-model';

namespace hrms.views;


define view ![EmployeeCountByGender] as
    select from hrms.Employee {
        gender    as Gender,
        count(ID) as EmployeeCount : Int32
    }
    group by
        gender;
