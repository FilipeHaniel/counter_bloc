import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';

part 'example_state.dart';
part 'example_event.dart';

class ExampleBloc extends Bloc<ExampleEvent, ExampleState> {
  ExampleBloc() : super(ExampleStateInitial()) {
    on<ExampleFindNameEvent>(_findNames);
    on<ExampleRemoveNameEvent>(_removeName);
    on<ExampleAddNameEvent>(_addName);
  }

  final names = [
    'Rodrigo rahman',
    'Academia do Flutter',
    'Flutter',
    'Dart',
    'Flutter Bloc',
  ];

  FutureOr<void> _addName(ExampleAddNameEvent event, Emitter<ExampleState> emit) async {
    await Future.delayed(const Duration(seconds: 2));

    names.add(event.name);

    emit(ExampleStateData(names: names));

  }

  FutureOr<void> _removeName(
      ExampleRemoveNameEvent event, Emitter<ExampleState> emit) async {
    await Future.delayed(const Duration(seconds: 2));

    names.remove(event.name);

    emit(ExampleStateData(names: names));
  }

  FutureOr<void> _findNames(
      ExampleFindNameEvent event, Emitter<ExampleState> emit) async {
    await Future.delayed(const Duration(seconds: 2));

    emit(ExampleStateData(names: names));
  }
}
