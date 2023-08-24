// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'freezed_data_classes.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LoginObject {
  String get useName => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $LoginObjectCopyWith<LoginObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginObjectCopyWith<$Res> {
  factory $LoginObjectCopyWith(
          LoginObject value, $Res Function(LoginObject) then) =
      _$LoginObjectCopyWithImpl<$Res, LoginObject>;
  @useResult
  $Res call({String useName, String password});
}

/// @nodoc
class _$LoginObjectCopyWithImpl<$Res, $Val extends LoginObject>
    implements $LoginObjectCopyWith<$Res> {
  _$LoginObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useName = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      useName: null == useName
          ? _value.useName
          : useName // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginObjectCopyWith<$Res>
    implements $LoginObjectCopyWith<$Res> {
  factory _$$_LoginObjectCopyWith(
          _$_LoginObject value, $Res Function(_$_LoginObject) then) =
      __$$_LoginObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String useName, String password});
}

/// @nodoc
class __$$_LoginObjectCopyWithImpl<$Res>
    extends _$LoginObjectCopyWithImpl<$Res, _$_LoginObject>
    implements _$$_LoginObjectCopyWith<$Res> {
  __$$_LoginObjectCopyWithImpl(
      _$_LoginObject _value, $Res Function(_$_LoginObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? useName = null,
    Object? password = null,
  }) {
    return _then(_$_LoginObject(
      null == useName
          ? _value.useName
          : useName // ignore: cast_nullable_to_non_nullable
              as String,
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_LoginObject implements _LoginObject {
  _$_LoginObject(this.useName, this.password);

  @override
  final String useName;
  @override
  final String password;

  @override
  String toString() {
    return 'LoginObject(useName: $useName, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginObject &&
            (identical(other.useName, useName) || other.useName == useName) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, useName, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginObjectCopyWith<_$_LoginObject> get copyWith =>
      __$$_LoginObjectCopyWithImpl<_$_LoginObject>(this, _$identity);
}

abstract class _LoginObject implements LoginObject {
  factory _LoginObject(final String useName, final String password) =
      _$_LoginObject;

  @override
  String get useName;
  @override
  String get password;
  @override
  @JsonKey(ignore: true)
  _$$_LoginObjectCopyWith<_$_LoginObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MovieListObject {
  int get page => throw _privateConstructorUsedError;
  String get query => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MovieListObjectCopyWith<MovieListObject> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListObjectCopyWith<$Res> {
  factory $MovieListObjectCopyWith(
          MovieListObject value, $Res Function(MovieListObject) then) =
      _$MovieListObjectCopyWithImpl<$Res, MovieListObject>;
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class _$MovieListObjectCopyWithImpl<$Res, $Val extends MovieListObject>
    implements $MovieListObjectCopyWith<$Res> {
  _$MovieListObjectCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      query: null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MovieListObjectCopyWith<$Res>
    implements $MovieListObjectCopyWith<$Res> {
  factory _$$_MovieListObjectCopyWith(
          _$_MovieListObject value, $Res Function(_$_MovieListObject) then) =
      __$$_MovieListObjectCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int page, String query});
}

/// @nodoc
class __$$_MovieListObjectCopyWithImpl<$Res>
    extends _$MovieListObjectCopyWithImpl<$Res, _$_MovieListObject>
    implements _$$_MovieListObjectCopyWith<$Res> {
  __$$_MovieListObjectCopyWithImpl(
      _$_MovieListObject _value, $Res Function(_$_MovieListObject) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? query = null,
  }) {
    return _then(_$_MovieListObject(
      null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      null == query
          ? _value.query
          : query // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_MovieListObject implements _MovieListObject {
  _$_MovieListObject(this.page, this.query);

  @override
  final int page;
  @override
  final String query;

  @override
  String toString() {
    return 'MovieListObject(page: $page, query: $query)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MovieListObject &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.query, query) || other.query == query));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page, query);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MovieListObjectCopyWith<_$_MovieListObject> get copyWith =>
      __$$_MovieListObjectCopyWithImpl<_$_MovieListObject>(this, _$identity);
}

abstract class _MovieListObject implements MovieListObject {
  factory _MovieListObject(final int page, final String query) =
      _$_MovieListObject;

  @override
  int get page;
  @override
  String get query;
  @override
  @JsonKey(ignore: true)
  _$$_MovieListObjectCopyWith<_$_MovieListObject> get copyWith =>
      throw _privateConstructorUsedError;
}
