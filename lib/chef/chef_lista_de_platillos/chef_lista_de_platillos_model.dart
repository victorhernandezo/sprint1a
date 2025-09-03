import '/components/chef_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import '/index.dart';
import 'chef_lista_de_platillos_widget.dart' show ChefListaDePlatillosWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChefListaDePlatillosModel
    extends FlutterFlowModel<ChefListaDePlatillosWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for ChefNavBar component.
  late ChefNavBarModel chefNavBarModel;

  @override
  void initState(BuildContext context) {
    chefNavBarModel = createModel(context, () => ChefNavBarModel());
  }

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    chefNavBarModel.dispose();
  }
}
