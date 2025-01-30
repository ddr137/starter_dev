import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/core.dart';
import 'package:hive_flutter/hive_flutter.dart';

// import 'app/app.dart';
// import 'app/core/core.dart';
// import 'app/injection.dart';

Future<void> bootstrap({
  required FutureOr<Widget> Function() builder,
}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Initialize Hive
      await Hive.initFlutter();

      // Initialize Riverpod Observer
      // Bloc.observer = CustomBlocObserver();

      final container = ProviderContainer(
        observers: [CustomRiverpodObserver()],
      );

      // Initialize Injection and Utils
      // await Future.wait([
      //   Injection.locateServices(environment: environment),
      // ]);

      runApp(
        UncontrolledProviderScope(
          container: container,
          child: await builder(),
        ),
      );
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
