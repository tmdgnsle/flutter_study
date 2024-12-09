import 'package:chatbot_ex/constants.dart';
import 'package:chatbot_ex/hive_model/chat_item_model.dart';
import 'package:chatbot_ex/hive_model/message_item_model.dart';
import 'package:chatbot_ex/hive_model/message_role_model.dart';
import 'package:chatbot_ex/page/chat_list_page/bloc/chat_list_bloc.dart';
import 'package:chatbot_ex/page/chat_list_page/chat_list_page.dart';
import 'package:chatbot_ex/page/chat_page/bloc/chat_messages_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(ChatItemModelAdapter());
  Hive.registerAdapter(MessageItemModelAdapter());
  Hive.registerAdapter(MessageRoleModelAdapter());
  await Hive.openBox<ChatItemModel>(kChatBox);
  await Hive.openBox<MessageItemModel>(kMessageBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ChatListBloc>(
          create: (context) => ChatListBloc()..add(const ChatListInitEvent()),
        ),
        BlocProvider<ChatMessagesBloc>(
          create: (context) => ChatMessagesBloc(),
        ),
      ],
      child: MaterialApp(
        title: 'ChatGPT',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: ChatListPage(),
      ),
    );
  }
}
