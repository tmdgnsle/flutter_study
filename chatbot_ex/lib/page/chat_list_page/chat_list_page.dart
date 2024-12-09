import 'package:chatbot_ex/page/chat_list_page/bloc/chat_list_bloc.dart';
import 'package:chatbot_ex/page/chat_list_page/widgets/chat_item.dart';
import 'package:chatbot_ex/page/chat_page/chat_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../hive_model/chat_item_model.dart';

class ChatListPage extends StatelessWidget {
  const ChatListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chat List'),
      ),
      body: BlocBuilder<ChatListBloc, ChatListState>(
        builder: (context, state) => state.chats.isEmpty
            ? const Center(
                child: Text('No chats yet'),
              )
            : ListView.builder(
                itemCount: state.chats.length,
                itemBuilder: (context, index) => ChatItem(
                  item: state.chats[index],
                  onDelete: () => _deleteChat(index, context),
                  onTapped: () => _openChat(state.chats[index], context),
                ),
              ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {
          BlocProvider.of<ChatListBloc>(context).add(const ChatListAddEvent());
        },
        label: const Text('Add New Chat'),
        icon: const Icon(Icons.message_outlined),
      ),
    );
  }

  void _openChat(ChatItemModel chatItem, BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => ChatPage(
                  chatItem: chatItem,
                )));
  }

  void _deleteChat(int index, BuildContext context) {
    BlocProvider.of<ChatListBloc>(context).add(ChatListRemoveEvent(index));
  }
}
