import 'package:flutter_riverpod/flutter_riverpod.dart';

extension CombineProvidersExtension on List<ProviderBase<Object>> {
  Provider<T> combine<T>(T Function(List<Object>) combiner) {
    return Provider<T>((ref) {
      final values = map((provider) => ref.watch(provider)).toList();
      return combiner(values);
    });
  }
}