import 'package:anime_wiki/app/resources/assets/colors.gen.dart';
import 'package:anime_wiki/common/widgets/touchable_opacity.dart';
import 'package:flutter/material.dart';

class CustomErrorWidget extends StatelessWidget {
  final String message;
  final VoidCallback onRetry;

  const CustomErrorWidget({
    Key? key,
    required this.message,
    required this.onRetry,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(message),
        const SizedBox(height: 16),
        TouchableOpacity(
          onPressed: onRetry,
          child: Container(
            height: 40,
            width: 150,
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: AppColors.yellowOcher,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Text("Retry"),
          ),
        ),
      ],
    );
  }
}
