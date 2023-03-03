import 'package:my_buddy/animations/slide-bottom.animation.dart';
import 'package:my_buddy/animations/slide-right.animation.dart';
import 'package:my_buddy/common/app_strings.dart';
import 'package:my_buddy/common/assets.dart';
import 'package:my_buddy/common/extensions.dart';
import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/home.page.dart';
import 'package:my_buddy/modules/profile/pages/settings.page.dart';
import 'package:my_buddy/modules/profile/widgets/user-profile-header-widget.dart';
import 'package:my_buddy/modules/profile/widgets/user-profile-list-tile.dart';
import 'package:my_buddy/modules/wallet/pages/holder-credential-detail.page.dart';
import 'package:my_buddy/modules/wallet/pages/holder-credentials.page.dart';
import 'package:my_buddy/providers/authentication-state.provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileDashboard extends StatelessWidget {
  const ProfileDashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const Center(
          child: UserProfileHeader(),
        ).paddingOnly(top: 16),
        const SizedBox(
          height: 20,
        ),
        const Divider(
          color: GlobalConstants.lavenderPinocchio,
        ).paddingSymmetric(horizontal: 20).paddingOnly(bottom: 16),
        UserProfileListTile(
          leadingIcon: Svgs.icPersonalInfo,
          title: AppStrings.personalInfo,
          onPressed: () {},
        ),
        UserProfileListTile(
          leadingIcon: Svgs.icResume,
          title: AppStrings.certificatesInfo,
          onPressed: () {
            Navigator.of(context).push(
              SlideRightRoute(
                page: const HolderCredentialsPage(),
              ),
            );
          },
        ),
        UserProfileListTile(
          leadingIcon: Svgs.icSettings,
          title: AppStrings.settings,
          onPressed: () {
            Navigator.of(context)
                .push(SlideRightRoute(page: const SettingsPage()));
          },
        ),
        const Divider(
          color: GlobalConstants.lavenderPinocchio,
        ).paddingSymmetric(horizontal: 20).paddingOnly(bottom: 16),
        UserProfileListTile(
          leadingIcon: Svgs.icLogout,
          title: AppStrings.logout,
          showTrailingIcon: false,
          onPressed: () {
            context.read<AuthenticationState>().clear();
            Navigator.of(context).pushAndRemoveUntil(
              SlideBottomRoute(
                page: const HomePage(),
              ),
              (Route<dynamic> route) => false,
            );
          },
        ),
      ],
    );
  }
}
