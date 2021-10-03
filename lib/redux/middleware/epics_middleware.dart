import 'package:light_curve_app/redux/state/app_state.dart';
import 'package:redux_epics/redux_epics.dart';
import 'package:rxdart/rxdart.dart';

Stream<dynamic> Function(Stream<dynamic>, EpicStore<AppState> store) getEpicMiddleware() {
  return combineEpics<AppState>([]);
}
