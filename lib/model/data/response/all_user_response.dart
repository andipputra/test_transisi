import 'package:json_annotation/json_annotation.dart';
import 'package:transisi_test/model/data/user_profile.dart';

part 'all_user_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class AllUserResponse {
  final int page;
  final int perPage;
  final int total;
  final int totalPages;
  final List<UserProfile> data;

  AllUserResponse({
    required this.page,
    required this.perPage,
    required this.total,
    required this.totalPages,
    required this.data,
  });

  factory AllUserResponse.fromJson(Map<String, dynamic> json) =>
      _$AllUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AllUserResponseToJson(this);
}
