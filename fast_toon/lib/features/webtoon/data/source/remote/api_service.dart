import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

import '../../models/weekly_webtoon.dart';  // Freezed 모델 import

part 'api_service.g.dart';

@RestApi(baseUrl: "")
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET("/api/webtoons/week/{id}")
  Future<WebtoonsResponse> getWebtoonsByDay(
    @Path("id") int id, 
    @Query("day") String day
  );
}
