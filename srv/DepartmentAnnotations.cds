using {HRMSService} from './hrmsSystem';

annotate HRMSService.Department with {
  department  @title: '{i18n>department}';
  description @title: '{i18n>description}';
};

annotate HRMSService.Department with {
  department  @readonly;
  description @readonly;
};
