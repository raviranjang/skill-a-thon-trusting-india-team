import 'package:dsep_reference_flutter/animations/slide-right.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/course-list-item.widget.dart';

import 'package:dsep_reference_flutter/modules/courses/pages/view-course.page.dart';
import 'package:dsep_reference_flutter/services/user-data.service.dart';
import 'package:flutter/material.dart';

class SavedCoursesWidget extends StatefulWidget {
  const SavedCoursesWidget({super.key});

  @override
  State<SavedCoursesWidget> createState() => _SavedCoursesWidgetState();
}

class _SavedCoursesWidgetState extends State<SavedCoursesWidget> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: (UserDataService().savedCourses ?? []).map((course) {
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
    );
  }
}
