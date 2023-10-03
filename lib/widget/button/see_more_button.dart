
import 'package:flutter/material.dart';
import 'package:senaecelik/data/model/static_user_model.dart';
import 'package:senaecelik/utils/static_util.dart';

class SeeMoreButton extends StatelessWidget {
  const SeeMoreButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () => StaticUtils.openURL(
        StaticUserModel.user!.socialLink.github,
      ),
      child: const Text(
        'See More',
      ),
    );
  }
}