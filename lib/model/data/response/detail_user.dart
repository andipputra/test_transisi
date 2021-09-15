import 'package:json_annotation/json_annotation.dart';
import 'package:transisi_test/model/data/user_profile.dart';

part 'detail_user.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class DetailUser {
  final UserProfile data;

  DetailUser({required this.data});
  factory DetailUser.fromJson(Map<String, dynamic> json) => _$DetailUserFromJson(json);
  Map<String, dynamic> toJson() => _$DetailUserToJson(this);
}
