// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AllUserResponse _$AllUserResponseFromJson(Map<String, dynamic> json) {
  return AllUserResponse(
    page: json['page'] as int,
    perPage: json['per_page'] as int,
    total: json['total'] as int,
    totalPages: json['total_pages'] as int,
    data: (json['data'] as List<dynamic>)
        .map((e) => AllUserResponse.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$AllUserResponseToJson(AllUserResponse instance) =>
    <String, dynamic>{
      'page': instance.page,
      'per_page': instance.perPage,
      'total': instance.total,
      'total_pages': instance.totalPages,
      'data': instance.data,
    };
