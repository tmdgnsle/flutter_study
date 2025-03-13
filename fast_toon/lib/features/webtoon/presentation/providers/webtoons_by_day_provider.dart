import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../../core/settings/api_service_provider.dart';
import '../../data/models/weekly_webtoon.dart';
import '../../data/source/remote/api_result.dart';
import '../../domain/usecases/get_webtoon_by_day.dart';

final webtoonsByDayProvider = FutureProvider.family<ApiResult<WebtoonsResponse>, String>((ref, day) async {
  final apiService = ref.watch(apiServiceProvider);
  final getWebtoonsByDay = GetWebtoonsByDay(apiService);
  return getWebtoonsByDay.execute(123, day);  // id와 day로 API 호출
});
