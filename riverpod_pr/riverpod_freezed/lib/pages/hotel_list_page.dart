import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_freezed/models/hotel.dart';
import 'package:riverpod_freezed/repositories/hote_repository.dart';

class HotelListPage extends StatefulWidget {
  const HotelListPage({super.key});

  @override
  State<HotelListPage> createState() => _HotelListPageState();
}

class _HotelListPageState extends State<HotelListPage> {
  List<Hotel> hotels = [];
  bool loading = true;
  @override
  void initState() {
    super.initState();
    _fetchHotels();
  }

  Future<void> _fetchHotels() async {
    hotels = await fetchHotels();

    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hotels'),
      ),
      body: Center(
        child: loading ? const CircularProgressIndicator() : buildHotels(),
      ),
    );
  }

  Widget buildHotels() {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: ListView.separated(
          itemBuilder: (context, index) {
            final Hotel hotel = hotels[index];

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name : ${hotel.name}',
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'classification: ${hotel.classification}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'city: ${hotel.city}',
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  'parking: ${hotel.parkingLotCapacity ?? "NA"}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                const Divider(
                  color: Colors.grey,
                ),
                if (hotel.reviews.isEmpty)
                  const Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      'Be the first reviewer',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                if (hotel.reviews.isNotEmpty)
                  ListView.separated(
                    primary: false,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final Review review = hotel.reviews[index];

                      return ListTile(
                        leading: CircleAvatar(
                          child: Text('${review.score}'),
                        ),
                        title: Text(review.review ?? 'No written review'),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.grey,
                      );
                    },
                    itemCount: hotel.reviews.length,
                  ),
              ],
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              color: Colors.grey,
              thickness: 2,
            );
          },
          itemCount: hotels.length),
    );
  }
}
