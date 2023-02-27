import 'dart:convert';

import 'package:flutter/material.dart';

class ParsedSchemaType {
  String? type;
  String? short;
  String? v;
  String? i;
  ParsedSchemaType({
    required this.type,
    required this.short,
    required this.v,
    required this.i,
  });
}

class ParsedUrlSchema {
  String? schemaType;

  Uri? jsonLdContext;
  Uri? jsonSchema;
  ParsedUrlSchema({
    required this.schemaType,
    required this.jsonLdContext,
    required this.jsonSchema,
  });
}

class ParseSchemaService {
  final RegExp SCHEMA_TYPE_UI_VIEW_REGEX =
      RegExp(r'/schemas/(.*)V([0-9]+)-([0-9]+)');
  final RegExp SCHEMA_TYPE_CONTEXT_OR_SCHEMA_REGEX =
      RegExp(r'(@did:[^/]+|.org|.com)/(.*)V([0-9]+)-([0-9]+).(json|jsonld)');

  ParsedSchemaType? parseSchemaTypeFromUIURL({required Uri? url}) {
    if (url != null) {
      String? pathname = url.path;
      Iterable<RegExpMatch> match =
          (SCHEMA_TYPE_UI_VIEW_REGEX).allMatches(pathname);
      // debugPrint("pathname: " + pathname);
      // debugPrint(
      //     "matching UI_VIEW_REGEX, matchlength: " + match.length.toString());
      // match.forEach((element) {
      //   debugPrint("match element: " + element.toString());
      // });
      if (match.length > 0) {
        String? secondMatch = match.elementAt(0).group(1);
        // debugPrint("secondMatch: " + (secondMatch ?? ""));
        if (secondMatch != null) {
          if (secondMatch.startsWith('@did')) {
            List<String> rest = secondMatch.split('/');
            rest.removeAt(0);

            return ParsedSchemaType(
              type: secondMatch,
              short: rest.join('/'),
              v: match.elementAt(0).group(2),
              i: jsonEncode(
                match.elementAt(0).group(3),
              ),
            );
          }
          return ParsedSchemaType(
            type: secondMatch,
            short: secondMatch,
            v: match.elementAt(0).group(2),
            i: match.elementAt(0).group(3),
          );
        }
      }
    }
    return null;
  }

  ParsedSchemaType? parseSchemaTypeFromContextOrSchemaURL({required Uri? url}) {
    // debugPrint("contextOrSchemaUrl: " + url!.toString());

    Iterable<RegExpMatch> match =
        (SCHEMA_TYPE_CONTEXT_OR_SCHEMA_REGEX).allMatches(url!.toString());
    // match.forEach((element) {
    //   debugPrint("match element: " + element.toString());
    // });

    if (match.length > 0) {
      // debugPrint("contextOrSchemaUrl, length: " + match.length.toString());
      String? thirdMatch = match.elementAt(0).group(2);
      if (thirdMatch != null) {
        if (thirdMatch.startsWith('@did')) {
          List<String> rest = thirdMatch.split('/');
          rest.removeAt(0);
          return ParsedSchemaType(
              type: thirdMatch,
              short: rest.join('/'),
              v: match.elementAt(0).group(3),
              i: match.elementAt(0).group(4));
        }
        return ParsedSchemaType(
          type: thirdMatch,
          short: thirdMatch,
          v: match.elementAt(0).group(3),
          i: match.elementAt(0).group(4),
        );
      }
    }
    return null;
  }

// ParsedSchemaType parseSchemaType(url: URL)  {
  ParsedSchemaType? parseSchemaType({Uri? url}) {
    ParsedSchemaType? fromUIURL = parseSchemaTypeFromUIURL(url: url);
    if (fromUIURL != null) {
      // debugPrint("ParsedSchemaType from UIURL:" + jsonEncode(fromUIURL));
      return fromUIURL;
    }

    ParsedSchemaType? fromContextOrSchemaURL =
        parseSchemaTypeFromContextOrSchemaURL(url: url);

    if (fromContextOrSchemaURL != null) {
      // debugPrint("ParsedSchemaType from ContextOrSchemaURL:" +
      //     jsonEncode(fromContextOrSchemaURL));

      return fromContextOrSchemaURL;
    }
    return null;

    // throw new Error('could not match pathname')
    // throw new Error();
  }

  String getBase({required String host}) {
    switch (host) {
      case 'ui.schema.dev.affinidi.com':
        return 'https://schema-manager.dev.affinity-project.org';
      case 'schema-manager.dev.affinity-project.org':
        return 'https://schema-manager.dev.affinity-project.org';
      case 'ui.schema.stg.affinidi.com':
        return 'https://schema.stg.affinidi.com';
      case 'schema.stg.affinidi.com':
        return 'https://schema.stg.affinidi.com';
      case 'ui.schema.affinidi.com':
        return 'https://schema.affinidi.com';
      case 'schema.affinidi.com':
        return 'https://schema.affinidi.com';
      default:
        return "";
      // default:
      //   throw Error();
      // new Error("unknown host: " + host);
    }
  }

  ParsedUrlSchema? parseSchemaURL({required String schemaURL}) {
    // try {
    Uri url = Uri.parse(schemaURL);

    ParsedSchemaType? parsedSchemaType = parseSchemaType(url: url);
    if (parsedSchemaType != null) {
      String fullSchemaType = (parsedSchemaType.type ?? "") +
          "V" +
          (parsedSchemaType.v ?? "") +
          "-" +
          (parsedSchemaType.i ?? "");

      String base = getBase(host: url.host);

      return ParsedUrlSchema(
        schemaType: parsedSchemaType.short,
        jsonLdContext: Uri.parse(base + "/" + fullSchemaType + ".jsonld"),
        jsonSchema: Uri.parse(base + "/" + fullSchemaType + ".json"),
      );
    }
    return null;
    // } catch (error) {
    //   // throw new Error('Could not parse schema URL, please provide a valid schema URl')
    //   throw error;
    // }
  }
}
