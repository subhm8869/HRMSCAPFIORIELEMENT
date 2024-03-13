using {HRMSService} from './hrmsSystem';

annotate HRMSService.Position with {
  level        @title: '{i18n>level}';
  positionName @title: '{i18n>positionName}';
};

annotate HRMSService.Position with {
  level        @readonly;
  positionName @readonly;
};
