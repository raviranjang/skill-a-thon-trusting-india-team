import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:my_buddy/animations/slide-bottom.animation.dart';
import 'package:my_buddy/animations/slide-right.animation.dart';
import 'package:my_buddy/common/widgets/decorated-text.widget.dart';
import 'package:my_buddy/common/widgets/course-list-item.widget.dart';
import 'package:my_buddy/common/widgets/loading-animation.widget.dart';

import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-course.dart';
import 'package:my_buddy/modules/courses/pages/search-courses.page.dart';
import 'package:my_buddy/modules/courses/pages/view-course.page.dart';
import 'package:my_buddy/modules/courses/services/courses-data.service.dart';
import 'package:my_buddy/swagger_models_apis/job_seeker_api.swagger.dart'
    as jobseekerapi;
import 'package:my_buddy/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagementapi;
import 'package:rxdart/rxdart.dart';
import './courses-filter.widget.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_svg/svg.dart';

class CourseListWidget extends StatefulWidget {
  const CourseListWidget({super.key});

  @override
  State<CourseListWidget> createState() => _CourseListWidgetState();
}

class _CourseListWidgetState extends State<CourseListWidget> {
  bool _pageInitialized = false;
  // List<CourseSummary>? _courses;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      jobseekerapi.SearchCourseRequest _searchCourseBody =
          jobseekerapi.SearchCourseRequest(
        searchTitle: "Python",
      );

      CoursesDataService()
          .updateSearchCourseRequestInput(searchCourseInput: _searchCourseBody);

      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  bool _streamControllerFlag = true;
  bool streamControllerCondition(dynamic i) {
    return _streamControllerFlag;
  }

  @override
  dispose() {
    _streamControllerFlag = false;
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Container(
              height: 40,
              color: GlobalConstants.backgroundColor.withOpacity(0.1),
            ),
            Container(
              height: 80,
              width: (MediaQuery.of(context).size.width - 30),
              padding: const EdgeInsets.symmetric(
                vertical: 10,
              ),
              child: GestureDetector(
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                    ),
                    borderRadius: const BorderRadius.all(
                      Radius.circular(
                        20,
                      ),
                    ),
                    color: Colors.white,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          Icons.search,
                          color: Colors.black45,
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Expanded(
                          child: DecoratedTextWidget(
                            content: "Python",
                            textColor: Colors.black45,
                            maxLines: 1,
                            overflowEllipsisFlag: true,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {
                  Navigator.of(context).push(
                    SlideBottomRoute(
                      page: const CoursesFilterWidget(),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
        Expanded(
          child: StreamBuilder(
            stream: CombineLatestStream.list([
              CoursesDataService()
                  .loadingInProgressFlag$
                  .takeWhile(streamControllerCondition),
              CoursesDataService()
                  .allcourses$
                  .takeWhile(streamControllerCondition),
            ]).takeWhile(streamControllerCondition),
            builder: (BuildContext context, AsyncSnapshot ss) {
              if ((ss.data != null) && (ss.data != null)) {
                bool? loadingInProgressFlag = ss.data[0] as bool?;
                List<SerializedCourse>? courses =
                    ss.data[1] as List<SerializedCourse>?;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    (!(loadingInProgressFlag ?? false))
                        ? (((courses ?? []).length == 0)
                            ? Container(
                                margin: const EdgeInsets.only(
                                  top: 100,
                                ),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/svgs/no_results.svg',
                                  height: 180,
                                  // color: Colors.black,
                                ))
                            : Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 15,
                                  vertical: 6,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: <Widget>[
                                    Text(
                                      ((courses ?? []).length.toString() +
                                          " courses found"),
                                    ),
                                    GestureDetector(
                                      child: SvgPicture.asset(
                                          'assets/svgs/ic_filter.svg'),
                                      onTap: () {
                                        Navigator.of(context).push(
                                          SlideBottomRoute(
                                            page: const SearchCoursesPage(),
                                          ),
                                        );
                                      },
                                    ),
                                  ],
                                ),
                              ))
                        : Container(),
                    Expanded(
                      child: (loadingInProgressFlag ?? false)
                          ? LoadingAnimationWidget()
                          : SingleChildScrollView(
                              child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: (courses ?? []).map((course) {
                                return GestureDetector(
                                    child: Container(
                                      height: 150,
                                      decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(10),
                                        ),
                                      ),
                                      margin: const EdgeInsets.all(8.0),
                                      padding: const EdgeInsets.all(8.0),
                                      child: CourseListItemWidget(
                                        course: course,
                                      ),
                                    ),
                                    onTap: () {
                                      Navigator.of(context)
                                          .push(SlideRightRoute(
                                              page: ViewCoursePage(
                                        course: course,
                                      )));
                                    });
                              }).toList(),
                            )),
                    ),
                  ],
                );
              } else {
                return Container();
              }
            },
          ),
        )
      ],
    );
  }
}
