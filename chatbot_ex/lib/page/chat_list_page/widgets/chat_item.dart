import 'package:chatbot_ex/hive_model/chat_item_model.dart';
import 'package:flutter/material.dart';

class ChatItem extends StatelessWidget {
  final ChatItemModel item;
  final VoidCallback onTapped;
  final VoidCallback onDelete;

  // tap 이벤트
  // 삭제 이벤트
  const ChatItem(
      {super.key,
      required this.item,
      required this.onDelete,
      required this.onTapped});

  @override
  Widget build(BuildContext context) => ListTile(
        title: Text(item.title),
        onTap: onTapped,
        trailing: IconButton(
          onPressed: onDelete,
          icon: const Icon(Icons.delete),
        ),
      );
}
