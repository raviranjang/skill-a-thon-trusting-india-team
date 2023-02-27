// import 'dart:async';
// import 'dart:convert';
// import 'dart:io';
// import 'package:dio/adapter.dart';

// import '../services/environment.service.dart';

// import '../animations/slide-right.animation.dart';
// import 'package:dio/dio.dart';

// import 'package:flutter/material.dart';
// import '../pages/bad-request.page.dart';
// import '../pages/bad-server.page.dart';
// import '../pages/no-access.page.dart';
// import '../pages/not-found.page.dart';
// import '../pages/offline.page.dart';
// import '../pages/precondition-failed.page.dart';
// import '../pages/session-invalid.page.dart';
// import '../services/app-data.service.dart';
// import '../models/app-error.dart';

// class NoAuthHttpService {
//   static final NoAuthHttpService _noauthService = NoAuthHttpService._internal();
//   final Dio dio = Dio();

//   factory NoAuthHttpService() {
//     return _noauthService;
//   }

//   NoAuthHttpService._internal() {}

//   Future<dynamic> get({
//     required String endPoint,
//     Map<String, dynamic>? queryParams,
//     Map<String, dynamic>? headers,
//   }) {
//     if (headers == null) {
//       headers = {};
//     }
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     headers[HttpHeaders.contentTypeHeader] = "application/json";

//     // if (queryParams != null) {
//     //   endPoint = endPoint + "?";
//     //   queryParams.forEach((String key, String value) {
//     //     endPoint = endPoint + key + "=" + value + "&";
//     //   });
//     //   endPoint = endPoint.substring(0, endPoint.length - 1);
//     // }
//     return _handleErrors(
//       dio.get(
//         endPoint,
//         options: Options(
//           followRedirects: false,
//           validateStatus: (status) {
//             return status! < 500;
//           },

//           responseType: ResponseType.json, // or ResponseType.JSON
//           headers: headers,
//         ),
//         queryParameters: queryParams,
//       ),
//       endPoint: endPoint,
//       method: "get",
//     );
//   }

