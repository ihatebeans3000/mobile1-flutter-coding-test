// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_RoomEntity _$RoomEntityFromJson(Map<String, dynamic> json) => _RoomEntity(
      roomId: json['roomId'] as String,
      roomName: json['roomName'] as String,
      creator: json['creator'] as String,
      participants: (json['participants'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      createdAt: DateTime.parse(json['createdAt'] as String),
      lastMessage: LastMessageEntity.fromJson(
          json['lastMessage'] as Map<String, dynamic>),
      thumbnailImage: json['thumbnailImage'] as String,
    );

Map<String, dynamic> _$RoomEntityToJson(_RoomEntity instance) =>
    <String, dynamic>{
      'roomId': instance.roomId,
      'roomName': instance.roomName,
      'creator': instance.creator,
      'participants': instance.participants,
      'createdAt': instance.createdAt.toIso8601String(),
      'lastMessage': instance.lastMessage,
      'thumbnailImage': instance.thumbnailImage,
    };

_LastMessageEntity _$LastMessageEntityFromJson(Map<String, dynamic> json) =>
    _LastMessageEntity(
      sender: json['sender'] as String,
      content: json['content'] as String,
      timestamp: DateTime.parse(json['timestamp'] as String),
    );

Map<String, dynamic> _$LastMessageEntityToJson(_LastMessageEntity instance) =>
    <String, dynamic>{
      'sender': instance.sender,
      'content': instance.content,
      'timestamp': instance.timestamp.toIso8601String(),
    };
