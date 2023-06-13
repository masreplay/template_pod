import 'package:flutter/cupertino.dart';

extension ValueNotifierUpdated<T> on ValueNotifier<T> {
  void update(T newValue) => value = newValue;

  void updateNullable(T? newValue) {
    if (newValue != null) value = newValue;
  }
}
