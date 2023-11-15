// import 'dart:convert'; 
// import 'package:meta/meta.dart';
// Friend class{
//   Friend({
//     required this.avatar,
//     required this.name,
//     required this.email,
//     required this.phoneNumber,

//   })
//   final String avatar;
//   final String name;
//   final String email;
//   final String phoneNumber;

//   static List<Friend> allFromResponse(String response){

//     var jsonDecode=json.decode(response).cast<String,dynamic>();

//     return jsonDecode['result']
//           .cast<Map<String, dynamic>>()
//           .map(obj)=>Friend.fromMap(obj)
//           .cast<Friend>();
//   }

//   static Friend fromMap(Map map){

//     var name=map['name'];

//     return Friend(
//       avatar:map['picture']['avatar'],
//       name:map['name'],
//       email:map['email'],
//       phoneNumber:map['phoneNUmber']
//     );
//   }
// }