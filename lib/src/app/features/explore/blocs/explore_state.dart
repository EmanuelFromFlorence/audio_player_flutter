library explore_state;

import 'package:audio_player_flutter/src/services/services.dart' show Track;
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:flutter/foundation.dart';

part 'explore_state.g.dart';

abstract class ExploreState
    implements Built<ExploreState, ExploreStateBuilder> {
  factory ExploreState([void Function(ExploreStateBuilder) updates]) =
      _$ExploreState;

  factory ExploreState.empty() {
    return ExploreState(
      (b) => b
        ..isLoading = false
        ..initial = false
        ..error = ''
        ..items.replace(BuiltList<Track>()),
    );
  }

  factory ExploreState.failure({@required String error}) {
    return ExploreState(
      (b) => b
        ..isLoading = false
        ..initial = false
        ..error = error
        ..items.replace(BuiltList<Track>()),
    );
  }

  factory ExploreState.initial() {
    return ExploreState(
      (b) => b
        ..isLoading = false
        ..initial = true
        ..error = ''
        ..items.replace(BuiltList<Track>()),
    );
  }

  factory ExploreState.loading() {
    return ExploreState(
      (b) => b
        ..isLoading = true
        ..initial = false
        ..error = ''
        ..items.replace(BuiltList<Track>()),
    );
  }

  factory ExploreState.success({@required BuiltList<Track> items}) {
    return ExploreState(
      (b) => b
        ..isLoading = false
        ..initial = false
        ..error = ''
        ..items.replace(items),
    );
  }

  bool get hasError => !isLoading && !initial && error.isNotEmpty;
  bool get isEmpty => !isLoading && !initial && items.isEmpty && error.isEmpty;
  bool get hasData =>
      !isLoading && !initial && items.isNotEmpty && error.isEmpty;
  bool get isInitial => !isLoading && initial && error.isEmpty;

  ExploreState._();

  String get error;

  bool get initial;

  bool get isLoading;

  BuiltList<Track> get items;
}
