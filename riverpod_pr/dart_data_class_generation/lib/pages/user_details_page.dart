import 'package:flutter/material.dart';

import 'package:dart_data_class_generation/models/user.dart';

class UserDetailsPage extends StatelessWidget {
  final User user;
  const UserDetailsPage({
    Key? key,
    required this.user,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: ListTile(
          leading: CircleAvatar(
            child: Text(user.id.toString()),
          ),
        ),
      ),
      body: ListView(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('name: ${user.name}'),
                Text('email: ${user.email}'),
                Text('phone: ${user.phone}'),
                Text('website: ${user.website}'),
              ],
            ),
          ),
          Container(
            color: Colors.brown[50],
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ShowAddress(addrss: user.address),
          ),
          Container(
            color: Colors.amber[50],
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            child: ShowCompany(company: user.company),
          ),
        ],
      ),
    );
  }
}

class ShowAddress extends StatelessWidget {
  final Address addrss;
  const ShowAddress({
    Key? key,
    required this.addrss,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Address',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text('street: ${addrss.street}'),
        Text('suite: ${addrss.suite}'),
        Text('city: ${addrss.city}'),
        Text('zipcode: ${addrss.zipcode}'),
        Row(
          children: [
            Text('latitude: ${addrss.geo.lat}'),
            const SizedBox(
              width: 10,
            ),
            Text('latitude: ${addrss.geo.lng}'),
          ],
        ),
      ],
    );
  }
}

class ShowCompany extends StatelessWidget {
  final Company company;
  const ShowCompany({
    Key? key,
    required this.company,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Company',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        Text('name: ${company.name}'),
        Text('Catch Phrase: ${company.catchPhrase}'),
        Text('bs: ${company.bs}'),
      ],
    );
  }
}
