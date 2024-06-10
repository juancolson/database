// GENERATED CODE - DO NOT MODIFY BY HAND
// *****************************************************
// POCKETBASE_UTILS
// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:collection/collection.dart' as _i3;
import 'package:json_annotation/json_annotation.dart';
import 'package:pocketbase/pocketbase.dart' as _i2;

import 'auth_record.dart' as _i1;
import 'empty_values.dart' as _i4;

part 'users_record.g.dart';

enum UsersRecordFieldsEnum {
  id,
  created,
  updated,
  collectionId,
  collectionName,
  username,
  email,
  emailVisibility,
  verified,

  /// THIS FIELD IS ONLY FOR CREATING AN AUTH TYPE RECORD
  password,

  /// THIS FIELD IS ONLY FOR CREATING AN AUTH TYPE RECORD
  passwordConfirm,
  name,
  avatar
}

@JsonSerializable()
final class UsersRecord extends _i1.AuthRecord {
  UsersRecord({
    required super.id,
    required super.created,
    required super.updated,
    required super.collectionId,
    required super.collectionName,
    required super.username,
    required super.email,
    required super.emailVisibility,
    required super.verified,
    this.name,
    this.avatar,
  });

  factory UsersRecord.fromJson(Map<String, dynamic> json) => _$UsersRecordFromJson(json);

  factory UsersRecord.fromRecordModel(_i2.RecordModel recordModel) {
    final extendedJsonMap = {
      ...recordModel.data,
      UsersRecordFieldsEnum.id.name: recordModel.id,
      UsersRecordFieldsEnum.created.name: recordModel.created,
      UsersRecordFieldsEnum.updated.name: recordModel.updated,
      UsersRecordFieldsEnum.collectionId.name: recordModel.collectionId,
      UsersRecordFieldsEnum.collectionName.name: recordModel.collectionName,
    };
    return UsersRecord.fromJson(extendedJsonMap);
  }

  final String? name;

  final String? avatar;

  static const $collectionId = '_pb_users_auth_';

  static const $collectionName = 'users';

  Map<String, dynamic> toJson() => _$UsersRecordToJson(this);

  UsersRecord copyWith({
    String? username,
    String? email,
    bool? emailVisibility,
    bool? verified,
    String? name,
    String? avatar,
  }) {
    return UsersRecord(
      id: id,
      created: created,
      updated: updated,
      collectionId: collectionId,
      collectionName: collectionName,
      username: username ?? this.username,
      email: email ?? this.email,
      emailVisibility: emailVisibility ?? this.emailVisibility,
      verified: verified ?? this.verified,
      name: name ?? this.name,
      avatar: avatar ?? this.avatar,
    );
  }

  Map<String, dynamic> takeDiff(UsersRecord other) {
    final thisInJsonMap = toJson();
    final otherInJsonMap = other.toJson();
    final Map<String, dynamic> result = {};
    final _i3.DeepCollectionEquality deepCollectionEquality = _i3.DeepCollectionEquality();
    for (final mapEntry in thisInJsonMap.entries) {
      final thisValue = mapEntry.value;
      final otherValue = otherInJsonMap[mapEntry.key];
      if (!deepCollectionEquality.equals(
        thisValue,
        otherValue,
      )) {
        result.addAll({mapEntry.key: otherValue});
      }
    }
    return result;
  }

  @override
  List<Object?> get props => [
        ...super.props,
        name,
        avatar,
      ];

  static Map<String, dynamic> forCreateRequest({
    required String username,
    required String email,
    required bool emailVisibility,
    required bool verified,
    String? name,
    String? avatar,
  }) {
    final jsonMap = UsersRecord(
      id: '',
      created: _i4.EmptyDateTime(),
      updated: _i4.EmptyDateTime(),
      collectionId: $collectionId,
      collectionName: $collectionName,
      username: username,
      email: email,
      emailVisibility: emailVisibility,
      verified: verified,
      name: name,
      avatar: avatar,
    ).toJson();
    final Map<String, dynamic> result = {};
    result.addAll(
        {UsersRecordFieldsEnum.username.name: jsonMap[UsersRecordFieldsEnum.username.name]});
    result.addAll({UsersRecordFieldsEnum.email.name: jsonMap[UsersRecordFieldsEnum.email.name]});
    result.addAll({
      UsersRecordFieldsEnum.emailVisibility.name:
          jsonMap[UsersRecordFieldsEnum.emailVisibility.name]
    });
    result.addAll(
        {UsersRecordFieldsEnum.verified.name: jsonMap[UsersRecordFieldsEnum.verified.name]});
    if (name != null) {
      result.addAll({UsersRecordFieldsEnum.name.name: jsonMap[UsersRecordFieldsEnum.name.name]});
    }
    if (avatar != null) {
      result
          .addAll({UsersRecordFieldsEnum.avatar.name: jsonMap[UsersRecordFieldsEnum.avatar.name]});
    }
    return result;
  }
}
