import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

@immutable
abstract class ListEvent extends Equatable {
  ListEvent([List props = const <dynamic>[]]) : super(props);
}

class FetchList extends ListEvent {

}


