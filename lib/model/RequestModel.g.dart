// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'RequestModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RequestModel _$RequestModelFromJson(Map<String, dynamic> json) {
  return RequestModel(
    poster: json['poster'] == null
        ? null
        : UserModel.fromJson(json['poster'] as Map<String, dynamic>),
    subject: json['subject'] as String,
    frequency: json['frequency'] as String,
    location: json['location'] as String,
    salary: json['salary'] as String,
  );
}

Map<String, dynamic> _$RequestModelToJson(RequestModel instance) =>
    <String, dynamic>{
      'poster': instance.poster,
      'subject': instance.subject,
      'frequency': instance.frequency,
      'location': instance.location,
      'salary': instance.salary,
    };
