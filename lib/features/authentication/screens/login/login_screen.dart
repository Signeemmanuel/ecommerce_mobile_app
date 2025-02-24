import 'package:ecommerce_mobile_app/common/styles/spacing_styles.dart';
import 'package:ecommerce_mobile_app/common/widgets/login_signup/form_divider.dart';
import 'package:ecommerce_mobile_app/common/widgets/login_signup/social_buttons.dart';
import 'package:ecommerce_mobile_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:ecommerce_mobile_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:ecommerce_mobile_app/utils/constants/sizes.dart';
import 'package:ecommerce_mobile_app/utils/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.spacingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title and sub title
              LoginHeading(),

              /// Form
              const LoginForm(),

              /// Divider
              FormDivider(dividerText: TTexts.orSignInWith),
              const SizedBox(height: TSizes.spaceBtwSections),

              /// Footer
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}

