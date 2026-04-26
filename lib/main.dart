import 'package:docdoc/doc_app.dart';
import 'package:docdoc/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/services/service_locator.dart';

void main() {
  setupLocator();

  runApp(DocApp(appRouter: AppRouter()));
}
