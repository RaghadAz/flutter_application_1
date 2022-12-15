

import 'package:json_annotation/json_annotation.dart';
part 'responses.g.dart';

@JsonSerializable()
class BaseResponse{
  @JsonKey(name: "res_status")
  int? status;
  @JsonKey(name: "res_message")
  String? message;

}

@JsonSerializable()
class CustomerResponse{
  @JsonKey(name: "res_id")
  String? status;
  @JsonKey(name: "res_name")
  String? name;
  @JsonKey(name:"res_numOfNotifications")
  int? numOfNotifications;
  CustomerResponse(this.name,this.numOfNotifications,this.status);

  // from json
  factory CustomerResponse.fromJson(Map<String,dynamic> json) => _$CustomerResponseFromJson(json);

  // to json
  Map<String,dynamic> toJson() => _$CustomerResponseToJson(this);
}


@JsonSerializable()
class ContactsResponse{
  @JsonKey(name: "res_phone")
  String? phone;
  @JsonKey(name: "res_email")
  String? email;
  @JsonKey(name:"res_link")
  String? link;
  ContactsResponse(this.email,this.link,this.phone);

  // from json
  factory ContactsResponse.fromJson(Map<String,dynamic> json) => _$ContactsResponseFromJson(json);

  // to json
  Map<String,dynamic> toJson() => _$ContactsResponseToJson(this);
}
@JsonSerializable()
class AuthenticationResponse extends BaseResponse{
  @JsonKey(name: "res_contact")
  ContactsResponse? contact;
  @JsonKey(name: "res_customer")
  CustomerResponse? customer;
  AuthenticationResponse(this.contact,this.customer);

  // from json
factory AuthenticationResponse.fromJson(Map<String,dynamic> json) => _$AuthenticationResponseFromJson(json);

 // to json
Map<String,dynamic> toJson() => _$AuthenticationResponseToJson(this);
}