
/*
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodproject/main.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  onSubmit(WidgetRef ref, String value) {
    // ref.read(stateProvider.notifier).update((state) => value);
    ref.read(userChangeNotifire).updataname(value);
  }

  onSubmit1(WidgetRef ref, String value) {
    // ref.read(stateProvider.notifier).update((state) => value);
    ref.read(userChangeNotifire).updateage(value);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final name = ref.watch(stateProvider) ?? '';
    final user = ref.watch(userChangeNotifire).user;
    // final user = ref.watch(userProvider.select((value) => value.name));
    return Scaffold(
        appBar: AppBar(
          title: Text(user.name),
        ),
        body: Column(
          children: [
            TextField(onSubmitted: (value) => onSubmit(ref, value)),
            TextField(onSubmitted: (value) => onSubmit1(ref, value)),
            Center(child: Text(user.age))
          ],
        ));
  }
}
*/
//1 Provider:
// WidgetRef: An object that allows widgets to interact with providers.
// ref: communicate between provider
// watch: continuasly keep listing use watch
// read: one time listing use in function initstate dispose recommended
//2 State Provider: Updat value from outside like textfiled for int double floate
//3 statenotifier and  statenotifierprovider: for map list complex value
 