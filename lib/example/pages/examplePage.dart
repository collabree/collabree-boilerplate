import 'package:collabree/collabreeLocalizations.dart';
import 'package:collabree/example/exampleBloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_icons/flutter_icons.dart';

class ExamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).appTitle),
      ),
      body: Center(
        child: BlocBuilder<ExampleBloc, ExampleState>(
          builder: (context, state) {
            final counter = state is ExampleCount ? state.count : 0;
            return Text(
              S.of(context).counterMessage(counter),
              style: Theme.of(context).primaryTextTheme.bodyText2,
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => BlocProvider.of<ExampleBloc>(context).increment(),
        tooltip: S.of(context).incrementButton,
        child: const Icon(FlutterIcons.add_mdi),
      ),
    );
  }
}