//   Future<dynamic> post({
//     required String endPoint,
//     Map<String, dynamic>? headers,
//     required String jsonEncodedBody,
//   }) {
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     if (headers == null) {
//       headers = {};
//     }
//     headers[HttpHeaders.contentTypeHeader] = "application/json";
//     headers[HttpHeaders.acceptHeader] = "application/json";
//     debugPrint("no auth posting to " + endPoint + " : " + jsonEncodedBody);
//     return _handleErrors(
//       dio.post(
//         endPoint,
//         data: jsonEncodedBody,
//         options: Options(
//             followRedirects: false,
//             validateStatus: (status) {
//               return status! < 500;
//             },
//             headers: headers),
//       ),
//       endPoint: endPoint,
//       method: "post",
//     );
//   }

//   Future<dynamic> put({
//     required String endPoint,
//     Map<String, dynamic>? headers,
//     required String jsonEncodedBody,
//   }) {
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     if (headers == null) {
//       headers = {};
//     }
//     headers[HttpHeaders.contentTypeHeader] = "application/json";
//     return _handleErrors(
//       dio.put(
//         endPoint,
//         data: jsonEncodedBody,
//         options: Options(
//           followRedirects: false,
//           validateStatus: (status) {
//             return status! < 500;
//           },

//           responseType: ResponseType.json, // or ResponseType.JSON
//           headers: headers,
//         ),
//       ),
//       endPoint: endPoint,
//       method: "put",
//     );
//   }

//   Future<dynamic> delete({
//     required String endPoint,
//     Map<String, dynamic>? headers,
//   }) {
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     if (headers == null) {
//       headers = {};
//     }
//     headers[HttpHeaders.contentTypeHeader] = "application/json";
//     return _handleErrors(
//       dio.delete(
//         endPoint,
//         options: Options(
//           followRedirects: false,
//           validateStatus: (status) {
//             return status! < 500;
//           },

//           responseType: ResponseType.json, // or ResponseType.JSON
//           headers: headers,
//         ),
//       ),
//       endPoint: endPoint,
//       method: "delete",
//     );
//   }

//   Future<dynamic> uploadImage({
//     required String? endPoint,
//     required dynamic image,
//     Map<String, dynamic>? headers,
//   }) {
//     (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
//         (HttpClient client) {
//       client.badCertificateCallback =
//           (X509Certificate cert, String host, int port) => true;
//       return client;
//     };
//     if (headers == null) {
//       headers = {};
//     }
//     headers['App-Content-Type'] = ContentType.parse("image/jpeg");
//     if (Platform.isAndroid) {
//       headers["App-Device-Type"] = "Android";
//     }
//     String? fileName = image.path.split('/').last;
//     return MultipartFile.fromFile(
//       image.path,
//       filename: fileName,
//     ).then((multipart) {
//       FormData fd = FormData.fromMap({
//         "file": multipart,
//       });
//       debugPrint("uploadImage endPoint: " + endPoint!);
//       Future<Response<dynamic>> dioFuture = dio.post(
//         endPoint,
//         data: fd,
//         options: Options(
//           followRedirects: false,
//           validateStatus: (status) {
//             return status! < 500;
//           },
//           responseType: ResponseType.json,
//           headers: headers,
//         ),
//       );

//       return _handleErrors(dioFuture);
//     });
//   }

//   Future<dynamic> _handleErrors(Future<Response> responseFuture,
//       {String? endPoint, String? method}) {
//     Completer<dynamic> completer = Completer<dynamic>();
//     responseFuture.then((response) {
//       if (!EnvironmentService().environment!.production) {
//         debugPrint("No Auth Http response of " +
//             (method ?? '') +
//             " to " +
//             (endPoint ?? '') +
//             ": ");
//         print(response);
//       }

//       if (response.statusCode != 200) {
//         if (response.data["error"] != null) {
//           AppDataService().setError(error: response.data["error"] as String?);
//         }

//         switch (response.statusCode) {
//           case 0:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: OfflinePage()));
//               completer.complete(AppError("Offline"));
//               break;
//             }
//           case 500:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: BadServerPage()));
//               completer.complete(AppError("Bad Server"));
//               break;
//             }
//           case 400:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: BadRequestPage()));

//               completer.complete(AppError("Bad Request"));
//               break;
//             }
//           case 404:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: NotFoundPage()));
//               completer.complete(AppError("Not Found"));
//               break;
//             }
//           case 403:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: NoAccessPage()));
//               completer.complete(AppError("Forbidden"));
//               break;
//             }
//           case 401:
//             {
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: SessionInvalidPage()));
//               completer.complete(AppError("Session Expired"));
//               break;
//             }
//           case 412:
//             {
//               AppDataService().navigatorKey.currentState!.push(
//                   MaterialPageRoute(
//                       builder: (context) => PreConditionFailedPage()));
//               completer.complete(AppError("Precondition Failed"));
//               break;
//             }

//           default:
//             {
//               debugPrint("Default page NoAuth Http: ");
//               debugPrint(jsonEncode(response));
//               AppDataService()
//                   .navigatorKey
//                   .currentState!
//                   .push(SlideRightRoute(page: OfflinePage()));
//               completer.complete(AppError("Offline"));
//               break;
//             }
//         }
//       } else {
//         completer.complete(response.data);
//       }

//       // console.log("Error:")
//       // console.log(error)
//       return completer.future;
//     }, onError: (err) {
//       if (err.type != null) {
//         debugPrint("err.type " + err.type.toString());

//         if ((err.type == DioErrorType.connectTimeout) ||
//             (err.type == DioErrorType.other)) {
//           AppDataService()
//               .navigatorKey
//               .currentState!
//               .push(SlideRightRoute(page: OfflinePage()));
//           completer.complete(AppError("Offline"));
//         } else {
//           debugPrint("Error while getting No Auth Http response of " +
//               (method ?? "") +
//               " to " +
//               (endPoint ?? ''));
//           completer.complete();
//         }
//       }

//       debugPrint("Error while getting No Auth Http response of " +
//           (method ?? "") +
//           " to " +
//           (endPoint ?? ''));
//       // debugPrint(jsonEncode(error.message));
//       // AppDataService().navigatorKey.currentState.push(
//       //       SlideRightRoute(
//       //         page: OfflinePage(),
//       //       ),
//       //     );
//     });
//     return completer.future;
//   }
// }
