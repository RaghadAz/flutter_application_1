// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'responses.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BaseResponse _$BaseResponseFromJson(Map<String, dynamic> json) => BaseResponse()
  ..status = json['res_status'] as int?
  ..message = json['res_message'] as String?;

Map<String, dynamic> _$BaseResponseToJson(BaseResponse instance) =>
    <String, dynamic>{
      'res_status': instance.status,
      'res_message': instance.message,
    };

CustomerResponse _$CustomerResponseFromJson(Map<String, dynamic> json) =>
    CustomerResponse(
      json['res_name'] as String?,
      json['res_numOfNotifications'] as int?,
      json['res_id'] as String?,
    );

Map<String, dynamic> _$CustomerResponseToJson(CustomerResponse instance) =>
    <String, dynamic>{
      'res_id': instance.status,
      'res_name': instance.name,
      'res_numOfNotifications': instance.numOfNotifications,
    };

ContactsResponse _$ContactsResponseFromJson(Map<String, dynamic> json) =>
    ContactsResponse(
      json['res_email'] as String?,
      json['res_link'] as String?,
      json['res_phone'] as String?,
    );

Map<String, dynamic> _$ContactsResponseToJson(ContactsResponse instance) =>
    <String, dynamic>{
      'res_phone': instance.phone,
      'res_email': instance.email,
      'res_link': instance.link,
    };

AuthenticationResponse _$AuthenticationResponseFromJson(
        Map<String, dynamic> json) =>
    AuthenticationResponse(
      json['res_contact'] == null
          ? null
          : ContactsResponse.fromJson(
              json['res_contact'] as Map<String, dynamic>),
      json['res_customer'] == null
          ? null
          : CustomerResponse.fromJson(
              json['res_customer'] as Map<String, dynamic>),
    )
      ..status = json['res_status'] as int?
      ..message = json['res_message'] as String?;

Map<String, dynamic> _$AuthenticationResponseToJson(
        AuthenticationResponse instance) =>
    <String, dynamic>{
      'res_status': instance.status,
      'res_message': instance.message,
      'res_contact': instance.contact,
      'res_customer': instance.customer,
    };
