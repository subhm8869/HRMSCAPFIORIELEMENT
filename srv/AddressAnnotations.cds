using {HRMSService} from './hrmsSystem';

annotate HRMSService.Address with {
  Street  @title: '{i18n>Street}';
  City    @title: '{i18n>City}';
  Pincode @title: '{i18n>Pincode}';
  Address @title: '{i18n>Address}';
};
