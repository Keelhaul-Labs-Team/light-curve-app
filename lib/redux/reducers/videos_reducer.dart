import 'package:built_collection/built_collection.dart';
import 'package:light_curve_app/features/videos/domain/video_dto.dart';
import 'package:light_curve_app/redux/actions/video_actions.dart';
import 'package:redux/redux.dart';

final getVideosUsersReducer = combineReducers<BuiltList<VideoDto>>([
  TypedReducer<BuiltList<VideoDto>, SetVideosUsersStateAction>(_setEmailsDtoReducer),
]);

BuiltList<VideoDto> _setEmailsDtoReducer(BuiltList<VideoDto> state, SetVideosUsersStateAction action) {
  return action.videos.build();
}

final getVideoExamplesReducer = combineReducers<BuiltList<VideoDto>>([
  TypedReducer<BuiltList<VideoDto>, SetVideosExampleStateAction>(_setVideoExamplesReducer),
]);

BuiltList<VideoDto> _setVideoExamplesReducer(_, SetVideosExampleStateAction action) {
  return action.videos.build();
}
