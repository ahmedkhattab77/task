import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ConstCard extends StatelessWidget {
  ConstCard({
    super.key,
    required this.fullname,
    required this.id,
    required this.name,
    required this.privet,
  });
  String id;
  String fullname;
  String name;
  String privet;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        children: [
          const Column(
            children: [
              Text('id'),
              SizedBox(
                height: 5,
              ),
              Text('name'),
              SizedBox(
                height: 5,
              ),
              Text('fullname'),
              SizedBox(
                height: 5,
              ),
              Text('privet'),
              SizedBox(
                height: 5,
              ),
            ],
          ),
          const SizedBox(
            width: 5,
          ),
          Column(
            children: [
              Text(id),
              const SizedBox(
                height: 5,
              ),
              Text(name),
              const SizedBox(
                height: 5,
              ),
              Text(fullname),
              const SizedBox(
                height: 5,
              ),
              Text(privet),
              const SizedBox(
                height: 5,
              ),
            ],
          )
        ],
      ),
    );
  }
}
