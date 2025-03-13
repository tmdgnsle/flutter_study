import '../../data/models/weekly_webtoon.dart';
import '../../data/source/remote/api_result.dart';
import '../../data/source/remote/api_service.dart';

class GetWebtoonsByDay {
  final ApiService apiService;

  GetWebtoonsByDay(this.apiService);

  Future<ApiResult<WebtoonsResponse>> execute(int id, String day) async {
    try {
      final response = await apiService.getWebtoonsByDay(id, day);
      return ApiResult.success(response);
    } catch (e) {
      return ApiResult.failure(e.toString());
    }
  }
}
