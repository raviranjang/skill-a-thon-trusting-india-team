export interface JobRequestDto {
  context: JobContextDTO;
  message: {
    intent: {
      item: {
        descriptor: {
          name: string;
        };
      };
    };
  };
}

export interface JobContextDTO {
  domain: string;
  country: string;
  city: string;
  action: string;
  core_version: string;
  bap_id: string;
  bap_uri: string;
  bpp_id: string;
  bpp_uri: string;
  transaction_id: string;
  message_id: string;
  timestamp: number;
}

export interface JobContextBPPDTO {
  domain: string;
  country: string;
  city: string;
  action: string;
  core_version: string;
  bap_id: string;
  bap_uri: string;
  bpp_id: string;
  bpp_uri: string;
  transaction_id: string;
  message_id: string;
  timestamp: string;
}

export interface JobResponseFulFillmentDTO {
  id: string;
  start: {
    time: {
      timestamp: string;
    };
  };
}

export interface JobsResponseCategoriesDTO {
  id: string;
  descriptor: {
    code: string;
  };
}

export interface JobsResponseLocationsDTO {
  id: string;
  city: {
    name: string;
  };
}

export interface JobsResponseItemsDTO {
  id: string;
  descriptor: {
    name: string;
  };
  price: {
    currency: string;
    listed_value: string;
    offered_value: string;
    minimum_value: string;
    maximum_value: string;
  };
  category_ids: [string];
  fulfillment_ids: [string];
  location_ids: [string];
  time: {
    range: {
      start: string;
      end: string;
    };
  };
}

export interface JobProviderDto {
  descriptor: {
    name: string;
  };
  categories: [JobsResponseCategoriesDTO];
  locations: [JobsResponseLocationsDTO];
  items: [JobsResponseItemsDTO];
  catalog?: object;
  fulfillments: [JobResponseFulFillmentDTO];
}

export interface JobResponse {
  message: {
    catalog: {
      descriptor: {
        name: string;
      };
      fulfillments: [JobResponseFulFillmentDTO];
      offers: [];
      providers: [JobProviderDto];
    };
  };
}
