import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/animations/slide-bottom.animation.dart';
import 'package:dsep_reference_flutter/animations/slide-right.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/course-list-item.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/loading-animation.widget.dart';

import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-course.dart';
import 'package:dsep_reference_flutter/modules/courses/pages/search-courses.page.dart';
import 'package:dsep_reference_flutter/modules/courses/pages/view-course.page.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.swagger.dart'
    as jobseekerapi;
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagementapi;
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
  List<SerializedCourse>? _courses = [];
  bool _loadingCoursesInProgressFlag = false;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      _loadAllCourses();
      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  _loadAllCourses() {
    setState(() {
      _loadingCoursesInProgressFlag = true;
    });
    jobseekerapi.SearchCourseRequest _searchCourseBody =
        jobseekerapi.SearchCourseRequest(
      searchTitle: 'Problem solving Aspects and Python Programming',
    );
    // SearchCourse? _searchCourseBody = SearchCourse.fromJson({});
    Provider.of<jobseekerapi.JobSeekerApi>(
      context,
      listen: false,
    )
        .courseSearchPost(body: _searchCourseBody)
        .then((Response<jobseekerapi.CourseResults> response) {
      if (response.isSuccessful) {
        debugPrint("courses result bodyString: ");
        debugPrint(response.bodyString);
        Map<String, dynamic> searchCourseResponseMap =
            jsonDecode(response.bodyString);
        jobseekerapi.Context jobseekerContext = response.body!.context;
        setState(() {
          _courses = [];
          List<Map<String, dynamic>> courseResults = [];

          searchCourseResponseMap["courses"].forEach((dynamic courseResult) {
            courseResults.add(courseResult as Map<String, dynamic>);
          });
          courseResults.forEach((courseResultMap) {
            jobseekerapi.Course jobseekerCourse = jobseekerapi.Course.fromJson(
                courseResultMap as Map<String, dynamic>);
            SerializedCourse newCourse = SerializedCourse(
              courseId: jobseekerCourse.id,
              providerId: jobseekerCourse.provider.id,
              providerName: jobseekerCourse.provider.name,
              title: jobseekerCourse.name,
              duration: jobseekerCourse.duration,
              bppId: jobseekerContext.bppId,
              bppUri: jobseekerContext.bppUri,
              categoryName: jobseekerCourse.category!.name ?? "",
              imageUrl: (jobseekerCourse.imageLocations.length > 0)
                  ? jobseekerCourse.imageLocations[0]
                  : null,
            );

            _courses!.add(newCourse);
          });
          _loadingCoursesInProgressFlag = false;
        });
      }
    });
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
                            content:
                                "Search by skills, location, experience, etc...",
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              (!_loadingCoursesInProgressFlag)
                  ? Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 6,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            ((_courses ?? []).length.toString() +
                                " courses found"),
                          ),
                          GestureDetector(
                            child:
                                SvgPicture.asset('assets/svgs/ic_filter.svg'),
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
                    )
                  : Container(),
              Expanded(
                child: _loadingCoursesInProgressFlag
                    ? LoadingAnimationWidget()
                    : SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: (_courses ?? []).map((course) {
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
                                  Navigator.of(context).push(SlideRightRoute(
                                      page: ViewCoursePage(
                                    course: course,
                                  )));
                                });
                          }).toList(),
                        ),
                      ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
