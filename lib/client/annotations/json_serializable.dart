import 'package:freezed_annotation/freezed_annotation.dart';

const jsonSerializableResponse = JsonSerializable(
  fieldRename: FieldRename.snake,
  createFactory: true,
  createToJson: false,
  explicitToJson: false,
);

const jsonSerializableRequest = JsonSerializable(
  fieldRename: FieldRename.snake,
  createFactory: false,
  createToJson: true,
  explicitToJson: true,
);
