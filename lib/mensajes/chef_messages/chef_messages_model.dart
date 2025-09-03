import '/components/chef_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'chef_messages_widget.dart' show ChefMessagesWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ChefMessagesModel extends FlutterFlowModel<ChefMessagesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for ChefNavBar component.
  late ChefNavBarModel chefNavBarModel;

  @override
  void initState(BuildContext context) {
    chefNavBarModel = createModel(context, () => ChefNavBarModel());
  }

  @override
  void dispose() {
    chefNavBarModel.dispose();
  }
}
