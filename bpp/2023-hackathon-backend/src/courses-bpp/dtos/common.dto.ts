export enum ACTIONS {
  search,
  select,
  init,
  confirm,
  update,
  status,
  track,
  cancel,
  rating,
  support,
  on_search,
  on_select,
  on_init,
  on_confirm,
  on_update,
  on_status,
  on_track,
  on_cancel,
  on_rating,
  on_support,
}

export interface DomainInterface {
  domain: string;
}

export interface CountryInterface {
  name: string;
  code: string;
}

export interface CityInterface {
  name: string;
  code: string;
}

export interface FullAddressInterface {
  full: string;
}

export interface StructuredAddressInterface {
  door: string;
  name: string;
  building: string;
  street: string;
  locality: string;
  district: string;
  ward: string;
  city: string;
  state: string;
  country: string;
  area_code: string;
}

export interface AddressInterface {
  address: FullAddressInterface | StructuredAddressInterface;
}

export interface DurationInterface {
  duration: string;
}

export interface ScheduleInterface {
  frequency: DurationInterface;
  holidays: ReadonlyArray<Date>;
  times: ReadonlyArray<Date>;
}

export interface TimeInterface {
  label: string;
  timestamp: Date;
  duration: DurationInterface;
  range: {
    start: Date;
    end: Date;
  };
  days: string;
  schedule: ScheduleInterface;
}

export interface OrganizationInterface {
  name: string;
  cred: string;
}

export interface BillingInterface {
  name: string;
  organization: OrganizationInterface;
  address: AddressInterface;
  email: string;
  phone: string;
  time: TimeInterface;
  tax_number: string;
  created_at: Date;
}

export interface DocumentInterface {
  url: string;
  label: string;
}

export interface PriceInterface {
  currency: string;
  value: number;
  estimated_value: number;
  computed_value: number;
  listed_value: number;
  offered_value: number;
  minimum_value: number;
  maximum_value: number;
}

export interface QuotationInterface {
  price: PriceInterface;
  breakup: ReadonlyArray<{
    title: string;
    price: PriceInterface;
  }>;
  ttl: DurationInterface;
}

export interface ContextInterface {
  domain: DomainInterface;
  country: CountryInterface;
  city: CityInterface;
  action: ACTIONS;
  core_version: string;
  bap_id: string;
  bap_uri: string;
  bpp_id?: string;
  bpp_uri?: string;
  transaction_id: string;
  message_id: string;
  timestamp: Date;
  key?: string;
  ttl?: string;
}
