import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/modules/courses/widgets/applied-courses.widget.dart';
import 'package:dsep_reference_flutter/modules/courses/widgets/course-list.widget.dart';
import 'package:dsep_reference_flutter/modules/courses/widgets/saved-courses.widget.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagementapi;
import 'package:flutter/material.dart';

class CoursesDashboardWidget extends StatefulWidget {
  final String? filterName;
  const CoursesDashboardWidget({
    super.key,
    this.filterName,
  });

  @override
  State<CoursesDashboardWidget> createState() => _CoursesDashboardWidgetState();
}

class _CoursesDashboardWidgetState extends State<CoursesDashboardWidget> {
  bool _pageInitialized = false;
  // List<CourseSummary>? _courses;
  String? _currentStatusFilterName;
  List<String>? _filterNames = ["ALL COURSES", "WATCHED", "ENROLLED"];

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      setState(() {
        _currentStatusFilterName = widget.filterName ?? "ALL COURSES";
      });
      // _loadCourses();
      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  // final _controller = PageController();

  // _loadCourses() {
  //   switch (_currentStatusFilterName!) {
  //     case 'ALL COURSES':
  //       {
  //         _controller.animateToPage(
  //           1,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );
  //         break;
  //       }
  //     case 'WATCHED':
  //       {
  //         _controller.animateToPage(
  //           1,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );
  //         break;
  //       }
  //     case 'ENROLLED':
  //       {
  //         _controller.animateToPage(
  //           2,
  //           duration: const Duration(milliseconds: 300),
  //           curve: Curves.ease,
  //         );

  //         break;
  //       }
  //   }
  //   return;
  // }

  _buildCoursesListWidget() {
    switch (_currentStatusFilterName!) {
      case 'ALL COURSES':
        {
          return CourseListWidget();
        }
      case 'WATCHED':
        {
          return SavedCoursesWidget();
        }
      case 'ENROLLED':
        {
          return AppliedCoursesWidget();
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget _buildStatusFilters() {
    return Container(
      // width: 150,
      // height: 40,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: (_filterNames ?? []).map((String filterName) {
            return Container(
              height: 34,
              margin: const EdgeInsets.all(4.0),
              child: ActionChip(
                backgroundColor: ((_currentStatusFilterName != null) &&
                        (_currentStatusFilterName == filterName))
                    ? GlobalConstants.backgroundColor
                    : Theme.of(context).colorScheme.onInverseSurface,
                label: Text(
                  filterName.toUpperCase(),
                  style: TextStyle(
                    color: ((_currentStatusFilterName != null) &&
                            (_currentStatusFilterName == filterName))
                        ? Colors.white
                        : Colors.black87,
                    fontWeight: FontWeight.normal,
                    fontSize: 10,
                  ),
                ),
                shape: RoundedRectangleBorder(
                  side: ((_currentStatusFilterName != null) &&
                          (_currentStatusFilterName == filterName))
                      ? BorderSide.none
                      : const BorderSide(
                          width: 0.2,
                          color: Colors.black54,
                        ),
                  borderRadius: const BorderRadius.all(
                    Radius.circular(
                      50,
                    ),
                  ),
                ),
                onPressed: () {
                  if (_currentStatusFilterName != filterName) {
                    setState(() {
                      _currentStatusFilterName = filterName;
                    });
                    // _loadCourses();
                  }
                },
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Container(
          height: 40,
          color: GlobalConstants.backgroundColor.withOpacity(0.1),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(
            left: 30,
          ),
          child: const Text(
            "Courses",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Container(
          color: GlobalConstants.backgroundColor.withOpacity(0.1),
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.only(
            left: 20,
          ),
          child: _buildStatusFilters(),
        ),
        Expanded(
          child: _buildCoursesListWidget(),
        )
      ],
    );
  }
}
