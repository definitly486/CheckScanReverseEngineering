package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.layer.GraphicsLayer;
import defpackage.bm3;
import defpackage.gh4;
import defpackage.j59;
import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class NodeCoordinator$drawBlock$1 extends gh4 implements bm3<Canvas, GraphicsLayer, j59> {
    final /* synthetic */ ll3<j59> $drawBlockCallToDrawModifiers;
    final /* synthetic */ NodeCoordinator this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NodeCoordinator$drawBlock$1(NodeCoordinator nodeCoordinator, ll3<j59> ll3Var) {
        super(2);
        this.this$0 = nodeCoordinator;
        this.$drawBlockCallToDrawModifiers = ll3Var;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Canvas canvas, GraphicsLayer graphicsLayer) {
        boolean zIsPlaced = this.this$0.getLayoutNode().isPlaced();
        NodeCoordinator nodeCoordinator = this.this$0;
        if (!zIsPlaced) {
            nodeCoordinator.lastLayerDrawingWasSkipped = true;
            return;
        }
        nodeCoordinator.drawBlockCanvas = canvas;
        this.this$0.drawBlockParentLayer = graphicsLayer;
        OwnerSnapshotObserver snapshotObserver = this.this$0.getSnapshotObserver();
        snapshotObserver.observer.observeReads(this.this$0, NodeCoordinator.onCommitAffectingLayer, this.$drawBlockCallToDrawModifiers);
        this.this$0.lastLayerDrawingWasSkipped = false;
    }

    @Override // defpackage.bm3
    public /* bridge */ /* synthetic */ j59 invoke(Canvas canvas, GraphicsLayer graphicsLayer) {
        invoke2(canvas, graphicsLayer);
        return j59.a;
    }
}
