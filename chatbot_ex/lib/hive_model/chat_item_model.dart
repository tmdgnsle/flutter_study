import 'package:chatbot_ex/hive_model/message_item_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'chat_item_model.g.dart';

@HiveType(typeId: 0)
class ChatItemModel extends HiveObject{
  @HiveField(0)
  final String title;
  @HiveField(1)
  final List<MessageItemModel> messages;

  ChatItemModel(this.title, this.messages);
}