part of 'chat_messages_bloc.dart';

sealed class ChatMessagesEvent {
  const ChatMessagesEvent();
}

final class ChatMessagesInitialEvent extends ChatMessagesEvent {
  final ChatItemModel chatItem;
  const ChatMessagesInitialEvent(this.chatItem);
}

final class ChatMessagesAddEvent extends ChatMessagesEvent {
  final String message;

  ChatMessagesAddEvent(this.message);
}