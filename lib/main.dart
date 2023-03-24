import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpodproject/streemprovider.dart';

// final nameProvider = Provider<String>((ref) => "ijaz1");
// final stateProvider = StateProvider<String?>((ref) => null);
// final userProvider = StateNotifierProvider<UserNotifier, User>((ref) => UserNotifier());
// final userChangeNotifire = ChangeNotifierProvider((ref) => UserNotifireChange());
/* final futureProvider = FutureProvider((ref) {
  final userRepositry = ref.watch(userRepositryprovider);

  return userRepositry.fetchdata();
});
*/
final streamProvider = StreamProvider((ref) async* {
  yield [112, 21, 212, 12];
});

void main() {
  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const StreamProviderWidget(),
    );
  }
}
