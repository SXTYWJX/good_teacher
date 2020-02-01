import 'package:good_teacher/Model/UserModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'TeacherModel.g.dart';

@JsonSerializable()

class TeacherModel{
  UserModel poster;
  String description;
  String subject;
  String availableTime;
  String expectedSalary;

  TeacherModel({this.poster,this.description, this.subject, this.availableTime, this.expectedSalary});

  factory TeacherModel.fromJson(Map<String, dynamic> json) => _$TeacherModelFromJson(json);

  Map<String, dynamic> toJson() => _$TeacherModelToJson(this);
}