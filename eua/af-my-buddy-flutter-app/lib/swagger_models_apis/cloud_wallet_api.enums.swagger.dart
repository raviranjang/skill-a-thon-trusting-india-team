import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum KeyTypes {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('rsa')
  rsa('rsa'),
  @JsonValue('bbs')
  bbs('bbs'),
  @JsonValue('ecdsa')
  ecdsa('ecdsa');

  final String? value;

  const KeyTypes(this.value);
}

enum ApiDidMethod {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('jolo')
  jolo('jolo'),
  @JsonValue('elem')
  elem('elem'),
  @JsonValue('polygon')
  polygon('polygon'),
  @JsonValue('polygon:testnet')
  polygonTestnet('polygon:testnet');

  final String? value;

  const ApiDidMethod(this.value);
}
