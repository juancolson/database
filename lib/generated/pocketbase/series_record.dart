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

import 'base_record.dart' as _i1;
import 'empty_values.dart' as _i4;

part 'series_record.g.dart';

enum SeriesRecordFieldsEnum { id, created, updated, collectionId, collectionName, title, download }

@JsonSerializable()
final class SeriesRecord extends _i1.BaseRecord {
  SeriesRecord({
    required super.id,
    required super.created,
    required super.updated,
    required super.collectionId,
    required super.collectionName,
    required this.title,
    required this.download,
  });

  factory SeriesRecord.fromJson(Map<String, dynamic> json) => _$SeriesRecordFromJson(json);

  factory SeriesRecord.fromRecordModel(_i2.RecordModel recordModel) {
    final extendedJsonMap = {
      ...recordModel.data,
      SeriesRecordFieldsEnum.id.name: recordModel.id,
      SeriesRecordFieldsEnum.created.name: recordModel.created,
      SeriesRecordFieldsEnum.updated.name: recordModel.updated,
      SeriesRecordFieldsEnum.collectionId.name: recordModel.collectionId,
      SeriesRecordFieldsEnum.collectionName.name: recordModel.collectionName,
    };
    return SeriesRecord.fromJson(extendedJsonMap);
  }

  final String title;

  final String download;

  static const $collectionId = 'nvdhk39ew21o44w';

  static const $collectionName = 'Series';

  Map<String, dynamic> toJson() => _$SeriesRecordToJson(this);

  SeriesRecord copyWith({
    String? title,
    String? download,
  }) {
    return SeriesRecord(
      id: id,
      created: created,
      updated: updated,
      collectionId: collectionId,
      collectionName: collectionName,
      title: title ?? this.title,
      download: download ?? this.download,
    );
  }

  Map<String, dynamic> takeDiff(SeriesRecord other) {
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
        title,
        download,
      ];

  static Map<String, dynamic> forCreateRequest({
    required String title,
    required String download,
  }) {
    final jsonMap = SeriesRecord(
      id: '',
      created: _i4.EmptyDateTime(),
      updated: _i4.EmptyDateTime(),
      collectionId: $collectionId,
      collectionName: $collectionName,
      title: title,
      download: download,
    ).toJson();
    final Map<String, dynamic> result = {};
    result.addAll({SeriesRecordFieldsEnum.title.name: jsonMap[SeriesRecordFieldsEnum.title.name]});
    result.addAll(
        {SeriesRecordFieldsEnum.download.name: jsonMap[SeriesRecordFieldsEnum.download.name]});
    return result;
  }
}
