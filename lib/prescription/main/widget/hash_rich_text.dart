import 'package:flutter/material.dart';

class HashRichText extends StatelessWidget {
  const HashRichText({
    super.key,
    required this.label,
  });

  final String label;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: '# ',
        style: Theme.of(context)
            .textTheme
            .titleLarge!
            .copyWith(color: Theme.of(context).colorScheme.primary),
        children: <TextSpan>[
          TextSpan(text: label, style: Theme.of(context).textTheme.titleLarge),
         
        ],
      ),
    );
  }
}
