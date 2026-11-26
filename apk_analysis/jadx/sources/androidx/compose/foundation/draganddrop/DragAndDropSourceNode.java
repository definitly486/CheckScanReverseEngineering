package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropNodeKt;
import androidx.compose.ui.draganddrop.DragAndDropSourceModifierNode;
import androidx.compose.ui.draganddrop.DragAndDropStartTransferScope;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.xq2;

/* JADX INFO: loaded from: classes.dex */
public final class DragAndDropSourceNode extends DelegatingNode implements LayoutAwareModifierNode {
    public static final int $stable = 8;
    private bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> detectDragStart;
    private nl3<? super DrawScope, j59> drawDragDecoration;
    private PointerInputModifierNode inputModifierNode;
    private nl3<? super Offset, DragAndDropTransferData> transferData;
    private long size = IntSize.Companion.m9218getZeroYbymL2g();
    private final DragAndDropSourceModifierNode dragAndDropModifierNode = (DragAndDropSourceModifierNode) delegate(DragAndDropNodeKt.DragAndDropSourceModifierNode(new xq2(this, 0)));

    public DragAndDropSourceNode(nl3<? super DrawScope, j59> nl3Var, bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var, nl3<? super Offset, DragAndDropTransferData> nl3Var2) {
        this.drawDragDecoration = nl3Var;
        this.detectDragStart = bm3Var;
        this.transferData = nl3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 dragAndDropModifierNode$lambda$0(DragAndDropSourceNode dragAndDropSourceNode, DragAndDropStartTransferScope dragAndDropStartTransferScope, Offset offset) {
        DragAndDropTransferData dragAndDropTransferDataInvoke = dragAndDropSourceNode.transferData.invoke(offset);
        if (dragAndDropTransferDataInvoke != null) {
            dragAndDropStartTransferScope.mo5737startDragAndDropTransfer12SF9DM(dragAndDropTransferDataInvoke, IntSizeKt.m9225toSizeozmzZPI(dragAndDropSourceNode.size), dragAndDropSourceNode.drawDragDecoration);
        }
        return j59.a;
    }

    public final bm3<DragAndDropStartDetectorScope, e02<? super j59>, Object> getDetectDragStart() {
        return this.detectDragStart;
    }

    public final nl3<DrawScope, j59> getDrawDragDecoration() {
        return this.drawDragDecoration;
    }

    public final nl3<Offset, DragAndDropTransferData> getTransferData() {
        return this.transferData;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onAttach() {
        if (this.dragAndDropModifierNode.isRequestDragAndDropTransferRequired()) {
            this.inputModifierNode = (PointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.draganddrop.DragAndDropSourceNode.onAttach.1
                @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
                public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                    Object objInvoke = DragAndDropSourceNode.this.getDetectDragStart().invoke(new C00261(pointerInputScope, DragAndDropSourceNode.this), e02Var);
                    return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
                }

                /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.DragAndDropSourceNode$onAttach$1$1, reason: invalid class name and collision with other inner class name */
                public static final class C00261 implements DragAndDropStartDetectorScope, PointerInputScope {
                    private final /* synthetic */ PointerInputScope $$delegate_0;
                    final /* synthetic */ DragAndDropSourceNode this$0;

                    public C00261(PointerInputScope pointerInputScope, DragAndDropSourceNode dragAndDropSourceNode) {
                        this.this$0 = dragAndDropSourceNode;
                        this.$$delegate_0 = pointerInputScope;
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    public <R> Object awaitPointerEventScope(bm3<? super AwaitPointerEventScope, ? super e02<? super R>, ? extends Object> bm3Var, e02<? super R> e02Var) {
                        return this.$$delegate_0.awaitPointerEventScope(bm3Var, e02Var);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    public float getDensity() {
                        return this.$$delegate_0.getDensity();
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    /* JADX INFO: renamed from: getExtendedTouchPadding-NH-jbRc, reason: not valid java name */
                    public long mo1424getExtendedTouchPaddingNHjbRc() {
                        return this.$$delegate_0.mo1424getExtendedTouchPaddingNHjbRc();
                    }

                    @Override // androidx.compose.ui.unit.FontScaling
                    public float getFontScale() {
                        return this.$$delegate_0.getFontScale();
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    public boolean getInterceptOutOfBoundsChildEvents() {
                        return this.$$delegate_0.getInterceptOutOfBoundsChildEvents();
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    /* JADX INFO: renamed from: getSize-YbymL2g, reason: not valid java name */
                    public long mo1425getSizeYbymL2g() {
                        return this.$$delegate_0.mo1425getSizeYbymL2g();
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    public ViewConfiguration getViewConfiguration() {
                        return this.$$delegate_0.getViewConfiguration();
                    }

                    @Override // androidx.compose.foundation.draganddrop.DragAndDropStartDetectorScope
                    /* JADX INFO: renamed from: requestDragAndDropTransfer-k-4lQ0M, reason: not valid java name */
                    public void mo1426requestDragAndDropTransferk4lQ0M(long j) {
                        this.this$0.dragAndDropModifierNode.mo5740requestDragAndDropTransferk4lQ0M(j);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: roundToPx--R2X_6o, reason: not valid java name */
                    public int mo1427roundToPxR2X_6o(long j) {
                        return this.$$delegate_0.mo1427roundToPxR2X_6o(j);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: roundToPx-0680j_4, reason: not valid java name */
                    public int mo1428roundToPx0680j_4(float f) {
                        return this.$$delegate_0.mo1428roundToPx0680j_4(f);
                    }

                    @Override // androidx.compose.ui.input.pointer.PointerInputScope
                    public void setInterceptOutOfBoundsChildEvents(boolean z) {
                        this.$$delegate_0.setInterceptOutOfBoundsChildEvents(z);
                    }

                    @Override // androidx.compose.ui.unit.FontScaling
                    /* JADX INFO: renamed from: toDp-GaN1DYA, reason: not valid java name */
                    public float mo1429toDpGaN1DYA(long j) {
                        return this.$$delegate_0.mo1429toDpGaN1DYA(j);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
                    public float mo1430toDpu2uoSUM(float f) {
                        return this.$$delegate_0.mo1430toDpu2uoSUM(f);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toDpSize-k-rfVVM, reason: not valid java name */
                    public long mo1432toDpSizekrfVVM(long j) {
                        return this.$$delegate_0.mo1432toDpSizekrfVVM(j);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toPx--R2X_6o, reason: not valid java name */
                    public float mo1433toPxR2X_6o(long j) {
                        return this.$$delegate_0.mo1433toPxR2X_6o(j);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toPx-0680j_4, reason: not valid java name */
                    public float mo1434toPx0680j_4(float f) {
                        return this.$$delegate_0.mo1434toPx0680j_4(f);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    public Rect toRect(DpRect dpRect) {
                        return this.$$delegate_0.toRect(dpRect);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toSize-XkaWNTQ, reason: not valid java name */
                    public long mo1435toSizeXkaWNTQ(long j) {
                        return this.$$delegate_0.mo1435toSizeXkaWNTQ(j);
                    }

                    @Override // androidx.compose.ui.unit.FontScaling
                    /* JADX INFO: renamed from: toSp-0xMU5do, reason: not valid java name */
                    public long mo1436toSp0xMU5do(float f) {
                        return this.$$delegate_0.mo1436toSp0xMU5do(f);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
                    public long mo1437toSpkPz2Gy4(float f) {
                        return this.$$delegate_0.mo1437toSpkPz2Gy4(f);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toDp-u2uoSUM, reason: not valid java name */
                    public float mo1431toDpu2uoSUM(int i) {
                        return this.$$delegate_0.mo1431toDpu2uoSUM(i);
                    }

                    @Override // androidx.compose.ui.unit.Density
                    /* JADX INFO: renamed from: toSp-kPz2Gy4, reason: not valid java name */
                    public long mo1438toSpkPz2Gy4(int i) {
                        return this.$$delegate_0.mo1438toSpkPz2Gy4(i);
                    }
                }
            }));
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public void onDetach() {
        PointerInputModifierNode pointerInputModifierNode = this.inputModifierNode;
        if (pointerInputModifierNode != null) {
            undelegate(pointerInputModifierNode);
        }
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public void onPlaced(LayoutCoordinates layoutCoordinates) {
        this.dragAndDropModifierNode.onPlaced(layoutCoordinates);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI, reason: not valid java name */
    public void mo1423onRemeasuredozmzZPI(long j) {
        this.size = j;
        this.dragAndDropModifierNode.mo1423onRemeasuredozmzZPI(j);
    }

    public final void setDetectDragStart(bm3<? super DragAndDropStartDetectorScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.detectDragStart = bm3Var;
    }

    public final void setDrawDragDecoration(nl3<? super DrawScope, j59> nl3Var) {
        this.drawDragDecoration = nl3Var;
    }

    public final void setTransferData(nl3<? super Offset, DragAndDropTransferData> nl3Var) {
        this.transferData = nl3Var;
    }
}
