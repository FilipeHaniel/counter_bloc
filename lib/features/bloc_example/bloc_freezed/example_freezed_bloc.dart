import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'example_freezed_state.dart';
part 'example_freezed_event.dart';

part 'example_freezed_bloc.freezed.dart';

class ExampleFreezedBloc
    extends Bloc<ExampleFreezedEvent, ExampleFreezedState> {
  ExampleFreezedBloc() : super(ExampleFreezedState.initial()) {
    on<_ExampleFreezedEventFindNames>(_findNames);
    on<_ExampleFreezedEventRemoveName>(_removeName);
    on<_ExampleFreezedEventAddName>(_addName);
  }

  final names = [
    'Rodrigo rahman',
    'Academia do Flutter',
    'Flutter',
    'Dart',
    'Flutter Bloc',
  ];

  FutureOr<void> _addName(
    _ExampleFreezedEventAddName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));

    names.add(event.name);

    emit(ExampleFreezedState.data(names: names));
  }

  FutureOr<void> _removeName(
    _ExampleFreezedEventRemoveName event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));

    names.remove(event.name);

    emit(ExampleFreezedState.data(names: names));
  }

  FutureOr<void> _findNames(
    _ExampleFreezedEventFindNames event,
    Emitter<ExampleFreezedState> emit,
  ) async {
    await Future.delayed(const Duration(seconds: 2));

    emit(ExampleFreezedState.data(names: names));
  }
}
