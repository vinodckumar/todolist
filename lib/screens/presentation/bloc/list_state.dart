import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:survey_app/screens/data/models/list_data_model.dart';

@immutable
abstract class ListViewState extends Equatable {
  ListViewState([List props = const <dynamic>[]]) : super(props);
}

class InitialState extends ListViewState {}

class LoadingState extends ListViewState {}

class SuccessfulState extends ListViewState {
  final List<ListData> listData;
  SuccessfulState(this.listData);
  List<Object> get props => [listData];
}