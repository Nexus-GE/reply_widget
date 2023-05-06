import 'package:flutter/rendering.dart';

class ExperimentObject extends RenderBox
    with
        ContainerRenderObjectMixin<RenderBox, StackParentData>,
        RenderBoxContainerDefaultsMixin<RenderBox, StackParentData> {
  RenderStack({
    List<RenderBox>? children,
  }) {
    addAll(children);
  }

  @override
  void performLayout() {
    RenderBox? child = firstChild;
    while (child != null) {
      final StackParentData childParentData = child.parentData! as StackParentData;
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
