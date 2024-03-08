namespace hrms.system;

using {cuid} from '@sap/cds/common';

entity Employee : cuid {
  firstName        : String(20);
  lastName         : String(20);
  dateOfBirth      : Date;
  gender           : String enum {
    Male;
    Female;
    Others
  };
  contactNumber    : String;
  email            : String;
  UAN              : String;
  AAdhar           : String;
  PAN              : String;
  emergencyContact : String;
  address          : Composition of many Address
                       on address.employee = $self;
  department       : Association to Department;
  position         : Association to Position;
  leaveRequest     : Composition of many LeaveRequest
                       on leaveRequest.employee = $self;
  attendance       : Composition of many Attendance
                       on attendance.employee = $self;
  payroll          : Composition of many Payroll
                       on payroll.employee = $self;
  bankDetail       : Composition of many Bankdetails
                       on bankDetail.employee = $self;
  resignDetails    : Composition of Resignation;
  document         : Composition of many Document
                       on document.employee = $self;
}

entity Address : cuid {
  Street   : String;
  City     : String;
  Pincode  : Integer;
  Address  : String;
  employee : Association to Employee;
}

entity Department : cuid {
  department  : String;
  description : String;
}

entity Position : cuid {
  level        : String;
  positionName : String;

}

entity LeaveRequest : cuid {
  leaveType : String;
  startDate : Date;
  endDate   : Date;
  status    : String;
  employee  : Association to Employee;
}

entity Attendance : cuid {
  date         : Date;
  clockInTime  : Time;
  clockOutTime : Time;
  employee     : Association to Employee;
}

entity Payroll : cuid {
  month       : String;
  year        : String;
  basicSalary : Decimal(10, 2);
  deductions  : Decimal(10, 2);
  netSalary   : Decimal(10, 2);
  employee    : Association to Employee;
}


entity Bankdetails : cuid {
  AccountNumber : Integer64;
  IIFSCCode     : String;
  BranchName    : String;
  BankName      : String;
  employee      : Association to Employee;
}

entity Resignation : cuid {
  resignDate      : Date;
  noticePeriod    : Integer;
  lastWorkingDate : Date;
}

entity Document : cuid {
  documentName : String;
  documentID   : String;
  employee     : Association to Employee;
}
