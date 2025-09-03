import '/components/chef_nav_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chef_alta_de_platillo_widget.dart' show ChefAltaDePlatilloWidget;
import 'package:flutter/material.dart';

class ChefAltaDePlatilloModel
    extends FlutterFlowModel<ChefAltaDePlatilloWidget> {
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
