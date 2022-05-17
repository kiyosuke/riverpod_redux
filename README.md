Implement Redux Store with StateNotifier and distribute with Riverpod Provider.

## Usage

```dart
enum CounterAction { increment }

int counterReducer(int state, dynamic action) {
  if (action == CounterAction.increment) {
    return state + 1;
  }
  return state;
}

final counterStore = StoreProvider((ref) {
  return Store<int>(counterReducer, initialState: 0);
});

void main() {
  runApp(const ProviderScope(child: MyApp(title: 'Flutter Redux Demo')));
}

class MyApp extends ConsumerWidget {
  final String title;
  const MyApp({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      title: title,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${ref.watch(counterStore)}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            ref.read(counterStore.notifier).dispatch(CounterAction.increment);
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
```