import 'package:chopper/chopper.dart';
import 'package:my_buddy/animations/slide-bottom.animation.dart';
import 'package:my_buddy/common/widgets/decorated-text.widget.dart';
import 'package:my_buddy/common/widgets/filled-button-with-feedback-animation.widget.dart';
import 'package:my_buddy/local_models/serializable-models/serialized-job.dart';
import 'package:my_buddy/modules/jobs/pages/application-success.page.dart';
import 'package:my_buddy/modules/jobs/pages/select-multiple-certificates.page.dart';
import 'package:my_buddy/providers/authentication-state.provider.dart';
import 'package:my_buddy/services/user-data.service.dart';
import 'package:my_buddy/swagger_models_apis/cloud_wallet_api.swagger.dart';
import 'package:flutter/material.dart';
import 'package:my_buddy/global_constants.dart';
import 'package:my_buddy/providers/user-state.provider.dart';
import 'package:my_buddy/swagger_models_apis/user_management_api.swagger.dart'
    as usermanagement;
import 'package:my_buddy/swagger_models_apis/job_seeker_api.swagger.dart'
    as jobseekermodels;
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:provider/provider.dart';

class JobApplicationPage extends StatefulWidget {
  final SerializedJob? job;
  final String? transactionId;
  final String? messageId;
  JobApplicationPage({
    required this.job,
    required this.transactionId,
    required this.messageId,
  });
  @override
  _JobApplicationPageState createState() => _JobApplicationPageState();
}

class _JobApplicationPageState extends State<JobApplicationPage> {
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  bool _applicationInProgressFlag = false;
  bool _pageInitialized = false;
  usermanagement.UserProfile? userprofile;
  List<String>? _claimIds = [];

  @override
  didChangeDependencies() {
    if (!_pageInitialized) {
      setState(() {
        userprofile = context.read<UserState>().userProfile;
      });
      _pageInitialized = true;
    }

    super.didChangeDependencies();
  }

  _apply() {
    setState(() {
      _applicationInProgressFlag = true;
    });
    List<Future> futures = [];

    jobseekermodels.Context newContext = jobseekermodels.Context(
      transactionId: widget.transactionId ?? "",
      messageId: widget.messageId ?? "",
      bppId: widget.job!.bppId,
      bppUri: widget.job!.bppUri,
    );
    List<jobseekermodels.UserCredential> creds = [];
    (_claimIds ?? []).forEach((claimId) {
      futures.add(Provider.of<CloudWalletApi>(context, listen: false)
          .walletCredentialsIdSharePost(
        id: claimId,
        body: ShareCredentialInput(),
      ));
    });
    Future.wait(futures).then((List<dynamic> responses) {
      responses.forEach((response) {
        ShareCredentialOutput? shareCredentialOutput =
            (response as Response<ShareCredentialOutput>).body;
        if (shareCredentialOutput != null) {
          jobseekermodels.UserCredential newCred =
              jobseekermodels.UserCredential(
                  url: shareCredentialOutput.sharingUrl);
          creds.add(newCred);
        }
      });
      jobseekermodels.JobApplicantProfile applicantProfile =
          jobseekermodels.JobApplicantProfile(
        name: userprofile!.fullName,
        creds: creds,
        skills: ['AWS', 'Flutter', 'UI / UX Design'],
      );
      jobseekermodels.JobFulfillment jobFulfillment =
          jobseekermodels.JobFulfillment(
        jobFulfillmentCategoryId: "sunbird VC",
        jobApplicantProfile: applicantProfile,
      );
      jobseekermodels.ConfirmJobRequest? request =
          jobseekermodels.ConfirmJobRequest(
        jobId: widget.job!.jobId,
        context: newContext,
        confirmation: jobFulfillment,
      );
      // setState(() {
      //   _loadingInProgressFlag = true;
      // });
      Provider.of<jobseekermodels.JobSeekerApi>(
        context,
        listen: false,
      )
          .jobConfirmPost(body: request)
          .then((Response<jobseekermodels.ConfirmJobResponse> response) {
        // if (response.isSuccessful) {
        // }
      });
      Future.delayed(Duration(seconds: 10)).then((_) {
        SerializedJob? _currentJob = widget.job;
        setState(() {
          _currentJob!.status = "APPLIED";
        });
        Provider.of<usermanagement.UserManagementApi>(
          context,
          listen: false,
        )
            .userItemCategoryEmailActionPost(
          category: 'job',
          email: context.read<AuthenticationState>().userEmail ?? "",
          action: 'applied',
          body: _currentJob,
        )
            .then((Response<Object> response) {
          if (response.isSuccessful) {
            setState(() {
              _applicationInProgressFlag = false;
            });
            UserDataService().removeSavedJob(job: _currentJob!);
            UserDataService().addNewAppliedJob(job: _currentJob);
            Navigator.of(context).pushReplacement(
              SlideBottomRoute(
                page: ApplicationSuccessPage(),
              ),
            );
          }
        });
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: GlobalConstants.backgroundColor,
        title: const Text(
          "Job Application",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.clear_outlined,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: <Widget>[
            const SizedBox(height: 10),
            Expanded(
              child: (userprofile != null)
                  ? SingleChildScrollView(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          ListTile(
                            isThreeLine: true,
                            dense: true,
                            leading: Container(
                              height: 40,
                              width: 40,
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.5,
                                  color: Colors.white70,
                                ),
                                shape: BoxShape.circle,
                                image: const DecorationImage(
                                  fit: BoxFit.contain,
                                  alignment: Alignment.centerLeft,
                                  image: AssetImage(
                                    "assets/profile_pic.jpeg",
                                  ),
                                ),
                              ),
                            ),
                            title: Text(userprofile!.fullName ?? ""),
                            subtitle: Text(
                              userprofile!.email,
                              style: TextStyle(
                                color: Colors.black54,
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Title",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      "Student",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Age",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                    Text(
                                      "21 yrs",
                                      style: TextStyle(
                                        fontSize: 12,
                                        color: Colors.black54,
                                      ),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                          SizedBox(height: 20),
                          DecoratedTextWidget(
                            content: "Skills",
                            fontSize: 12,
                            textColor: Colors.black54,
                            textAlign: TextAlign.start,
                          ),
                          DecoratedTextWidget(
                            content:
                                "C, C++, Flutter, Mobile Development, HTML, CSS, Javascript, Typescript",
                            fontSize: 12,
                            textColor: Colors.black87,
                            textAlign: TextAlign.start,
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          SelectMultipleCertificatesWithOverlayWidget(
                            claimIds: _claimIds,
                            credentialsselected: (List<String>? claimIds) {
                              debugPrint(
                                  "SelectedMultipleCerticatesWithOverlay credentialsselected claimIds.length: " +
                                      (claimIds ?? []).length.toString());
                              setState(() {
                                _claimIds = claimIds;
                              });
                            },
                          ),
                        ],
                      ),
                    )
                  : Container(),
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
                processingFlag: _applicationInProgressFlag,
                text: "APPLY",
                onPressed: _apply,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
