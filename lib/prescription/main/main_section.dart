import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'package:senaecelik/prescription/main/widget/dark_light_button.dart';
import 'package:senaecelik/prescription/main/widget/mobile_drawer.dart';
import 'package:senaecelik/prescription/main/widget/navbar_desktop.dart';
import 'package:senaecelik/provider/user_info_cubit.dart';
import 'package:senaecelik/provider/scroll_provider.dart';
import 'package:senaecelik/responsive/responsive.dart';
import 'package:senaecelik/utils/body_util.dart';
import 'package:senaecelik/utils/static_util.dart';

class MainSection extends StatefulWidget {
  const MainSection({super.key});

  @override
  State<MainSection> createState() => _MainSectionState();
}

class _MainSectionState extends State<MainSection> {
  @override
  void initState() {
    context.read<UserInfoCubit>().getUserInfo();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final scrollProvider = Provider.of<ScrollProvider>(context);

    return BlocConsumer<UserInfoCubit, UserInfoState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is LoadingState) {
          return Scaffold(
            body: Center(
              child: Container(
                child: Lottie.asset(StaticUtils.loading, height: 100),
              ),
            ),
          );
        } else if (state is LoadedState) {
          return Scaffold(
            extendBodyBehindAppBar: true,
            appBar: !Responsive.isDesktop(context) ? AppBar() : null,
            drawer:
                !Responsive.isDesktop(context) ? const MobileDrawer() : null,
            body: SafeArea(
              child: Stack(
                children: [
                  ListView.builder(
                    controller: scrollProvider.controller,
                    itemCount: BodyUtils.views.length,
                    itemBuilder: (context, index) => BodyUtils.views[index],
                  ),

                  // const ArrowOnTop(),

                  Responsive.isDesktop(context)
                      ? const NavbarDesktop()
                      : const SizedBox.shrink(),
                  // Responsive.isDesktop(context)
                  //     ? const Positioned(left: 20, top: 0, child: SocialLinks())
                  //     : const SizedBox.shrink(),
                  Responsive.isDesktop(context)
                      ? Positioned(
                          right: 30,
                          top: 0,
                          child: Column(
                            children: [
                              Container(
                                color:
                                    Theme.of(context).colorScheme.onBackground,
                                width: 3,
                                height: 170,
                              ),
                              const DarkLightButton(),
                            ],
                          ))
                      : const SizedBox.shrink()
                ],
              ),
            ),
          );
        } else if (state is ErrorState) {
          return Scaffold(
              body: Center(
                  child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                child: Lottie.asset(StaticUtils.error, height: 100),
              ),
              Text(
                state.message,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          )));
        } else {
          return const Text("Bir sorun oluştu");
        }
      },
    );
  }
}
