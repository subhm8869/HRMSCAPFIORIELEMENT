using {HRMSService} from './hrmsSystem';

annotate HRMSService.Employee with {
  firstName        @title: '{i18n>firstName}';
  lastName         @title: '{i18n>lastName}';
  dateOfBirth      @title: '{i18n>dateOfBirth}';
  gender           @title: '{i18n>gender}';
  contactNumber    @title: '{i18n>contactNumber}';
  email            @title: '{i18n>email}';
  UAN              @title: '{i18n>UAN}';
  AAdhar           @title: '{i18n>AAdhar}';
  PAN              @title: '{i18n>PAN}';
  emergencyContact @title: '{i18n>emergencyContact}';
};
