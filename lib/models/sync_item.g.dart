// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sync_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SyncItemImpl _$$SyncItemImplFromJson(Map<String, dynamic> json) =>
    _$SyncItemImpl(
      id: json['id'] as String,
      tableName: json['table_name'] as String,
      operation: json['operation'] as String,
      payload: json['payload'] as String,
      synced: json['synced'] as bool,
      retryCount: (json['retry_count'] as num).toInt(),
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
    );

Map<String, dynamic> _$$SyncItemImplToJson(_$SyncItemImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'table_name': instance.tableName,
      'operation': instance.operation,
      'payload': instance.payload,
      'synced': instance.synced,
      'retry_count': instance.retryCount,
      'created_at': instance.createdAt?.toIso8601String(),
    };
