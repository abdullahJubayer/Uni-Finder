import 'package:flutter/material.dart';
import '../../../../core/constants/app_colors.dart';
import 'components/auto_match_list_tile.dart';

class AutoMatchPage extends StatelessWidget {
  const AutoMatchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.cardColor,
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return AutoMatchListTile(
              onTap: () {},
            );
          },
        ));
  }
}
