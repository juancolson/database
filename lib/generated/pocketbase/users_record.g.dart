// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UsersRecord _$UsersRecordFromJson(Map<String, dynamic> json) => UsersRecord(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      username: json['username'] as String,
      email: json['email'] as String,
      emailVisibility: json['emailVisibility'] as bool,
      verified: json['verified'] as bool,
      name: json['name'] as String?,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$UsersRecordToJson(UsersRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'username': instance.username,
      'email': instance.email,
      'emailVisibility': instance.emailVisibility,
      'verified': instance.verified,
      'name': instance.name,
      'avatar': instance.avatar,
    };
