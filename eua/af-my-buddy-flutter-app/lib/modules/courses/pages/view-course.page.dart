import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/animations/slide-bottom.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/filled-button-with-feedback-animation.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/loading-animation.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/outlined-button-with-feedbak-animation.widget.dart';
import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-course.dart';
import 'package:dsep_reference_flutter/modules/courses/pages/enrolment-success.page.dart';
import 'package:dsep_reference_flutter/providers/authentication-state.provider.dart';
import 'package:dsep_reference_flutter/providers/user-state.provider.dart';
import 'package:dsep_reference_flutter/services/user-data.service.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.swagger.dart'
    as jobseekermodels;
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid_util.dart';
import 'package:uuid/uuid.dart';

class ViewCoursePage extends StatefulWidget {
  final SerializedCourse course;
  const ViewCoursePage({
    super.key,
    required this.course,
  });

  @override
  State<ViewCoursePage> createState() => _ViewCoursePageState();
}

class _ViewCoursePageState extends State<ViewCoursePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _pageInitialized = false;
  SerializedCourse? _currentCourse;
  // bool? _loadingInProgressFlag = true;
  bool? _enrolmentInProgressFlag;
  String? _transactionId;
  String? _messageId;
  bool? _watchlistingInProgressFlag;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      setState(() {
        _currentCourse = widget.course;
      });
      _transactionId = Uuid().v4();
      _messageId = Uuid().v4();
      jobseekermodels.Context newContext = jobseekermodels.Context(
          transactionId: _transactionId ?? "",
          messageId: _messageId ?? "",
          bppId: widget.course.bppId,
          bppUri: widget.course.bppUri);
      jobseekermodels.SelectCourseRequest? request =
          jobseekermodels.SelectCourseRequest(
        courseId: widget.course.courseId,
        context: newContext,
      );
      // setState(() {
      //   _loadingInProgressFlag = true;
      // });
      Provider.of<jobseekermodels.JobSeekerApi>(
        context,
        listen: false,
      )
          .courseSelectPost(body: request)
          .then((Response<jobseekermodels.SelectCourseResponse> response) {
        if (response.isSuccessful) {
          setState(() {
            // usermanagement.UserManagementApi.Course$Eligibility courseEligibility = [];
            // usermanagement.UserManagementApi.Course$CourseHighlights courseHighlights = [];
            // usermanagement.UserManagementApi.Course$Prerequisites coursePrerequisites = [];

            // response.body!.courseDetails.eligibility!.forEach((elem) {
            //   elem.forEach((eligibilityItem) {
            //     courseEligibility.add(
            //       usermanagement.UserManagementApi.Course$Eligibility$Item(
            //         name: eligibilityItem.name,
            //         value: eligibilityItem.value,
            //       ),
            //     );
            //   });
            // });
            // response.body!.courseDetails.courseHighlights!.forEach((element) {
            //   element.forEach((highlights) {
            //     courseHighlights.add(
            //       usermanagement.UserManagementApi.Course$CourseHighlights$Item(
            //         name: highlights.name,
            //         value: highlights.value,
            //       ),
            //     );
            //   });
            // });
            // response.body!.courseDetails.prerequisites!.forEach((element) {
            //   element.forEach((element) {
            //     coursePrerequisites.add(
            //       usermanagement.UserManagementApi.Course$Prerequisites$Item(
            //         name: element.name,
            //         value: element.value,
            //       ),
            //     );
            //   });
            // });

            _currentCourse = SerializedCourse(
              courseId: response.body!.course.id,
              providerId: response.body!.course.provider.id,
              title: response.body!.course.name,
              description: response.body!.course.description,
              duration: response.body!.course.duration,
              bppId: response.body!.context.bppId,
              bppUri: response.body!.context.bppUri,
              providerName: response.body!.course.provider.name,
              categoryName: response.body!.course.category!.name ?? "",
              price: response.body!.courseDetails.price,
              startDate: response.body!.courseDetails.startDate,
              endDate: response.body!.courseDetails.endDate,
              rating: response.body!.courseDetails.rating,
              credits: response.body!.courseDetails.credits,
              instructors: response.body!.courseDetails.instructors,
              offeringInstitue: response.body!.courseDetails.offeringInstitue,
              courseUrl: response.body!.courseDetails.courseUrl,
              enrollmentEndDate: response.body!.courseDetails.enrollmentEndDate,
              // eligibility: [courseEligibility],
              // courseHighlights: [courseHighlights],
              // prerequisites: [coursePrerequisites],
              imageUrl: (response.body!.course.imageLocations.length > 0)
                  ? response.body!.course.imageLocations[0]
                  : null,
            );

            // course = response.body!.course;
            // courseDetails = response.body!.courseDetails;
            // _additionalFormUrl = response.body!.additionalFormUrl;
            // _loadingInProgressFlag = false;
          });
        }
      });

      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  _register() {
    setState(() {
      _enrolmentInProgressFlag = true;
    });
    jobseekermodels.Context newContext = jobseekermodels.Context(
      transactionId: _transactionId ?? "",
      messageId: _messageId ?? "",
      bppId: widget.course.bppId,
      bppUri: widget.course.bppUri,
    );
    usermanagement.UserProfile userprofile =
        context.read<UserState>().userProfile;
    String? userDid = context.read<AuthenticationState>().did;

    jobseekermodels.CourseApplicantProfile applicantProfile =
        jobseekermodels.CourseApplicantProfile(
      name: userprofile.fullName ?? "",
      email: userprofile.email,
      contact: userDid ?? "",
    );
    jobseekermodels.ConfirmCourseRequest? request =
        jobseekermodels.ConfirmCourseRequest(
      courseProviderId: widget.course.providerId,
      courseId: widget.course.courseId,
      context: newContext,
      applicantProfile: applicantProfile,
    );
    // setState(() {
    //   _loadingInProgressFlag = true;
    // });
    Provider.of<jobseekermodels.JobSeekerApi>(
      context,
      listen: false,
    )
        .courseConfirmPost(body: request)
        .then((Response<jobseekermodels.ConfirmCourseResponse> response) {
      if (response.isSuccessful) {
        setState(() {
          _currentCourse!.status = response.body!.applicationState ?? "";
        });
        Provider.of<usermanagement.UserManagementApi>(
          context,
          listen: false,
        )
            .userItemCategoryEmailActionPost(
          category: 'course',
          email: context.read<AuthenticationState>().userEmail ?? "",
          action: 'applied',
          body: _currentCourse,
        )
            .then((Response<Object> response) {
          // if (response.isSuccessful) {
          setState(() {
            _enrolmentInProgressFlag = false;
          });
          UserDataService().removeSavedCourse(course: _currentCourse!);
          UserDataService().addNewAppliedCourse(course: _currentCourse!);
          Navigator.of(context).pushReplacement(
            SlideBottomRoute(
              page: EnrolmentSuccessPage(),
            ),
          );
          // }
        });
      }
    });
  }

  _buildCourseImage() {
    Widget? childWidget;
    if (_currentCourse!.imageUrl != null) {
      childWidget = Image.network(
        _currentCourse!.imageUrl!,
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
        repeat: ImageRepeat.noRepeat,
        height: 200,
        width: MediaQuery.of(context).size.width,
      );
    } else {
      childWidget = const Icon(
        Icons.menu_book,
        size: 48,
        color: Colors.black54,
      );
    }
    return Container(
      height: 200,
      alignment: Alignment.center,
      child: childWidget,
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text(
            "Course Details",
          ),
        ),
        body:
            // (_loadingInProgressFlag ?? false)
            //     ? LoadingAnimationWidget()
            //     :
            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Container(
                color: GlobalConstants.backgroundColor.withOpacity(0.1),
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildCourseImage(),
                      Container(
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                height: 8,
                              ),
                              Row(
                                children: <Widget>[
                                  Expanded(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        DecoratedTextWidget(
                                          content: _currentCourse!.title,
                                          fontSize: 16,
                                          bold: true,
                                          maxLines: 2,
                                          overflowEllipsisFlag: true,
                                        ),
                                        DecoratedTextWidget(
                                          content:
                                              _currentCourse!.rating ?? "3.0",
                                        ),
                                      ],
                                    ),
                                  ),
                                  (widget.course.status != null)
                                      ? Container(
                                          width: 100,
                                          alignment: Alignment.centerRight,
                                          child: DecoratedTextWidget(
                                            textAlign: TextAlign.right,
                                            content: widget.course.status!
                                                .toUpperCase(),
                                            backgroundColor: Theme.of(context)
                                                .colorScheme
                                                .secondaryContainer,
                                            textColor: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                            fontSize: 12,
                                            bold: true,
                                          ),
                                        )
                                      : Container(),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                  left: 3.0,
                                ),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    (_currentCourse!.offeringInstitue != null)
                                        ? Text(
                                            _currentCourse!.offeringInstitue!)
                                        : Container(),
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 2.0, vertical: 4.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          (_currentCourse!.price != null)
                                              ? ("₹" + _currentCourse!.price!)
                                              : "Free",
                                          style: const TextStyle(
                                            fontSize: 18,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        FilledButtonWithFeedbackAnimationWidget(
                                          color: Colors.amber,
                                          textColor: Colors.black87,
                                          processingFlag:
                                              _enrolmentInProgressFlag ?? false,
                                          text: (_currentCourse!.price != null)
                                              ? "BUY NOW"
                                              : "ENROLL NOW",
                                          onPressed: _register,
                                        ),
                                        const SizedBox(
                                          height: 6,
                                        ),
                                        !(_currentCourse!.userSavedItem ??
                                                false)
                                            ? OutlinedButtonWithFeedbackAnimationWidget(
                                                processingFlag:
                                                    _watchlistingInProgressFlag ??
                                                        false,
                                                text: "ADD TO WATCHLIST",
                                                onPressed: () {
                                                  setState(() {
                                                    _watchlistingInProgressFlag =
                                                        true;
                                                    _currentCourse!
                                                        .userSavedItem = true;
                                                  });
                                                  Provider.of<
                                                          usermanagement
                                                              .UserManagementApi>(
                                                    context,
                                                    listen: false,
                                                  )
                                                      .userItemCategoryEmailActionPost(
                                                    category: 'course',
                                                    email: context
                                                            .read<
                                                                AuthenticationState>()
                                                            .userEmail ??
                                                        "",
                                                    action: 'save',
                                                    body: _currentCourse,
                                                  )
                                                      .then((Response<Object>
                                                          response) {
                                                    if (response.isSuccessful) {
                                                      setState(() {
                                                        _watchlistingInProgressFlag =
                                                            false;
                                                      });
                                                      UserDataService()
                                                          .addNewSavedCourse(
                                                              course:
                                                                  _currentCourse!);
                                                    }
                                                  });
                                                },
                                              )
                                            : OutlinedButtonWithFeedbackAnimationWidget(
                                                processingFlag:
                                                    _watchlistingInProgressFlag ??
                                                        false,
                                                text: "REMOVE FROM WATCHLIST",
                                                onPressed: () {
                                                  setState(() {
                                                    _watchlistingInProgressFlag =
                                                        true;
                                                  });
                                                  Provider.of<
                                                          usermanagement
                                                              .UserManagementApi>(
                                                    context,
                                                    listen: false,
                                                  )
                                                      .userItemCategoryEmailActionPost(
                                                    category: 'course',
                                                    email: context
                                                            .read<
                                                                AuthenticationState>()
                                                            .userEmail ??
                                                        "",
                                                    action: 'unsave',
                                                    body: _currentCourse,
                                                  )
                                                      .then((Response<Object>
                                                          response) {
                                                    if (response.isSuccessful) {
                                                      setState(() {
                                                        _watchlistingInProgressFlag =
                                                            false;
                                                        _currentCourse!
                                                                .userSavedItem =
                                                            false;
                                                      });
                                                      UserDataService()
                                                          .removeSavedCourse(
                                                              course:
                                                                  _currentCourse!);
                                                    }
                                                  });
                                                },
                                              ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              DecoratedTextWidget(
                                content: _currentCourse!.description ?? "",
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            // Container(
            //   color: Colors.white,
            //   alignment: Alignment.center,
            //   padding: const EdgeInsets.only(
            //     top: 8,
            //     bottom: 20,
            //   ),
            //   child: ButtonWithFeedbackAnimationWidget(
            //     processingFlag: _enrolmentInProgressFlag ?? false,
            //     text: "SIGN UP FOR THIS COURSE",
            //     onPressed: _register,
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
