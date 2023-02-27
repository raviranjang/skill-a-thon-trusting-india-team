import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum Acknowledgement$Message$AckStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('ACK')
  ack('ACK'),
  @JsonValue('NACK')
  nack('NACK');

  final String? value;

  const Acknowledgement$Message$AckStatus(this.value);
}
