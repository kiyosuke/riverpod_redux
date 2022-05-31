import 'package:todo/src/redux/model/visibility_filter.dart';

class UpdateFilterAction {
  final VisibilityFilter newFilter;

  const UpdateFilterAction(this.newFilter);
}
