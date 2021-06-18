import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:survey_app/screens/data/repo/list_view_repo_impl.dart';
import 'package:survey_app/screens/domain/repo/list_view_repo.dart';
import 'package:survey_app/screens/domain/usecases/fetch_list.dart';
import 'package:survey_app/screens/presentation/bloc/list_event.dart';
import 'package:survey_app/screens/presentation/bloc/list_state.dart';

class ListViewBloc
    extends Bloc<ListEvent, ListViewState> {
  ListViewRepositoryImpl fetchList;

  ListViewBloc(this.fetchList);

  @override
  ListViewState get initialState => InitialState();

  @override
  Stream<ListViewState> mapEventToState(
      ListEvent event) async* {
    debugPrint('fetching');
    if (event is FetchList) {
      yield LoadingState();
      final result = await fetchList.fetchData();
      yield SuccessfulState(result);
    }
  }
}