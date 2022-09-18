class ProfileModel {

ProfileModel({
  this.id,
  this.name,
  this.email,
  this.phone,
  this.password,
});

String? id;
String? name;
String?email;
int? phone;
String? password;


factory ProfileModel.fromJson(Map<String,dynamic> json) => ProfileModel(
  id: json["_id"],
  name:json["name"],
  email:json["email"],
  phone: json["phone"],
  password: json["password"]
);

Map<String,dynamic> toJson()=>{
  "_id" :id,
  "name":name,
  "email":email,
  "phone":phone,
  "password":password,
};

}