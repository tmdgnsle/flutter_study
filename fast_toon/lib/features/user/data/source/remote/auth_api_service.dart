import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../model/login_response.dart';

part 'auth_api_service.g.dart'; // Retrofit code generation

@RestApi(baseUrl: "")
abstract class AuthApiService {
  factory AuthApiService(Dio dio, {String baseUrl}) = _AuthApiService;

  @POST("/api/login")
  Future<LoginResponse> login(@Body() Map<String, dynamic> body);
}
