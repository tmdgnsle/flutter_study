// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weekly_webtoon.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$WebtoonImpl _$$WebtoonImplFromJson(Map<String, dynamic> json) =>
    _$WebtoonImpl(
      title: json['title'] as String,
      author: json['author'] as String,
      description: json['description'] as String,
      genre: json['genre'] as String,
    );

Map<String, dynamic> _$$WebtoonImplToJson(_$WebtoonImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'author': instance.author,
      'description': instance.description,
      'genre': instance.genre,
    };

_$WebtoonsResponseImpl _$$WebtoonsResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$WebtoonsResponseImpl(
      day: json['day'] as String,
      webtoons: (json['webtoons'] as List<dynamic>)
          .map((e) => Webtoon.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$WebtoonsResponseImplToJson(
        _$WebtoonsResponseImpl instance) =>
    <String, dynamic>{
      'day': instance.day,
      'webtoons': instance.webtoons,
    };
