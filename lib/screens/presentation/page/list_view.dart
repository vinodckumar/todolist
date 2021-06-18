import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/screens/presentation/bloc/list_bloc.dart';
import 'package:survey_app/screens/presentation/bloc/list_event.dart';
import 'package:survey_app/screens/presentation/bloc/list_state.dart';

class ListScreen extends StatefulWidget {
  @override
  _ListScreenState createState() => _ListScreenState();
}

class _ListScreenState extends State<ListScreen> {
  ListViewBloc listViewBloc;

  Widget buildBody() {
    return BlocBuilder<ListViewBloc, ListViewState>(
      builder: (context, state) {
        if (state is InitialState) {
          listViewBloc.add(
            FetchList(),
          );
          return Center(child: CircularProgressIndicator());
        } else if (state is SuccessfulState) {
          return ListView.builder(
              itemCount: state.listData.length,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  color: Colors.white,
                  elevation: 1,
                  child: ListTile(
                    title: Row(
                      children: [
                        Text(
                          "ID: ",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          state.listData[index].id.toString(),
                          style: TextStyle(color: Colors.red),
                        ),
                      ],
                    ),
                    subtitle: Text(state.listData[index].title.toString()),
                    trailing: state.listData[index].completed
                        ? Icon(
                            Icons.cloud_done,
                            color: Colors.green,
                          )
                        : Icon(
                            Icons.timer,
                            color: Colors.yellow,
                          ),
                  ),
                );
              });
        } else
          return Container();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    listViewBloc = BlocProvider.of<ListViewBloc>(context);
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Todo List'),
      ),
      body: buildBody(),
    );
  }
}
