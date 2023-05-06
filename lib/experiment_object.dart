import 'package:flutter/rendering.dart';
import 'package:reply_widget/experiment_parent_data.dart';

class ExperimentObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, ExperimentParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, ExperimentParentData> {
  RenderStack({
    List<RenderBox>? children,
  }) {
    addAll(children);
  }

  @override
  void performLayout() {
    RenderBox? child = firstChild;
    while (child != null) {
      final ExperimentParentData childParentData = child.parentData! as ExperimentParentData;
      size = child.size ?? Size(10, 10);
      constraints.constrain(size);

      assert(child.parentData == childParentData);
      child = childParentData.nextSibling;
    }
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // TODO: implement paint
    defaultPaint(context, offset);
  }
}
