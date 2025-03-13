import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import '../providers/webtoons_by_day_provider.dart';

class WebtoonByDayScreen extends ConsumerWidget {
  final String day;

  const WebtoonByDayScreen({required this.day, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final webtoonsAsyncValue = ref.watch(webtoonsByDayProvider(day));

    return Scaffold(
      appBar: AppBar(
        title: Text('$day Webtoons'),
      ),
      body: webtoonsAsyncValue.when(
        data: (apiResult) {
          // ApiResult에서 성공 또는 실패를 처리
          return apiResult.when(
            success: (webtoonsResponse) {
              return GridView.builder(
                padding: const EdgeInsets.all(8),
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,  // 한 행에 3개의 아이템
                  childAspectRatio: 0.7,  // 세로로 더 길게
                  crossAxisSpacing: 8,  // 가로 간격
                  mainAxisSpacing: 8,  // 세로 간격
                ),
                itemCount: webtoonsResponse.webtoons.length,  // 웹툰 개수
                itemBuilder: (context, index) {
                  final webtoon = webtoonsResponse.webtoons[index];
                  return GestureDetector(
                    onTap: () {
                      context.go('/webtoon/episodeList/${webtoon.title}/${webtoon.author}');
                    },
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: Image.network(
                            'https://via.placeholder.com/300x400',  // 이미지 URL
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return const Icon(Icons.broken_image, size: 50, color: Colors.grey);
                            },
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 4),
                          child: Text(
                            webtoon.title,
                            style: const TextStyle(fontWeight: FontWeight.bold),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Text(
                          webtoon.author,
                          style: const TextStyle(fontSize: 12),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            failure: (error) {
              return Center(child: Text('Error: $error'));  // 에러 발생 시 에러 메시지 표시
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text('Error: $error')),  // 비동기 처리 중 에러 발생
      ),
    );
  }
}
