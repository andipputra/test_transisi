import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class ErrorResponse {
  final String error;

  ErrorResponse({required this.error});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);
}
