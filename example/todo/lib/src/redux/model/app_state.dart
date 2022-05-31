import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo/src/model/todo/todo.dart';
import 'package:todo/src/redux/model/visibility_filter.dart';

part 'app_state.freezed.dart';

@freezed
class AppState with _$AppState {
  const factory AppState({
    @Default(false) bool isLoading,
    @Default([]) List<Todo> todos,
    @Default(VisibilityFilter.all) VisibilityFilter filter,
  }) = _AppState;
}
