// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'record.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Record _$$_RecordFromJson(Map<String, dynamic> json) => _$_Record(
      dateTime: DateTime.parse(json['dateTime'] as String),
      weigth: json['weigth'] as int,
      photoUrl: json['photoUrl'] as String?,
      note: json['note'] as String?,
    );

Map<String, dynamic> _$$_RecordToJson(_$_Record instance) => <String, dynamic>{
      'dateTime': instance.dateTime.toIso8601String(),
      'weigth': instance.weigth,
      'photoUrl': instance.photoUrl,
      'note': instance.note,
    };
