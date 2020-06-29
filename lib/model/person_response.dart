import 'package:movie_app/model/person.dart';

class PersonRespose {
  final List<Person> persons;
  final String error;

  PersonRespose(this.persons, this.error);

  PersonRespose.fromJson(Map<String, dynamic> json)
      : persons = (json['results'] as List)
            .map((i) => new Person.fromJson(i))
            .toList(),
        error = '';

  PersonRespose.withError(String errorValue)
      : persons = List(),
        error = errorValue;
}
