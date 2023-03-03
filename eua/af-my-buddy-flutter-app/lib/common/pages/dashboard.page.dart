import 'package:chopper/chopper.dart';
import 'package:my_buddy/common/widgets/opener.widget.dart';
import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/modules/courses/services/courses-data.service.dart';
import 'package:my_buddy/modules/courses/widgets/courses-dashboard.widget.dart';
import 'package:my_buddy/modules/jobs/services/jobs-data.service.dart';
import 'package:my_buddy/modules/jobs/widgets/jobs-dashboard.widget.dart';
import 'package:my_buddy/modules/profile/pages/profile-dashboard.page.dart';
import 'package:my_buddy/providers/authentication-state.provider.dart';
import 'package:my_buddy/providers/user-state.provider.dart';
import 'package:my_buddy/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with TickerProviderStateMixin {
  int? _selectedIndex;
  bool _pageInitialized = false;
  TabController? _tabController;
  int _currentTabIndex = 0;
  bool _pageInitiaized = false;
  @override
  void didChangeDependencies() {
    if (!_pageInitiaized) {
      JobsDataService().initialize(
        context: context,
      );
      CoursesDataService().initialize(
        context: context,
      );

      if (context.read<UserState>().userProfile == null) {
        Provider.of<usermanagement.UserManagementApi>(
          context,
          listen: false,
        )
            .userProfileEmailGet(
                email: (context.read<AuthenticationState>().userEmail ?? "")
                    .toLowerCase())
            .then((Response<usermanagement.UserProfile> response) {
          if (response.isSuccessful) {
            context.read<UserState>().setUserProfile(
                  user: response.body,
                  context: context,
                );
          }
        });
      }
      _tabController = TabController(initialIndex: 0, length: 4, vsync: this);
      _tabController!.addListener(() {
        setState(() {
          _currentTabIndex = _tabController!.index;
        });
      });
      _pageInitiaized = true;
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _tabController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> tabs = [
      FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          // padding: Platform.isIOS
          //     ? EdgeInsets.only(
          //         bottom: 20,
          //       )
          //     : null,
          color: GlobalConstants.backgroundColor,
          child: Tab(
            icon: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: (_currentTabIndex == 0)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : null,
                borderRadius: BorderRadius.all(Radius.circular(
                  30,
                )),
              ),
              child: Icon(
                Icons.home,
                size: 20,
                color: (_currentTabIndex == 0)
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.white70,
              ),
            ),
            child: Text("HOME",
                style: TextStyle(
                  color: (_currentTabIndex == 0)
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Colors.white70,
                )),
          ),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          // padding: Platform.isIOS
          //     ? EdgeInsets.only(
          //         bottom: 20,
          //       )
          //     : null,
          color: GlobalConstants.backgroundColor,
          child: Tab(
            icon: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: (_currentTabIndex == 1)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : null,
                borderRadius: BorderRadius.all(Radius.circular(
                  30,
                )),
              ),
              child: Icon(
                Icons.business_center,
                size: 20,
                color: (_currentTabIndex == 1)
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.white70,
              ),
            ),
            child: Text("JOBS",
                style: TextStyle(
                  color: (_currentTabIndex == 1)
                      ? Theme.of(context).colorScheme.primaryContainer
                      : Colors.white70,
                )),
          ),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          // padding: Platform.isIOS
          //     ? EdgeInsets.only(
          //         bottom: 20,
          //       )
          //     : null,
          color: GlobalConstants.backgroundColor,
          child: Tab(
            icon: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: (_currentTabIndex == 2)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : null,
                borderRadius: BorderRadius.all(Radius.circular(
                  30,
                )),
              ),
              child: Icon(
                Icons.menu_book_outlined,
                size: 20,
                color: (_currentTabIndex == 2)
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.white70,
              ),
            ),
            child: Text(
              "COURSES",
              style: TextStyle(
                color: (_currentTabIndex == 2)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Colors.white70,
              ),
            ),
          ),
        ),
      ),
      FractionallySizedBox(
        widthFactor: 1.0,
        child: Container(
          // padding: Platform.isIOS
          //     ? EdgeInsets.only(
          //         bottom: 20,
          //       )
          //     : null,
          color: GlobalConstants.backgroundColor,
          child: Tab(
            icon: Container(
              width: 50,
              height: 30,
              decoration: BoxDecoration(
                color: (_currentTabIndex == 3)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : null,
                borderRadius: BorderRadius.all(Radius.circular(
                  30,
                )),
              ),
              child: Icon(
                Icons.account_circle,
                size: 20,
                color: (_currentTabIndex == 3)
                    ? Theme.of(context).colorScheme.onPrimaryContainer
                    : Colors.white70,
              ),
            ),
            child: Text(
              "MY STUFF",
              style: TextStyle(
                color: (_currentTabIndex == 3)
                    ? Theme.of(context).colorScheme.primaryContainer
                    : Colors.white70,
              ),
            ),
          ),
        ),
      ),
    ];

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white.withOpacity(0.95),
        body: DefaultTabController(
          length: 4,
          child: Column(
            children: <Widget>[
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    OpenerWidget(
                      onTabChangeRequest: ({required int tabIndex}) {
                        _tabController!.animateTo(tabIndex);
                      },
                    ),
                    JobsDashboardWidget(),
                    CoursesDashboardWidget(),
                    // UserProfileWidget(),
                    ProfileDashboard(),
                  ],
                ),
              ),
              Container(
                color: GlobalConstants.backgroundColor,
                child: TabBar(
                  indicator: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                  ),
                  controller: _tabController,
                  indicatorColor: GlobalConstants.backgroundColor,
                  tabs: tabs,
                ),
              ),
            ],
          ),
        ),
      ),
      // ),
    );

    // return SafeArea(
    //   child: Scaffold(
    //     body: Column(
    //       mainAxisAlignment: MainAxisAlignment.start,
    //       crossAxisAlignment: CrossAxisAlignment.stretch,
    //       children: <Widget>[
    //         Expanded(
    //           child: PageView(
    //             physics: const AlwaysScrollableScrollPhysics(),
    //             controller: _controller,
    //             children: const [
    //               OpenerWidget(),
    //               JobListWidget(),
    //               CourseListWidget(),
    //               // UserProfileWidget(),
    //               ProfileDashboard(),
    //             ],
    //           ),
    //         ),
    //       ],
    //     ),
    //     bottomNavigationBar: BottomNavigationBar(
    //       backgroundColor: Colors.white,
    //       items: <BottomNavigationBarItem>[
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             ((_selectedIndex ?? 0) == 0)
    //                 ? Icons.home_rounded
    //                 : Icons.home_outlined,
    //             color: GlobalConstants.backgroundColor,
    //           ),
    //           label: 'Home',
    //         ),

    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             ((_selectedIndex ?? 0) == 1)
    //                 ? Icons.business_center_rounded
    //                 : Icons.business_center_outlined,
    //             color: GlobalConstants.backgroundColor,
    //           ),
    //           label: 'Jobs',
    //         ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             ((_selectedIndex ?? 0) == 2)
    //                 ? Icons.menu_book
    //                 : Icons.menu_book_outlined,
    //             color: GlobalConstants.backgroundColor,
    //           ),
    //           label: 'Courses',
    //         ),
    //         // BottomNavigationBarItem(
    //         //   icon: Icon(
    //         //     ((_selectedIndex ?? 0) == 2) ? Icons.book : Icons.book_outlined,
    //         //     color: GlobalConstants.backgroundColor,
    //         //   ),
    //         //   label: 'Saved Jobs',
    //         // ),
    //         BottomNavigationBarItem(
    //           icon: Icon(
    //             ((_selectedIndex ?? 0) == 3)
    //                 ? Icons.account_circle
    //                 : Icons.account_circle_outlined,
    //             color: GlobalConstants.backgroundColor,
    //           ),
    //           label: 'Profile',
    //         ),
    //       ],
    //       currentIndex: _selectedIndex ?? 0,
    //       onTap: (int? index) {
    //         // debugPrint("BottomNavigatorBar onTap called with index: " +
    //         //     (index ?? 0).toString());
    //         if ((index ?? 0) != (_selectedIndex ?? 0)) {
    //           // debugPrint("index != selectedIndex");
    //           if (((index ?? 0) > (_selectedIndex ?? 0)) &&
    //               (((index ?? 0) - (_selectedIndex ?? 0)) == 1)) {
    //             _controller.nextPage(
    //               duration: const Duration(milliseconds: 300),
    //               curve: Curves.ease,
    //             );
    //             // debugPrint("controller.nextPage called");
    //           } else if (((index ?? 0) < (_selectedIndex ?? 0)) &&
    //               (((_selectedIndex ?? 0) - (index ?? 0)) == 1)) {
    //             _controller.previousPage(
    //               duration: const Duration(milliseconds: 300),
    //               curve: Curves.ease,
    //             );
    //           } else {
    //             _controller.jumpToPage(index ?? 0);
    //           }
    //           setState(() {
    //             _selectedIndex = index;
    //           });
    //         }
    //       },
    //     ),
    //   ),
    // );
  }
}
