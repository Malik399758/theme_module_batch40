// To parse this JSON data, do
//
//     final userModel = userModelFromMap(jsonString);

import 'dart:convert';

List<UserModel> userModelFromMap(String str) => List<UserModel>.from(json.decode(str).map((x) => UserModel.fromMap(x)));

String userModelToMap(List<UserModel> data) => json.encode(List<dynamic>.from(data.map((x) => x.toMap())));

class UserModel {
  int? userId;
  int? id;
  String? title;
  String? body;

  UserModel({
    this.userId,
    this.id,
    this.title,
    this.body,
  });

  factory UserModel.fromMap(Map<String, dynamic> json) => UserModel(
    userId: json["userId"],
    id: json["id"],
    title: json["title"],
    body: json["body"],
  );

  Map<String, dynamic> toMap() => {
    "userId": userId,
    "id": id,
    "title": title,
    "body": body,
  };
}
