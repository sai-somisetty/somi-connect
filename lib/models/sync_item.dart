import 'package:freezed_annotation/freezed_annotation.dart';

part 'sync_item.freezed.dart';
part 'sync_item.g.dart';

@freezed
sealed class SyncItem with _$SyncItem {
  const factory SyncItem({
    required String id,
    @JsonKey(name: 'table_name') required String tableName,
    required String operation,
    required String payload,
    required bool synced,
    @JsonKey(name: 'retry_count') required int retryCount,
    @JsonKey(name: 'created_at') DateTime? createdAt,
  }) = _SyncItem;

  factory SyncItem.fromJson(Map<String, dynamic> json) =>
      _$SyncItemFromJson(json);
}
