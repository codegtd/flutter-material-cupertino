import 'package:flutter/material.dart';
import 'package:flutter_material_cupertino/core/app_themes.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'library_material_adaptive_view.dart';

class MaterialDriverGetx extends StatelessWidget {
  const MaterialDriverGetx({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: AppThemes().materialTheme(),
      home: LibraryMaterialAdaptiveView(),
    );
  }


}