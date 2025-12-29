// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Increment _$IncrementFromJson(Map<String, dynamic> json) =>
    _Increment(by: (json['by'] as num).toInt());

Map<String, dynamic> _$IncrementToJson(_Increment instance) =>
    <String, dynamic>{'by': instance.by};

_Count _$CountFromJson(Map<String, dynamic> json) =>
    _Count((json['value'] as num).toInt());

Map<String, dynamic> _$CountToJson(_Count instance) => <String, dynamic>{
  'value': instance.value,
};
