import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AsyncValueWidget<T> extends StatelessWidget {
  final AsyncValue<T> value;
  final Widget Function(T) data;
  final Widget Function(Object, StackTrace)? error;
  final Widget? loading;

  const AsyncValueWidget({super.key, 
    required this.value,
    required this.data,
    this.error,
    this.loading,
  });

  @override
  Widget build(BuildContext context) {
    return value.when(
      data: data,
      error: error ?? (error, stackTrace) => Center(child: Text('Error: $error')),
      loading: () => loading ?? const Center(child: CircularProgressIndicator()),
    );
  }
}