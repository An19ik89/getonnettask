import 'package:freezed_annotation/freezed_annotation.dart';

part 'freezed_data_classes.freezed.dart';

@freezed
class LoginObject with _$LoginObject {
  factory LoginObject(String useName, String password) = _LoginObject;
}

@freezed
class MovieListObject with _$MovieListObject {
  factory MovieListObject(int page, String query) = _MovieListObject;
}
