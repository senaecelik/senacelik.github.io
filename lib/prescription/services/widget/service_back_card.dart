import 'package:flutter/material.dart';

class ServiceCardBackWidget extends StatelessWidget {
  const ServiceCardBackWidget(
      {Key? key, required this.serviceDesc, required this.serviceTitle})
      : super(key: key);

  final String serviceDesc;
  final String serviceTitle;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          serviceDesc,
          // style: AppText.l1,
        ),
      ],
    );
  }
}
