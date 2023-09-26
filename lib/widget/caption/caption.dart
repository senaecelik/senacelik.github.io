import 'package:flutter/material.dart';

class Caption extends StatelessWidget {
  const Caption({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          child: RichText(
            text: TextSpan(
              text: '# ',
              style: Theme.of(context)
                  .textTheme
                  .headlineLarge!
                  .copyWith(color: Colors.green.shade200),
              children: <TextSpan>[
                TextSpan(
                    text: label,
                    style: Theme.of(context).textTheme.headlineLarge),
              ],
            ),
          ),
        ),
        const Expanded(
          child: Divider(
            height: 10,
            indent: 30,
            endIndent: 30,
            color: Colors.black,
          ),
        )
      ],
    );
  }
}
