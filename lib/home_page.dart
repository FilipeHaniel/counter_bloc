import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home page')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              child: Text(
                'bloc',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () => Navigator.of(context).pushNamed('/bloc'),
            ),
            TextButton(
              child: Text(
                'cubit',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () => Navigator.of(context).pushNamed('/cubit'),
            ),
            TextButton(
              child: Text(
                'example bloc',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/features/bloc_example'),
            ),
            TextButton(
              child: Text(
                'example freezed',
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              onPressed: () =>
                  Navigator.of(context).pushNamed('/features/bloc_freezed_example'),
            ),
          ],
        ),
      ),
    );
  }
}
