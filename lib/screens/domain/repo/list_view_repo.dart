import 'package:survey_app/screens/data/models/list_data_model.dart';

abstract class ListViewRepository {
  Future<List<ListData>> fetchData();
}