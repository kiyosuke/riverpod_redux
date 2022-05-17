typedef Reducer<S> = S Function(S state, dynamic action);

abstract class ReducerClass<S> {
  S call(S state, dynamic action);
}

class TypedReducer<S, A> implements ReducerClass<S> {
  final S Function(S state, A action) reducer;

  TypedReducer(this.reducer);

  @override
  S call(S state, action) {
    if (action is A) {
      return reducer(state, action);
    }
    return state;
  }
}

Reducer<S> combineReducers<S>(List<Reducer<S>> reducers) {
  return (S state, dynamic action) {
    for (final reducer in reducers) {
      state = reducer(state, action);
    }
    return state;
  };
}
