import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:push_test_app/core/presentation/components/medium_button.dart';
import 'package:push_test_app/router/route_path.dart';
import 'package:push_test_app/ui/color_style.dart';
import 'package:push_test_app/ui/text_styles.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            "assets/image/intro.png",
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          Align(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Image.asset(
                  "assets/image/intro_bell.png",
                  width: 79,
                  height: 79,
                ),
                const SizedBox(height: 14),
                Text(
                  "D35H App Push",
                  style: TextStyles.mediumTextBold.copyWith(
                    color: ColorStyle.white,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                SizedBox(
                  width: 341,
                  child: Text(
                    "미등록\n 사용자 입니다.",
                    textAlign: TextAlign.center,
                    style: TextStyles.titleTextBold.copyWith(
                      color: ColorStyle.white,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Text(
                  "계속 진행 하시려면 등록을 눌러주세요.",
                  style: TextStyles.normalTextRegular.copyWith(
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 66),
                  child: MediumButton(
                    label: '등록',
                    onPressed: () {
                      context.push(RoutePath.profile);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
