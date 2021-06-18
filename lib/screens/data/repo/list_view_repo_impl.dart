import 'package:survey_app/screens/data/dummy_data.dart';
import 'package:survey_app/screens/data/models/list_data_model.dart';
import 'package:survey_app/screens/domain/repo/list_view_repo.dart';

class ListViewRepositoryImpl implements ListViewRepository {
  ListViewRepositoryImpl();

  @override
  Future<List<ListData>> fetchData() async {
    List userData = new List();
    List<ListData> formattedData = new List();

    userData = DummyData().getData();
    for (Map<String, dynamic> json in userData) {
      formattedData.add(ListData.fromJson(json));
    }
    return formattedData;
  }
}
