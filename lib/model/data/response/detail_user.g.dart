// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

DetailUser _$DetailUserFromJson(Map<String, dynamic> json) {
  return DetailUser(
    data: UserProfile.fromJson(json['data'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$DetailUserToJson(DetailUser instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
