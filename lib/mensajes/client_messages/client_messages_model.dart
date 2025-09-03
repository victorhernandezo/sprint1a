import '/components/nav_bar_cliente_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'client_messages_widget.dart' show ClientMessagesWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ClientMessagesModel extends FlutterFlowModel<ClientMessagesWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for NavBarCliente component.
  late NavBarClienteModel navBarClienteModel;

  @override
  void initState(BuildContext context) {
    navBarClienteModel = createModel(context, () => NavBarClienteModel());
  }

  @override
  void dispose() {
    navBarClienteModel.dispose();
  }
}
