import 'dart:async';
import 'dart:developer';

import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:hive_flutter/hive_flutter.dart';

// import 'app/app.dart';
// import 'app/core/core.dart';
// import 'app/injection.dart';

Future<void> bootstrap(
    {required FutureOr<Widget> Function() builder,}) async {
  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };
  await runZonedGuarded<Future<void>>(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // Initialize Hive
      // await Hive.initFlutter();

      // Initialize Bloc Observer
      // Bloc.observer = CustomBlocObserver();

      // Initialize Injection and Utils
      // await Future.wait([
      //   Injection.locateServices(environment: environment),
      // ]);

      runApp(await builder());
    },
    (error, stackTrace) {
      log(error.toString(), stackTrace: stackTrace);
    },
  );
}
