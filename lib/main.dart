import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:starter/data/shared_preferences/provider.dart';

import 'app.dart';
import 'data/mock/mock.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final sharedPreferences = await SharedPreferences.getInstance();

  runApp(
    ProviderScope(
      overrides: [
        sharedPreferencesProvider.overrideWith((ref) => sharedPreferences),
        // TODO: remove this line test purpose only
        ...mockOverrides,
      ],
      child: const MainApp(),
    ),
  );
}
