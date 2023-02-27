import 'package:dsep_reference_flutter/common/pages/dashboard.page.dart';
import 'package:dsep_reference_flutter/home.page.dart';
import 'package:dsep_reference_flutter/providers/authentication-state.provider.dart';
import 'package:dsep_reference_flutter/providers/user-state.provider.dart';
import 'package:dsep_reference_flutter/swagger_models_apis/client_index.dart';
// import 'package:dsep_reference_flutter/swagger_models_apis/job_seeker_api.swagger.dart';

import 'package:chopper/chopper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:provider/provider.dart';
import 'package:logging/logging.dart' as logging;
// import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';

void main() {
  _setupLogging();
  dotenv.load(fileName: ".env").then((_) => runApp(const MyApp()));
}

void _setupLogging() {
  logging.Logger.root.level = logging.Level.ALL;
  logging.Logger.root.onRecord.listen((rec) {
    print('${rec.level.name}: ${rec.time}: ${rec.message}');
  });
}

// @Openapi(
//     additionalProperties:
//         AdditionalProperties(pubName: 'job_seeker_api', pubAuthor: 'Affinidi'),
//     inputSpecFile: 'assets/open-api/job_seeker_api.yaml',
//     generatorName: Generator.dart,
//     outputDirectory: 'lib/open-api/job_seeker_api')
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => AuthenticationState(),
        ),
        ChangeNotifierProvider(
          create: (_) => UserState(),
        ),
        Provider(
          create: (_) => JobSeekerApi.create(
            baseUrl: Uri.parse(dotenv.env["JOB_SEEKER_API_URL"]!),
            interceptors: [
              HeadersInterceptor({
                'Content-Type': 'application/json',
              }),
              HttpLoggingInterceptor(),
              // CurlInterceptor(),
            ],
          ),
          dispose: (_, JobSeekerApi service) => service.client.dispose(),
        ),
        Provider(
          create: (_) => UserManagementApi.create(
            baseUrl: Uri.parse(dotenv.env["USER_MANAGEMENT_API_URL"]!),
            interceptors: [
              HeadersInterceptor({
                'Content-Type': 'application/json',
              }),
              HttpLoggingInterceptor(),
              // CurlInterceptor(),
            ],
          ),
          dispose: (_, UserManagementApi service) => service.client.dispose(),
        ),
      ],
      child: Consumer<AuthenticationState>(
        builder: (context, authState, child) {
          debugPrint("main consumer of AuthenticationState status changed");
          return FutureBuilder(
              future: authState.loadPrefs(),
              builder: (BuildContext context, AsyncSnapshot snapshot) {
                debugPrint("authState.loadPrefs finished ");
                return Provider(
                  create: (_) => CloudWalletApi.create(
                    baseUrl:
                        Uri.parse(dotenv.env["CLOUD_WALLET_URL"]! + "/api/v1"),
                    interceptors: [
                      (Request request) {
                        String? accessToken =
                            context.read<AuthenticationState>().accessToken;
                        debugPrint("new accesstoken inside Cloud wallet API, " +
                            (accessToken ?? ""));
                        Map<String, String> headers = {
                          'Api-Key': dotenv.env["API_KEY"]!,
                          'Accept': "application/json",
                          'Content-type': "application/json",
                        };
                        if (accessToken != null) {
                          headers.putIfAbsent(
                              // 'Authorization', () => 'Bearer ' + accessToken);
                              'Authorization',
                              () => accessToken);
                        }
                        return request.copyWith(headers: headers);
                      },
                      HttpLoggingInterceptor(),
                      // CurlInterceptor(),
                    ],
                  ),
                  dispose: (_, CloudWalletApi service) =>
                      service.client.dispose(),
                  child: MaterialApp(
                    title: 'DSEP',
                    theme: ThemeData(
                      useMaterial3: true,
                      colorScheme: ColorScheme.fromSeed(
                        seedColor: Colors.cyanAccent,
                        brightness: Brightness.light,
                      ),
                      elevatedButtonTheme: ElevatedButtonThemeData(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            color: Color(0xFF020202),
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: "DM Sans Bold",
                          ),
                        ),
                      ),
                      outlinedButtonTheme: OutlinedButtonThemeData(
                        style: OutlinedButton.styleFrom(
                          textStyle: const TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: "DM Sans Bold",
                          ),
                          side: const BorderSide(
                            color: Color(0xFF006A6B),
                            width: 0.5,
                          ),
                        ),
                      ),
                      checkboxTheme: CheckboxThemeData(
                        checkColor: MaterialStateProperty.all(
                          const Color(0xFF041F1F), // on Secondary Container
                        ),
                        fillColor: MaterialStateProperty.resolveWith((states) {
                          // If the button is pressed, return size 40, otherwise 20
                          if (states.contains(MaterialState.selected)) {
                            return Color(0xFFCCE8E7); // Secondary Container
                          }
                          return null;
                        }),
                      ),
                      textButtonTheme: TextButtonThemeData(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(
                            // fontWeight: FontWeight.bold,
                            fontSize: 12,
                            fontFamily: "DM Sans Bold",
                          ),
                        ),
                      ),
                      chipTheme: const ChipThemeData(
                        backgroundColor: Color(0xFF8FF3F2),
                        selectedColor: Color(0xFF8FF3F2),
                        labelStyle: TextStyle(
                          color: Color(0xFF020202),
                          // fontWeight: FontWeight.bold,
                          fontSize: 12,
                          fontFamily: 'DM Sans Bold',
                        ),
                      ),
                      cardTheme: const CardTheme(
                        color: Colors.white,
                        surfaceTintColor: Colors.white,
                      ),
                      navigationBarTheme: NavigationBarThemeData(
                        labelTextStyle: MaterialStateProperty.all(
                          const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 10,
                          ),
                        ),
                      ),
                      appBarTheme: const AppBarTheme(
                        backgroundColor: Color(
                            0xffE9E9EC), //Affinidi Bg Color with 0.1 opacity

                        titleTextStyle: TextStyle(
                          fontSize: 16,
                          fontFamily: 'DM Sans Bold',
                          color: Colors.black87, // On Inverse Surface
                        ),
                        iconTheme: IconThemeData(
                          color: Colors.black87,
                          size: 24,
                        ),
                      ),
                      floatingActionButtonTheme:
                          const FloatingActionButtonThemeData(
                        backgroundColor:
                            Color(0xFFCCE8E7), // secondary container
                        extendedTextStyle: TextStyle(
                          color: Color(0xFF041F1F),
                        ), // on secondary container
                      ),
                      tabBarTheme: const TabBarTheme(
                        // indicator: BoxDecoration(
                        //   color: Color(0xFF8FF3F2),
                        // ),

                        labelPadding: EdgeInsets.all(0),
                        labelColor: Colors.black87,
                        labelStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                        unselectedLabelColor: Colors.black87,
                        unselectedLabelStyle: TextStyle(
                          fontSize: 10,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      switchTheme: SwitchThemeData(
                        trackColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(
                                0xFFCCE8E7); // Secondary Container
                          }
                          return null;
                        }),
                        thumbColor: MaterialStateProperty.resolveWith((states) {
                          if (states.contains(MaterialState.selected)) {
                            return const Color(0xFF4A6363); // Secondary
                          }
                          return null;
                        }),
                      ),
                      fontFamily: 'DM Sans Medium',
                    ),
                    onGenerateRoute: (RouteSettings settings) {
                      switch (settings.name) {
                        case '/dashboard':
                          {
                            return MaterialPageRoute(
                              builder: (context) => const DashboardPage(),
                            );

                            // String? userid = settings.arguments as String?;
                            // return MaterialPageRoute(
                            //   builder: (context) => CarrierUserActivationPage(
                            //     userid: userid,
                            //   ),
                            // );
                          }
                        default:
                          {
                            return MaterialPageRoute(
                                builder: (context) => HomePage());
                          }
                      }
                    },
                    home: (authState.accessToken != null)
                        ? const DashboardPage()
                        : const HomePage(),
                  ),
                );
              });
        },
      ),
    );
  }
}
