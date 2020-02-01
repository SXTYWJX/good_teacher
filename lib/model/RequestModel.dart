import 'package:good_teacher/Model/UserModel.dart';
import 'package:json_annotation/json_annotation.dart';

part 'RequestModel.g.dart';

@JsonSerializable()

class RequestModel{
  UserModel poster;
  String subject;
  String frequency;
  String location;
  String salary;

  RequestModel({this.poster,this.subject,this.frequency,this.location,this.salary});

  factory RequestModel.fromJson(Map<String, dynamic> json) => _$RequestModelFromJson(json);

  Map<String, dynamic> toJson() => _$RequestModelToJson(this);
}
