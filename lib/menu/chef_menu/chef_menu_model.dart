import '/components/seleccion_rol222_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'chef_menu_widget.dart' show ChefMenuWidget;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChefMenuModel extends FlutterFlowModel<ChefMenuWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for SeleccionRol222 component.
  late SeleccionRol222Model seleccionRol222Model;

  @override
  void initState(BuildContext context) {
    seleccionRol222Model = createModel(context, () => SeleccionRol222Model());
  }

  @override
  void dispose() {
    seleccionRol222Model.dispose();
  }
}
