import 'package:hive/hive.dart';


@HiveType(typeId: 1)
class UserConfigResource {
  UserConfigResource({required this.name, required this.socialName, required this.email, required this.language, required this.loginToken});

  @HiveField(0)
  String name;

  @HiveField(1)
  String socialName;
  
  @HiveField(2)
  String email;
  
  @HiveField(3)
  String language;

  @HiveField(4)
  String loginToken;


  // @HiveField(2)
  // List<String> friends;

  // @override
  // String toString() {
  //   return '$name: $age';
  // }
}