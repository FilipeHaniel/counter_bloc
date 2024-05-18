import 'package:counter_bloc/features/bloc_example/bloc/example_bloc.dart';
import 'package:counter_bloc/features/bloc_example/bloc_example.dart';
import 'package:counter_bloc/features/bloc_example/bloc_freezed_example.dart';
import 'package:counter_bloc/home_page.dart';
import 'package:counter_bloc/page_bloc/bloc/counter_bloc.dart';
import 'package:counter_bloc/page_bloc/counter_bloc_page.dart';
import 'package:counter_bloc/page_cubit/counter_cubit_page.dart';
import 'package:counter_bloc/page_cubit/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        '/bloc': (_) => BlocProvider(
              create: (_) => CounterBloc(),
              child: const CounterBlocPage(),
            ),
        '/cubit': (_) => BlocProvider(
              create: (context) => CounterCubit(),
              child: const CounterCubitPage(),
            ),
        '/features/bloc_example': (_) => BlocProvider(
              create: (context) => ExampleBloc()..add(ExampleFindNameEvent()),
              child: const BlocExample(),
            ),
        '/features/bloc_freezed_example': (_) => BlocProvider(
              create: (context) => ExampleBloc()..add(ExampleFindNameEvent()),
              child: const BlocFreezedExample(),
            ),
      },
      home: const HomePage(),
    );
  }
}
