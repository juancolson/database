// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'series_record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SeriesRecord _$SeriesRecordFromJson(Map<String, dynamic> json) => SeriesRecord(
      id: json['id'] as String,
      created: DateTime.parse(json['created'] as String),
      updated: DateTime.parse(json['updated'] as String),
      collectionId: json['collectionId'] as String,
      collectionName: json['collectionName'] as String,
      title: json['title'] as String,
      download: json['download'] as String,
    );

Map<String, dynamic> _$SeriesRecordToJson(SeriesRecord instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created': instance.created.toIso8601String(),
      'updated': instance.updated.toIso8601String(),
      'collectionId': instance.collectionId,
      'collectionName': instance.collectionName,
      'title': instance.title,
      'download': instance.download,
    };
