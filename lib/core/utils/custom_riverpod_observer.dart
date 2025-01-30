import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';

class CustomRiverpodObserver extends ProviderObserver {
  final Logger _logger = Logger(
    printer: PrettyPrinter(
      methodCount: 0,
      errorMethodCount: 5,
      colors: true,
      printEmojis: true,
    ),
  );

  @override
  void didAddProvider(
    ProviderBase<Object?> provider,
    Object? value,
    ProviderContainer container,
  ) {
    _logger.i(
      'Provider added: ${provider.name ?? provider.runtimeType}',
      error: 'Value: $value',
    );
  }

  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    _logger.d(
      'Provider updated: ${provider.name ?? provider.runtimeType}',
      error: 'Previous: $previousValue -> New: $newValue',
    );
  }

  @override
  void didDisposeProvider(
    ProviderBase<Object?> provider,
    ProviderContainer container,
  ) {
    _logger.w(
      'Provider disposed: ${provider.name ?? provider.runtimeType}',
    );
  }
}