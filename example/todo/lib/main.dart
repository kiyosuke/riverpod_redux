import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/ui/todo_edit_page.dart';
import 'package:todo/src/ui/todo_list_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();

  runApp(const ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Redux Todo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      onGenerateRoute: onGenerateRoute,
    );
  }
}

Route? onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case '/':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const TodoListPage(),
      );
    case 'todo/add':
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => TodoEditPage.add(),
      );
    case 'todo/edit':
      final todo = settings.arguments as Todo;
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => TodoEditPage.edit(todo),
      );
    default:
      return MaterialPageRoute(
        settings: settings,
        builder: (context) => const _NotFoundPage(),
      );
  }
}

class _NotFoundPage extends StatelessWidget {
  const _NotFoundPage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: const [Text('Not Found')],
        ),
      ),
    );
  }
}
