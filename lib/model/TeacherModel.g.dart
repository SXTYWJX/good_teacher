// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'TeacherModel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TeacherModel _$TeacherModelFromJson(Map<String, dynamic> json) {
  return TeacherModel(
    poster: json['poster'],
    description: json['description'] as String,
    subject: json['subject'] as String,
    availableTime: json['availableTime'] as String,
    expectedSalary: json['expectedSalary'] as String,
  );
}

Map<String, dynamic> _$TeacherModelToJson(TeacherModel instance) =>
    <String, dynamic>{
      'poster': instance.poster,
      'description': instance.description,
      'subject': instance.subject,
      'availableTime': instance.availableTime,
      'expectedSalary': instance.expectedSalary,
    };
