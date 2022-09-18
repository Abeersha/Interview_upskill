import 'dart:convert';

SignUpPayloadModel signUpPayloadModelFromJson(String str) => SignUpPayloadModel.fromJson(json.decode(str));

String signUpPayloadModelToJson(SignUpPayloadModel data) => json.encode(data.toJson());

class SignUpPayloadModel {
    SignUpPayloadModel({
        required this.confirmPassword,
        required this.email,
        required this.experience,
        required this.interviewer,
        required this.name,
        required this.password,
        required this.phone,
    });

    String confirmPassword;
    String email;
    String? experience;
    bool interviewer;
    String name;
    String password;
    String phone;

    factory SignUpPayloadModel.fromJson(Map<String, dynamic> json) => SignUpPayloadModel(
        confirmPassword: json["confirmPassword"],
        email: json["email"],
        experience: json["experience"],
        interviewer: json["interviewer"],
        name: json["name"],
        password: json["password"],
        phone: json["phone"],
    );

    Map<String, dynamic> toJson() => {
        "confirmPassword": confirmPassword,
        "email": email,
        "experience": experience,
        "interviewer": interviewer,
        "name": name,
        "password": password,
        "phone": phone,
    };
}
