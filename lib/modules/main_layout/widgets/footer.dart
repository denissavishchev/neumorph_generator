import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../generator/generator_controller.dart';
import '../responsive.dart';

class Footer extends StatelessWidget {
  final GeneratorController generator = Get.find();

  Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (!Responsive.isMobile(context))
            Obx(
              () => RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: generator.getPrimaryColor,
                    fontSize: 14,
                  ),
                  children: const [
                    TextSpan(text: 'Code available on '),
                    TextSpan(
                      text: 'Github',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    TextSpan(text: '!'),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
