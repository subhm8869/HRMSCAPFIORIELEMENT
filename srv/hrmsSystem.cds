using hrms.system as hrms from '../db/data-model';

@path: '/HRMSSrv'
service HRMSService {
    entity Employee   as projection on hrms.Employee;
    entity Department as projection on hrms.Department;
    entity Position   as projection on hrms.Position;
}
