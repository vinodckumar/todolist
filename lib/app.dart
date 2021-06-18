import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/screens/data/repo/list_view_repo_impl.dart';
import 'package:survey_app/screens/presentation/bloc/list_bloc.dart';
import 'package:survey_app/screens/presentation/page/list_view.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: BlocProvider(
        create: (context) => ListViewBloc(ListViewRepositoryImpl()),
        child: ListScreen(),
      ),
    );
  }
}
