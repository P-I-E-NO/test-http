// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'car.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Car _$CarFromJson(Map<String, dynamic> json) => Car(
      id: json['id'] as String,
      imageUrl: json['image_url'] as String?,
      name: json['name'] as String,
      ownerId: json['owner_id'] as String,
      plateNo: json['plate_no'] as String,
      size: json['size'] as String,
      tankSize: json['tank_size'] as int,
    );

Map<String, dynamic> _$CarToJson(Car instance) => <String, dynamic>{
      'id': instance.id,
      'image_url': instance.imageUrl,
      'name': instance.name,
      'owner_id': instance.ownerId,
      'plate_no': instance.plateNo,
      'size': instance.size,
      'tank_size': instance.tankSize,
    };
