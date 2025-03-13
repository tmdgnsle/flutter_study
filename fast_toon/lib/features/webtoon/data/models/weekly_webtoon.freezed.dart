// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weekly_webtoon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Webtoon _$WebtoonFromJson(Map<String, dynamic> json) {
  return _Webtoon.fromJson(json);
}

/// @nodoc
mixin _$Webtoon {
  String get title => throw _privateConstructorUsedError;
  String get author => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get genre => throw _privateConstructorUsedError;

  /// Serializes this Webtoon to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Webtoon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebtoonCopyWith<Webtoon> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebtoonCopyWith<$Res> {
  factory $WebtoonCopyWith(Webtoon value, $Res Function(Webtoon) then) =
      _$WebtoonCopyWithImpl<$Res, Webtoon>;
  @useResult
  $Res call({String title, String author, String description, String genre});
}

/// @nodoc
class _$WebtoonCopyWithImpl<$Res, $Val extends Webtoon>
    implements $WebtoonCopyWith<$Res> {
  _$WebtoonCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Webtoon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? genre = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebtoonImplCopyWith<$Res> implements $WebtoonCopyWith<$Res> {
  factory _$$WebtoonImplCopyWith(
          _$WebtoonImpl value, $Res Function(_$WebtoonImpl) then) =
      __$$WebtoonImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String author, String description, String genre});
}

/// @nodoc
class __$$WebtoonImplCopyWithImpl<$Res>
    extends _$WebtoonCopyWithImpl<$Res, _$WebtoonImpl>
    implements _$$WebtoonImplCopyWith<$Res> {
  __$$WebtoonImplCopyWithImpl(
      _$WebtoonImpl _value, $Res Function(_$WebtoonImpl) _then)
      : super(_value, _then);

  /// Create a copy of Webtoon
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? author = null,
    Object? description = null,
    Object? genre = null,
  }) {
    return _then(_$WebtoonImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      author: null == author
          ? _value.author
          : author // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      genre: null == genre
          ? _value.genre
          : genre // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebtoonImpl implements _Webtoon {
  const _$WebtoonImpl(
      {required this.title,
      required this.author,
      required this.description,
      required this.genre});

  factory _$WebtoonImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebtoonImplFromJson(json);

  @override
  final String title;
  @override
  final String author;
  @override
  final String description;
  @override
  final String genre;

  @override
  String toString() {
    return 'Webtoon(title: $title, author: $author, description: $description, genre: $genre)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebtoonImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.author, author) || other.author == author) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.genre, genre) || other.genre == genre));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, author, description, genre);

  /// Create a copy of Webtoon
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebtoonImplCopyWith<_$WebtoonImpl> get copyWith =>
      __$$WebtoonImplCopyWithImpl<_$WebtoonImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebtoonImplToJson(
      this,
    );
  }
}

abstract class _Webtoon implements Webtoon {
  const factory _Webtoon(
      {required final String title,
      required final String author,
      required final String description,
      required final String genre}) = _$WebtoonImpl;

  factory _Webtoon.fromJson(Map<String, dynamic> json) = _$WebtoonImpl.fromJson;

  @override
  String get title;
  @override
  String get author;
  @override
  String get description;
  @override
  String get genre;

  /// Create a copy of Webtoon
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebtoonImplCopyWith<_$WebtoonImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

WebtoonsResponse _$WebtoonsResponseFromJson(Map<String, dynamic> json) {
  return _WebtoonsResponse.fromJson(json);
}

/// @nodoc
mixin _$WebtoonsResponse {
  String get day => throw _privateConstructorUsedError;
  List<Webtoon> get webtoons => throw _privateConstructorUsedError;

  /// Serializes this WebtoonsResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of WebtoonsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $WebtoonsResponseCopyWith<WebtoonsResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WebtoonsResponseCopyWith<$Res> {
  factory $WebtoonsResponseCopyWith(
          WebtoonsResponse value, $Res Function(WebtoonsResponse) then) =
      _$WebtoonsResponseCopyWithImpl<$Res, WebtoonsResponse>;
  @useResult
  $Res call({String day, List<Webtoon> webtoons});
}

/// @nodoc
class _$WebtoonsResponseCopyWithImpl<$Res, $Val extends WebtoonsResponse>
    implements $WebtoonsResponseCopyWith<$Res> {
  _$WebtoonsResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of WebtoonsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? webtoons = null,
  }) {
    return _then(_value.copyWith(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      webtoons: null == webtoons
          ? _value.webtoons
          : webtoons // ignore: cast_nullable_to_non_nullable
              as List<Webtoon>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$WebtoonsResponseImplCopyWith<$Res>
    implements $WebtoonsResponseCopyWith<$Res> {
  factory _$$WebtoonsResponseImplCopyWith(_$WebtoonsResponseImpl value,
          $Res Function(_$WebtoonsResponseImpl) then) =
      __$$WebtoonsResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String day, List<Webtoon> webtoons});
}

/// @nodoc
class __$$WebtoonsResponseImplCopyWithImpl<$Res>
    extends _$WebtoonsResponseCopyWithImpl<$Res, _$WebtoonsResponseImpl>
    implements _$$WebtoonsResponseImplCopyWith<$Res> {
  __$$WebtoonsResponseImplCopyWithImpl(_$WebtoonsResponseImpl _value,
      $Res Function(_$WebtoonsResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of WebtoonsResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? day = null,
    Object? webtoons = null,
  }) {
    return _then(_$WebtoonsResponseImpl(
      day: null == day
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as String,
      webtoons: null == webtoons
          ? _value._webtoons
          : webtoons // ignore: cast_nullable_to_non_nullable
              as List<Webtoon>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WebtoonsResponseImpl implements _WebtoonsResponse {
  const _$WebtoonsResponseImpl(
      {required this.day, required final List<Webtoon> webtoons})
      : _webtoons = webtoons;

  factory _$WebtoonsResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$WebtoonsResponseImplFromJson(json);

  @override
  final String day;
  final List<Webtoon> _webtoons;
  @override
  List<Webtoon> get webtoons {
    if (_webtoons is EqualUnmodifiableListView) return _webtoons;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_webtoons);
  }

  @override
  String toString() {
    return 'WebtoonsResponse(day: $day, webtoons: $webtoons)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WebtoonsResponseImpl &&
            (identical(other.day, day) || other.day == day) &&
            const DeepCollectionEquality().equals(other._webtoons, _webtoons));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, day, const DeepCollectionEquality().hash(_webtoons));

  /// Create a copy of WebtoonsResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$WebtoonsResponseImplCopyWith<_$WebtoonsResponseImpl> get copyWith =>
      __$$WebtoonsResponseImplCopyWithImpl<_$WebtoonsResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WebtoonsResponseImplToJson(
      this,
    );
  }
}

abstract class _WebtoonsResponse implements WebtoonsResponse {
  const factory _WebtoonsResponse(
      {required final String day,
      required final List<Webtoon> webtoons}) = _$WebtoonsResponseImpl;

  factory _WebtoonsResponse.fromJson(Map<String, dynamic> json) =
      _$WebtoonsResponseImpl.fromJson;

  @override
  String get day;
  @override
  List<Webtoon> get webtoons;

  /// Create a copy of WebtoonsResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$WebtoonsResponseImplCopyWith<_$WebtoonsResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
