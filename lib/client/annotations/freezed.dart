import 'package:freezed_annotation/freezed_annotation.dart';

const freezedResponse = Freezed(
  toJson: false,
  fromJson: true,
);

const freezedRequest = Freezed(
  toJson: true,
  fromJson: false,
);

const freezedUnionRequest = Freezed(
  toJson: true,
  fromJson: false,
);

const freezedUnionResponse = Freezed(
  toJson: true,
  fromJson: false,
  
);
