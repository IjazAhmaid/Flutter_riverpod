/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'main.dart';

class FutureProviderwidget extends ConsumerWidget {
  const FutureProviderwidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref.watch(futureProvider).when(
      data: (data) {
        return Scaffold(
          body: Column(
            children: [Text(data.name), Text(data.email)],
          ),
        );
      },
      error: (error, stackTrace) {
        return Scaffold(
          body: Text(error.toString()),
        );
      },
      loading: () {
        return const Scaffold(
          body: Center(
            child: CircularProgressIndicator(),
          ),
        );
      },
    );
  }
}
*/