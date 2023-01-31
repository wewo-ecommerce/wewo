import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String id;
  final String email;
  final String fullName;
  final String phone;
  final String gender;
  final Timestamp dateOfBirth;
  final String type;
  final String urlAvatar;
  final List<String> tokens;

  UserModel({
    required this.id,
    required this.email,
    required this.fullName,
    required this.dateOfBirth,
    required this.urlAvatar,
    required this.phone,
    required this.gender,
    required this.type,
    required this.tokens,
  });

  UserModel.fromJson(Map<String, dynamic> json)
      : this(
          id: json['id'] ?? "",
          email: json['email'] ?? "",
          fullName: json['fullName'] ?? "",
          phone: json['phone'] ?? "",
          gender: json['gender'] ?? "",
          type: json['type'] ?? "user",
          dateOfBirth: json['dateOfBirth'] ?? Timestamp.now(),
          urlAvatar: json['urlAvatar'] ?? "",
          tokens: List.from(json['tokens'] ?? []),
        );

  Map<String, dynamic> toJson() {
    return {
      "id": id,
      "email": email,
      "fullName": fullName,
      "dateOfBirth": dateOfBirth,
      "phone": phone,
      "gender": gender,
      "type": type,
      "urlAvatar": urlAvatar,
      "tokens": tokens,
    };
  }
}
