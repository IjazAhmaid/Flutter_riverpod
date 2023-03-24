// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:http/http.dart' as http;

class User {
  String name;
  String email;
  User({
    required this.name,
    required this.email,
  });

  User copyWith({
    String? name,
    String? age,
  }) {
    return User(
      name: name ?? this.name,
      email: age ?? email,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'email': email,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      name: map['name'] as String,
      email: map['email'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory User.fromJson(String source) =>
      User.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'User(name: $name, email: $email)';

  @override
  bool operator ==(covariant User other) {
    if (identical(this, other)) return true;

    return other.name == name && other.email == email;
  }

  @override
  int get hashCode => name.hashCode ^ email.hashCode;
}

// state notifire
/*
class UserNotifier extends StateNotifier<User> {
  UserNotifier() : super(User(name: 'name', email: ""));
  void updataname(String n) {
    state = state.copyWith(
      name: n,
    );
  }

  void updateage(String a) {
    state = state.copyWith(
      age: a,
    );
  }
}

// change notifire provider class
 
class UserNotifireChange extends ChangeNotifier {
  User user = User(name: '', email: '');
  void updateage(String a) {
    user = user.copyWith(
      age: a,
    );
    notifyListeners();
  }

  void updataname(String n) {
    user = user.copyWith(
      name: n,
    );
  }
}
*/
final userRepositryprovider = Provider((ref) => UserRepositry());

class UserRepositry {
  Future<User> fetchdata() {
    const url = 'https://jsonplaceholder.typicode.com/users/1';
    return http.get(Uri.parse(url)).then((value) => User.fromJson(value.body));
  }
}
