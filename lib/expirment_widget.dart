import 'package:flutter/material.dart';
import 'package:reply_widget/experiment_object.dart';

class Experiment extends MultiChildRenderObjectWidget {
  Experiment({
    super.key,
    super.children,
  });
  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return ExperimentObject();
  }
}
