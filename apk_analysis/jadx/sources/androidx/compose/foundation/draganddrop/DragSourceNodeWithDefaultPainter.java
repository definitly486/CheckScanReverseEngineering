package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.rg5;

/* JADX INFO: loaded from: classes.dex */
final class DragSourceNodeWithDefaultPainter extends DelegatingNode {
    private final CacheDrawScopeDragShadowCallback cacheDrawScopeDragShadowCallback;
    private final DragAndDropSourceNode dragAndDropModifierNode;

    public DragSourceNodeWithDefaultPainter(bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        CacheDrawScopeDragShadowCallback cacheDrawScopeDragShadowCallback = new CacheDrawScopeDragShadowCallback();
        delegate(DrawModifierKt.CacheDrawModifierNode(new DragSourceNodeWithDefaultPainter$cacheDrawScopeDragShadowCallback$1$1(cacheDrawScopeDragShadowCallback)));
        this.cacheDrawScopeDragShadowCallback = cacheDrawScopeDragShadowCallback;
        this.dragAndDropModifierNode = (DragAndDropSourceNode) delegate(new DragAndDropSourceNode(new nl3() { // from class: androidx.compose.foundation.draganddrop.h
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return DragSourceNodeWithDefaultPainter.dragAndDropModifierNode$lambda$0(this.b, (DrawScope) obj);
            }
        }, bm3Var, nl3Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropModifierNode$lambda$0(DragSourceNodeWithDefaultPainter dragSourceNodeWithDefaultPainter, DrawScope drawScope) {
        dragSourceNodeWithDefaultPainter.cacheDrawScopeDragShadowCallback.drawDragShadow(drawScope);
        return j59.a;
    }

    private static Object getDetectDragStart$delegate(DragSourceNodeWithDefaultPainter dragSourceNodeWithDefaultPainter) {
        return new rg5(dragSourceNodeWithDefaultPainter.dragAndDropModifierNode, DragAndDropSourceNode.class, "detectDragStart", "getDetectDragStart()Lkotlin/jvm/functions/Function2;", 0);
    }

    private static Object getTransferData$delegate(DragSourceNodeWithDefaultPainter dragSourceNodeWithDefaultPainter) {
        return new rg5(dragSourceNodeWithDefaultPainter.dragAndDropModifierNode, DragAndDropSourceNode.class, "transferData", "getTransferData()Lkotlin/jvm/functions/Function1;", 0);
    }

    public final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> getDetectDragStart() {
        return this.dragAndDropModifierNode.getDetectDragStart();
    }

    public final nl3<Offset, DragAndDropTransferData> getTransferData() {
        return this.dragAndDropModifierNode.getTransferData();
    }

    public final void setDetectDragStart(bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.dragAndDropModifierNode.setDetectDragStart(bm3Var);
    }

    public final void setTransferData(nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        this.dragAndDropModifierNode.setTransferData(nl3Var);
    }
}
