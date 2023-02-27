import 'dart:async';
import 'dart:convert';

import 'package:chopper/chopper.dart';

class JsonToTypeConverter extends JsonConverter {
  final Map<Type, Function> typeToJsonFactoryMap;

  JsonToTypeConverter(this.typeToJsonFactoryMap);

  @override
  FutureOr<Response<BodyType>> convertResponse<BodyType, InnerType>(
      Response response) async {
    if (response.bodyString.isEmpty) {
      return Response(response.base, null, error: response.error);
    } else {
      final Response dynamicResponse = await super.convertResponse(response);
      if (typeToJsonFactoryMap[InnerType] == null) {
        return Response(response.base, null, error: response.error);
      } else {
        return response.copyWith(
          body: fromJsonData<BodyType, InnerType>(
            dynamicResponse.bodyString,
            typeToJsonFactoryMap[InnerType]!,
          ),
        );
      }
    }
  }

  T fromJsonData<T, InnerType>(String jsonData, Function jsonParser) {
    var jsonMap = json.decode(jsonData);
    if (jsonMap is List) {
      return jsonMap
          .map((item) => jsonParser(item as Map<String, dynamic>) as InnerType)
          .toList() as T;
    }
    return jsonParser(jsonMap);
  }
}
