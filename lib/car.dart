import 'package:json_annotation/json_annotation.dart';

part 'car.g.dart';

@JsonSerializable(fieldRename: FieldRename.snake)
class Car {
  final String id;
  final String? imageUrl;
  final String name;
  final String ownerId;
  final String plateNo;
  final String size;
  final int tankSize;

  Car({
    required this.id,
    required this.imageUrl,
    required this.name,
    required this.ownerId,
    required this.plateNo,
    required this.size,
    required this.tankSize,
  });

  factory Car.fromJson(Map<String, dynamic> json) => _$CarFromJson(json);

  Map<String, dynamic> toJson() => _$CarToJson(this);
}
