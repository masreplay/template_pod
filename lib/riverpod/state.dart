import 'dart:developer';

import 'package:flutter/foundation.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

sealed class AsyncX<T> {
  const AsyncX();

  factory AsyncX.data(T data) = AsyncXData<T>;

  static Future<AsyncX<T>> idle<T>() => Future.value(const AsyncXIdle());
}

class AsyncXIdle<T> extends AsyncX<T> {
  const AsyncXIdle();
}

class AsyncXData<T> extends AsyncX<T> {
  final T data;
  const AsyncXData(this.data);
}

mixin AsyncXProvider<T> on AutoDisposeAsyncNotifier<AsyncX<T>> {
  Future<void> handle(Future<T> Function() callback) async {
    state = const AsyncValue.loading();
    try {
      final data = await callback();
      state = AsyncValue.data(AsyncX.data(data));
    } catch (error, stackTrace) {
      if (kDebugMode) log(toString(), error: error, stackTrace: stackTrace);
      state = AsyncValue.error(error, stackTrace);
    }
  }
}

extension AsyncValueExtension<T> on AsyncValue<AsyncX<T>> {
  void whenDataOrError({
    required Function(T data) data,
    Function(Object? error, StackTrace? stackTrace)? error,
  }) {
    whenOrNull(
      data: (value) {
        if (value is AsyncXData<T>) data(value.data);
      },
      error: error,
    );
  }
}
