import 'package:survey_app/screens/data/models/list_data_model.dart';
import 'package:survey_app/screens/domain/repo/list_view_repo.dart';

class FetchListRepo extends UseCase {
  final ListViewRepository repository;

  FetchListRepo({this.repository});

  @override
  Future<List<ListData>> call() {
    return repository.fetchData();
  }
}

abstract class UseCase {
  Future<List<ListData>> call();
}
