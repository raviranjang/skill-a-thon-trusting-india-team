import 'dart:convert';

import 'package:chopper/chopper.dart';
import 'package:dsep_reference_flutter/animations/slide-bottom.animation.dart';
import 'package:dsep_reference_flutter/common/widgets/filled-button-with-feedback-animation.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/decorated-text.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/loading-animation.widget.dart';
import 'package:dsep_reference_flutter/common/widgets/outlined-button-with-feedbak-animation.widget.dart';
import 'package:dsep_reference_flutter/global_constants.dart';
import 'package:dsep_reference_flutter/local_models/serializable-models/serialized-job.dart';
import 'package:dsep_reference_flutter/modules/jobs/pages/job-application.page.dart';
import 'package:dsep_reference_flutter/providers/authentication-state.provider.dart';
import 'package:dsep_reference_flutter/services/user-data.service.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.models.swagger.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.swagger.dart'
    as jobseekermodels;
import 'package:dsep_reference_flutter/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:uuid/uuid_util.dart';
import 'package:uuid/uuid.dart';

class ViewJobPage extends StatefulWidget {
  final SerializedJob job;
  const ViewJobPage({
    super.key,
    required this.job,
  });

  @override
  State<ViewJobPage> createState() => _ViewJobPageState();
}

class _ViewJobPageState extends State<ViewJobPage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  bool _pageInitialized = false;
  SerializedJob? _currentJob;
  // bool? _loadingInProgressFlag = true;
  bool? _registrationInProgressFlag;
  String? _transactionId;
  String? _messageId;
  bool? _watchlistingInProgressFlag;
  // TabController? _tabController;

  @override
  void didChangeDependencies() {
    if (!_pageInitialized) {
      setState(() {
        _currentJob = widget.job;
      });
      _transactionId = Uuid().v4();
      _messageId = Uuid().v4();
      jobseekermodels.Context newContext = jobseekermodels.Context(
        transactionId: _transactionId ?? "",
        messageId: _messageId ?? "",
        bppId: widget.job.bppId,
        bppUri: widget.job.bppUri,
      );
      jobseekermodels.SelectJob? request = jobseekermodels.SelectJob(
        companyId: widget.job.company,
        jobs: jobseekermodels.SelectJob$Jobs(jobId: widget.job.jobId),
        context: newContext,
      );
      // setState(() {
      //   _loadingInProgressFlag = true;
      // });
      Provider.of<jobseekermodels.JobSeekerApi>(
        context,
        listen: false,
      )
          .jobSelectPost(body: request)
          .then((Response<jobseekermodels.SelectedJobResponse> response) {
        if (response.isSuccessful) {
          setState(() {
            jobseekermodels.Company company = response.body!.company!;
            response.body!.selectedJobs;
            Map<String, dynamic> selectedJobResponseMap =
                jsonDecode(response.bodyString);
            List<Map<String, dynamic>> selectedJobsMapList =
                (selectedJobResponseMap["selectedJobs"]
                    .cast<Map<String, dynamic>>());
            Map<String, dynamic> selectedJobMap = selectedJobsMapList[0];
            SelectedJob selectedJob = SelectedJob.fromJson(selectedJobMap);
            List<Map<String, dynamic>> locationMapList =
                (selectedJobMap["locations"].cast<Map<String, dynamic>>());
            List<Map<String, dynamic>> fulfillmentCategoryMapList =
                (selectedJobMap["fulfillmentCategory"]
                    .cast<Map<String, dynamic>>());
            List<JobFulfillmentCategory> fulfillmentCategory = [];
            fulfillmentCategoryMapList.forEach((element) {
              fulfillmentCategory.add(JobFulfillmentCategory.fromJson(element));
            });
            _currentJob = SerializedJob(
              jobId: selectedJob.jobId,
              role: selectedJob.role,
              bppId: response.body!.context.bppId,
              bppUri: response.body!.context.bppUri,
              providerId: "",
              company: company.name ?? "",
              data: "",
              description: selectedJob.description,
              city: locationMapList[0]["city"],
              fulfillmentCategory: fulfillmentCategory,
              responsibilities: selectedJob.responsibilities,
            );
            // _loadingInProgressFlag = false;
          });
        }
      });

      _pageInitialized = true;
    }
    super.didChangeDependencies();
  }

  _apply() {
    Navigator.of(context).push(
      SlideBottomRoute(
        page: JobApplicationPage(
          job: _currentJob,
          transactionId: _transactionId,
          messageId: _messageId,
        ),
      ),
    );
  }

  _buildJobImage() {
    if (_currentJob!.companyLogo != null) {
      return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          border: Border.all(
            width: 0.5,
            color: Colors.white70,
          ),
          shape: BoxShape.circle,
          image: DecorationImage(
            fit: BoxFit.contain,
            alignment: Alignment.centerLeft,
            image: NetworkImage(
              _currentJob!.companyLogo!,
            ),
          ),
        ),
      );
    } else {
      return Container(
        height: 80,
        width: 80,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: GlobalConstants.backgroundColor,
          // border: Border.all(
          //   color: Theme.of(context).colorScheme.outline,
          // ),
          borderRadius: const BorderRadius.all(
            Radius.circular(80),
          ),
        ),
        child: const Icon(
          Icons.business_center,
          size: 36,
          color: Colors.white70,
        ),
      );
    }
  }

  _buildJobDescriptionWidget() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DecoratedTextWidget(
              content: "Job Description",
              textAlign: TextAlign.start,
            ),
            DecoratedTextWidget(
              content: _currentJob!.description,
              textAlign: TextAlign.start,
              fontSize: 12,
              textColor: Colors.black54,
            ),
            SizedBox(
              height: 20,
            ),
            DecoratedTextWidget(
              content: "Requirements",
              textAlign: TextAlign.start,
            ),
            Column(
              children: (_currentJob!.responsibilities ?? [])
                  .map((String responsibility) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 8,
                      ),
                      child: Container(
                        height: 4,
                        width: 4,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(4),
                          ),
                          color: Colors.black54,
                        ),
                      ),
                    ),
                    Expanded(
                      child: DecoratedTextWidget(
                        content: responsibility,
                        textAlign: TextAlign.start,
                        fontSize: 12,
                        textColor: Colors.black54,
                      ),
                    )
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _scaffoldKey,
        body:
            // (_loadingInProgressFlag ?? false)
            //     ? LoadingAnimationWidget()
            //     :
            Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              height: 200,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: 110,
                    color: GlobalConstants.backgroundColor.withOpacity(0.1),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 10,
                        vertical: 8,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.only(
                              top: 10,
                            ),
                            child: GestureDetector(
                              child: const Icon(Icons.arrow_back_ios_new),
                              onTap: () {
                                Navigator.of(context).pop();
                              },
                            ),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              DecoratedTextWidget(
                                content: _currentJob!.role,
                                maxLines: 1,
                                overflowEllipsisFlag: true,
                              ),
                              (_currentJob!.fulfillmentCategory != null)
                                  ? Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: (_currentJob!
                                                  .fulfillmentCategory ??
                                              [])
                                          .asMap()
                                          .map((int index,
                                              Object fulfillmentObject) {
                                            jobseekermodels
                                                    .JobFulfillmentCategory
                                                fulfillmentCategory =
                                                fulfillmentObject
                                                    as jobseekermodels
                                                        .JobFulfillmentCategory;
                                            return MapEntry(
                                              index,
                                              Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: <Widget>[
                                                  Text(
                                                    (fulfillmentObject.type ??
                                                            '')
                                                        .toLowerCase(),
                                                    style: const TextStyle(
                                                      fontSize: 12,
                                                      color: Colors.black54,
                                                    ),
                                                  ),
                                                  (index !=
                                                          (_currentJob!
                                                                  .fulfillmentCategory!
                                                                  .length -
                                                              1))
                                                      ? Container(
                                                          margin:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            horizontal: 6,
                                                          ),
                                                          child: Container(
                                                            height: 4,
                                                            width: 4,
                                                            decoration:
                                                                const BoxDecoration(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .all(
                                                                Radius.circular(
                                                                    4),
                                                              ),
                                                              color: Colors
                                                                  .black54,
                                                            ),
                                                          ),
                                                        )
                                                      : Container(),
                                                ],
                                              ),
                                            );
                                          })
                                          .values
                                          .toList())
                                  : Container(),
                            ],
                          ),
                          Container(
                            margin: const EdgeInsets.only(
                              top: 10,
                            ),
                            child: GestureDetector(
                              child: Icon((_currentJob!.userSavedItem ?? false)
                                  ? Icons.bookmark
                                  : Icons.bookmark_add_outlined),
                              onTap: () {
                                // debugPrint(
                                //     "watchlist input, fulfillmentCategory: ");
                                // debugPrint(jsonEncode(
                                //     _currentJob!.fulfillmentCategory));
                                if (!(_currentJob!.userSavedItem ?? false)) {
                                  _currentJob!.userSavedItem = true;
                                  Provider.of<usermanagement.UserManagementApi>(
                                    context,
                                    listen: false,
                                  )
                                      .userItemCategoryEmailActionPost(
                                    category: 'job',
                                    email: context
                                            .read<AuthenticationState>()
                                            .userEmail ??
                                        "",
                                    action: 'save',
                                    body: _currentJob,
                                  )
                                      .then((Response<Object> response) {
                                    if (response.isSuccessful) {
                                      setState(() {
                                        _currentJob!.userSavedItem = true;
                                      });
                                      UserDataService()
                                          .addNewSavedJob(job: _currentJob!);
                                    }
                                  });
                                } else {
                                  Provider.of<usermanagement.UserManagementApi>(
                                    context,
                                    listen: false,
                                  )
                                      .userItemCategoryEmailActionPost(
                                    category: 'job',
                                    email: context
                                            .read<AuthenticationState>()
                                            .userEmail ??
                                        "",
                                    action: 'unsave',
                                    body: _currentJob,
                                  )
                                      .then((Response<Object> response) {
                                    if (response.isSuccessful) {
                                      setState(() {
                                        _currentJob!.userSavedItem = false;
                                      });
                                      UserDataService()
                                          .removeSavedJob(job: _currentJob!);
                                    }
                                  });
                                }
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          _buildJobImage(),
                          const SizedBox(
                            height: 6,
                          ),
                          Text(
                            _currentJob!.company,
                          ),
                          Text(
                            _currentJob!.city ?? "",
                            style: const TextStyle(
                              color: Colors.black54,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: DefaultTabController(
                length: 2,
                child: Column(
                  children: <Widget>[
                    Container(
                      child: const TabBar(
                        indicatorColor: GlobalConstants.backgroundColor,
                        tabs: <Widget>[
                          Tab(
                            child: Text(
                              "Description",
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              "About Company",
                              style: TextStyle(
                                color: Colors.black87,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        children: <Widget>[
                          _buildJobDescriptionWidget(),
                          Container(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: const EdgeInsets.only(
                top: 8,
                bottom: 20,
              ),
              child: FilledButtonWithFeedbackAnimationWidget(
                color: Colors.amber,
                textColor: Colors.black87,
                processingFlag: _registrationInProgressFlag ?? false,
                text: "APPLY NOW",
                onPressed: _apply,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
