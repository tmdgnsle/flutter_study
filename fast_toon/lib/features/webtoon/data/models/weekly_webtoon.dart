import 'package:freezed_annotation/freezed_annotation.dart';

part 'weekly_webtoon.freezed.dart';
part 'weekly_webtoon.g.dart';

@freezed
class Webtoon with _$Webtoon {
  const factory Webtoon({
    required String title,
    required String author,
    required String description,
    required String genre,
  }) = _Webtoon;

  factory Webtoon.fromJson(Map<String, dynamic> json) => _$WebtoonFromJson(json);
}

@freezed
class WebtoonsResponse with _$WebtoonsResponse {
  const factory WebtoonsResponse({
    required String day,
    required List<Webtoon> webtoons,
  }) = _WebtoonsResponse;

  factory WebtoonsResponse.fromJson(Map<String, dynamic> json) => _$WebtoonsResponseFromJson(json);
}
