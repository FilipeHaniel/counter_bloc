// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'example_bloc.dart';

abstract class ExampleEvent {}

class ExampleFindNameEvent extends ExampleEvent {}

class ExampleAddNameEvent extends ExampleEvent {
  final String name;

  ExampleAddNameEvent({
    required this.name,
  });
}

class ExampleRemoveNameEvent extends ExampleEvent {
  final String name;

  ExampleRemoveNameEvent({
    required this.name,
  });
}
