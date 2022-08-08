// To parse this JSON data, do
//
//     final whatsapp = whatsappFromJson(jsonString);

import 'package:meta/meta.dart';
import 'dart:convert';

Whatsapp whatsappFromJson(String str) => Whatsapp.fromJson(json.decode(str));

String whatsappToJson(Whatsapp data) => json.encode(data.toJson());

class Whatsapp {
  Whatsapp({
    required this.success,
    required this.authentication,
    required this.code,
    required this.data,
    required this.message,
    required this.serverTime,
  });

  bool success;
  bool authentication;
  int code;
  Data data;
  String message;
  String serverTime;

  factory Whatsapp.fromJson(Map<String, dynamic> json) => Whatsapp(
    success: json["success"],
    authentication: json["authentication"],
    code: json["code"],
    data: Data.fromJson(json["data"]),
    message: json["message"],
    serverTime: json["server_time"],
  );

  Map<String, dynamic> toJson() => {
    "success": success,
    "authentication": authentication,
    "code": code,
    "data": data.toJson(),
    "message": message,
    "server_time": serverTime,
  };
}

class Data {
  Data({
    required this.userId,
    required this.name,
    required this.message,
    required this.seenType,
    required this.time,
    required this.mute,
    required this.image,
  });

  int userId;
  String name;
  String message;
  int seenType;
  String time;
  bool mute;
  String image;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
    userId: json["user_id"],
    name: json["name"],
    message: json["message"],
    seenType: json["seen_type"],
    time: json["time"],
    mute: json["mute"],
    image: json["image"],
  );

  Map<String, dynamic> toJson() => {
    "user_id": userId,
    "name": name,
    "message": message,
    "seen_type": seenType,
    "time": time,
    "mute": mute,
    "image": image,
  };
}
