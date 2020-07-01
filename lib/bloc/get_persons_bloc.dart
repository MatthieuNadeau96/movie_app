import 'package:movie_app/model/person_response.dart';
import 'package:movie_app/repository/repository.dart';
import 'package:rxdart/rxdart.dart';

class PersonsListBLoc {
  final MovieRepository _repository = MovieRepository();
  final BehaviorSubject<PersonRespose> _subject =
      BehaviorSubject<PersonRespose>();

  getMovies() async {
    PersonRespose response = await _repository.getPersons();
    _subject.sink.add(response);
  }

  dispose() {
    _subject.close();
  }

  BehaviorSubject<PersonRespose> get subject => _subject;
}

final personsBloc = PersonsListBLoc();
