import 'package:json_annotation/json_annotation.dart';

part 'chat.model.g.dart';

@JsonSerializable()
class Chat {
  final String user;

  Chat({required this.user});

  factory Chat.fromJson(Map<String, dynamic> json) => _$ChatFromJson(json);

  Map<String, dynamic> toJson() => _$ChatToJson(this);
}
