// To parse this JSON data, do
//
//     final editProfile = editProfileFromJson(jsonString);

import 'dart:convert';

EditProfile editProfileFromJson(String str) => EditProfile.fromJson(json.decode(str));

String editProfileToJson(EditProfile data) => json.encode(data.toJson());

class EditProfile {
    EditProfile({
        required this.message,
        required this.user,
    });

    String message;
    User user;

    factory EditProfile.fromJson(Map<String, dynamic> json) => EditProfile(
        message: json["message"],
        user: User.fromJson(json["user"]),
    );

    Map<String, dynamic> toJson() => {
        "message": message,
        "user": user.toJson(),
    };
}

class User {
    User({
        required this.id,
        required this.name,
        required this.phone,
        required this.email,
        required this.password,
        required this.about,
        required this.interviewer,
        required this.experience,
        required this.connections,
        this.profileImage,
    });

    String id;
    String name;
    int phone;
    String email;
    String password;
    String about;
    bool interviewer;
    int experience;
    String? profileImage;
    
    List<String> connections;

    factory User.fromJson(Map<String, dynamic> json) => User(
        id: json["_id"],
        name: json["name"],
        phone: json["phone"],
        email: json["email"],
        password: json["password"],
        about: json["about"],
        interviewer: json["interviewer"],
        experience: json["experience"],
         profileImage: json['profileImg'],
        connections: List<String>.from(json["connections"].map((x) => x)),
    );

    Map<String, dynamic> toJson() => {
        "_id": id,
        "name": name,
        "phone": phone,
        "email": email,
        "password": password,
        "about": about,
        "interviewer": interviewer,
        "experience": experience,
        "connections": List<dynamic>.from(connections.map((x) => x)),
    };
}
