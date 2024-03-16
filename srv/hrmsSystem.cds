using hrms.system as hrms from '../db/data-model';
using {hrms.views as views} from '../db/EmployeeViews';

@path: '/HRMSSrv'
service HRMSService {
    @cds.redirection.target
    entity Employee   as projection on hrms.Employee;
    entity Department as projection on hrms.Department;
    entity Position   as projection on hrms.Position;

    entity EmployeeCountByGender as projection on views.EmployeeCountByGender;
}
