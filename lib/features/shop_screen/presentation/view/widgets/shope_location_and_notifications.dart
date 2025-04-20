import 'package:flutter/material.dart';
import 'package:sambhavtask/core/utils/theme/Styles.dart';
import 'package:sambhavtask/core/utils/theme/appAssets.dart';

class ShopeLocationAndNotifications extends StatelessWidget {
  const ShopeLocationAndNotifications({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text('Your location', style: Styles.textSemiBold16()),
      subtitle: Text('alexandria ,egypt', style: Styles.textRegular12()),
      leading: Image.asset(Assets.imagesOption, width: 25),
      trailing: Row(
        spacing: 4,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            Icons.keyboard_arrow_down_rounded,
            color: Colors.black,
            size: 20,
          ),
          Icon(
            Icons.notifications_none_outlined,
            color: Colors.black,
            size: 25,
          ),
        ],
      ),
    );
  }
}
