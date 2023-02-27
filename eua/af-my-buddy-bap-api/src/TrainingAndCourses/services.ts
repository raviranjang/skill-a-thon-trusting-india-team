import axios from "axios";
import {
  buildSearchRequest,
  buildOnSearchMergedResponse,
  buildSearchResponse,
  buildInitRequest,
  buildInitResponse,
  buildConfirmRequest,
  buildConfirmResponse,
  buildStatusRequest,
  buildStatusResponse,
  buildSelectRequest,
  buildSelectResponse,
} from "./schema-build-helper";
import * as searchTrainingResponse from "./mocks/searchTrainingResponse.json";
import * as initTrainingResponse from "./mocks/initTrainingResponse.json";
import * as confirmTrainingResponse from "./mocks/confirmTrainingResponse.json";
import * as selectTrainingResponse from "./mocks/selectTrainingResponse.json";

const gatewayUrl = process.env.GATEWAY_URL;
const trainingNetwork = process.env.TRAINING_NETWORK;
const backendApiUrl = process.env.BACKEND_API_BASE_URL;

export const searchTrainingService = async (body: any): Promise<any> => {
  try {
    const { payload, optional } = buildSearchRequest(body);
    console.log(JSON.stringify(payload));

    let searchResponse: any = {};
    if (trainingNetwork !== "local") {
      const headers = { "Content-Type": "application/JSON" };
      const searchRes = await axios.post(`${gatewayUrl}/search`, payload, {
        headers,
      });
      const itemRes = await Promise.all([
        optional?.user?.email
          ? axios.get(
              `${backendApiUrl}/user/item/saved/${optional.user.email}`,
              { headers }
            )
          : null,
        optional?.user?.email
          ? axios.get(
              `${backendApiUrl}/user/item/applied/${optional.user.email}`,
              { headers }
            )
          : null,
      ])
        .then((res) => res)
        .catch((err) => null);
      const res = { searchRes, itemRes };
      searchResponse = buildOnSearchMergedResponse(res, body);
    } else {
      searchResponse = buildSearchResponse(
        { data: searchTrainingResponse },
        body
      );
    }

    return searchResponse;
  } catch (error: any) {
    console.log(error);
    return { error: error, errorOccured: true };
  }
};

export const initTrainingService = async (body: any): Promise<any> => {
  try {
    const initRequest = buildInitRequest(body);
    console.log(JSON.stringify(initRequest.payload));

    let initResponse: any = {};
    if (trainingNetwork !== "local") {
      const headers = { "Content-Type": "application/JSON" };
      const res = await axios.post(`${gatewayUrl}/init`, initRequest.payload, {
        headers,
      });
      initResponse = buildInitResponse(res, body);
    } else {
      initResponse = buildInitResponse({ data: initTrainingResponse }, body);
    }

    return initResponse;
  } catch (error: any) {
    console.log(JSON.stringify(error?.response?.data));
    return { error: error, errorOccured: true };
  }
};

export const confirmTrainingService = async (body: any): Promise<any> => {
  try {
    const confirmRequest = buildConfirmRequest(body);
    console.log(JSON.stringify(confirmRequest.payload));

    let confirmResponse: any = {};
    if (trainingNetwork !== "local") {
      const headers = { "Content-Type": "application/JSON" };
      const res = await axios.post(
        `${gatewayUrl}/confirm`,
        confirmRequest.payload,
        { headers }
      );
      confirmResponse = buildConfirmResponse(res, body);
    } else {
      confirmResponse = buildConfirmResponse(
        { data: confirmTrainingResponse },
        body
      );
    }

    return confirmResponse;
  } catch (error) {
    console.log(error);
    return { error: error, errorOccured: true };
  }
};

export const statusTrainingService = async (body: any): Promise<any> => {
  try {
    const statusRequest = buildStatusRequest(body);
    console.log(JSON.stringify(statusRequest.payload));

    let statusResponse: any = {};
    if (trainingNetwork !== "local") {
      const headers = { "Content-Type": "application/JSON" };
      const res = await axios.post(
        `${gatewayUrl}/search`,
        statusRequest.payload,
        { headers }
      );
      statusResponse = buildStatusResponse(res?.data, body);
    } else {
      statusResponse = buildStatusResponse(selectTrainingResponse, body);
    }

    return { data: statusResponse };
  } catch (error) {
    return { error: error, errorOccured: true };
  }
};

export const selectTrainingService = async (body: any): Promise<any> => {
  try {
    const selectRequest = buildSelectRequest(body);
    console.log(JSON.stringify(selectRequest.payload));

    let selectResponse: any = {};
    if (trainingNetwork !== "local") {
      const headers = { "Content-Type": "application/JSON" };
      const res = await axios.post(
        `${gatewayUrl}/select`,
        selectRequest.payload,
        { headers }
      );
      selectResponse = buildSelectResponse(res, body);
    } else {
      selectResponse = buildSelectResponse(
        { data: selectTrainingResponse },
        body
      );
    }

    return selectResponse;
  } catch (error: any) {
    console.log(error);
    return { error: error, errorOccured: true };
  }
};
