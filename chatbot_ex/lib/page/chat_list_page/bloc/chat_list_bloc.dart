import 'package:chatbot_ex/constants.dart';
import 'package:chatbot_ex/utils/chat_date_utils.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../hive_model/chat_item_model.dart';

part 'chat_list_event.dart';

part 'chat_list_state.dart';

class ChatListBloc extends Bloc<ChatListEvent, ChatListState> {
  ChatListBloc() : super(const ChatListState()) {
    on<ChatListInitEvent>(_onInit);
    on<ChatListAddEvent>(_onAddChat);
    on<ChatListRemoveEvent>(_onRemoveChat);
  }

  final Box<ChatItemModel> _chatsBox = Hive.box<ChatItemModel>(kChatBox);

  void _onInit(ChatListInitEvent event, Emitter<ChatListState> emit) {
    final chats = _chatsBox.values.toList();
    emit(state.copyWith(chats: chats));
  }

  void _onAddChat(ChatListAddEvent event, Emitter<ChatListState> emit) {
    final chatTitle = 'New Chat ${ChatDateUtils.formatDate(DateTime.now())}';
    final newChatItem = ChatItemModel(chatTitle, []);
    _chatsBox.add(newChatItem);
    emit(state.copyWith(chats: [...state.chats, newChatItem]));
  }

  void _onRemoveChat(ChatListRemoveEvent event, Emitter<ChatListState> emit) {
    _chatsBox.deleteAt(event.index);
    emit(state.copyWith(chats: [...state.chats]..removeAt(event.index)));
  }
}
