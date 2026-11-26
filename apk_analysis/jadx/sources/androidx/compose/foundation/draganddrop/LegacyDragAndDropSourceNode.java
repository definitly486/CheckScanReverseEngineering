package androidx.compose.foundation.draganddrop;

import androidx.compose.ui.draganddrop.DragAndDropModifierNode;
import androidx.compose.ui.draganddrop.DragAndDropNodeKt;
import androidx.compose.ui.draganddrop.DragAndDropTransferData;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.platform.ViewConfiguration;
import androidx.compose.ui.unit.DpRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LegacyDragAndDropSourceNode extends DelegatingNode implements MeasuredSizeAwareModifierNode {
    public static final int $stable = 8;
    private bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> dragAndDropSourceHandler;
    private nl3<? super DrawScope, j59> drawDragDecoration;
    private long size = IntSize.Companion.m9218getZeroYbymL2g();

    public LegacyDragAndDropSourceNode(nl3<? super DrawScope, j59> nl3Var, bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.drawDragDecoration = nl3Var;
        this.dragAndDropSourceHandler = bm3Var;
        final DragAndDropModifierNode dragAndDropModifierNode = (DragAndDropModifierNode) delegate(DragAndDropNodeKt.DragAndDropModifierNode());
        delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new PointerInputEventHandler() { // from class: androidx.compose.foundation.draganddrop.LegacyDragAndDropSourceNode.1
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, e02<? super j59> e02Var) {
                Object objInvoke = LegacyDragAndDropSourceNode.this.getDragAndDropSourceHandler().invoke(new C00271(pointerInputScope, dragAndDropModifierNode, LegacyDragAndDropSourceNode.this), e02Var);
                return objInvoke == a32.COROUTINE_SUSPENDED ? objInvoke : j59.a;
            }

            /* JADX INFO: renamed from: androidx.compose.foundation.draganddrop.LegacyDragAndDropSourceNode$1$1, reason: invalid class name and collision with other inner class name */
            public static final class C00271 implements DragAndDropSourceScope, PointerInputScope {
                private final /* synthetic */ PointerInputScope $$delegate_0;
                final /* synthetic */ DragAndDropModifierNode $dragAndDropModifierNode;
                final /* synthetic */ LegacyDragAndDropSourceNode this$0;

                public C00271(PointerInputScope pointerInputScope, DragAndDropModifierNode dragAndDropModifierNode, LegacyDragAndDropSourceNode legacyDragAndDropSourceNode) {
                    this.$dragAndDropModifierNode = dragAndDropModifierNode;
                    this.this$0 = legacyDragAndDropSourceNode;
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
                /* JADX INFO: renamed from: getExtendedTouchPadding-NH-jbRc */
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
                /* JADX INFO: renamed from: getSize-YbymL2g */
                public long mo1425getSizeYbymL2g() {
                    return this.$$delegate_0.mo1425getSizeYbymL2g();
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputScope
                public ViewConfiguration getViewConfiguration() {
                    return this.$$delegate_0.getViewConfiguration();
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: roundToPx--R2X_6o */
                public int mo1427roundToPxR2X_6o(long j) {
                    return this.$$delegate_0.mo1427roundToPxR2X_6o(j);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: roundToPx-0680j_4 */
                public int mo1428roundToPx0680j_4(float f) {
                    return this.$$delegate_0.mo1428roundToPx0680j_4(f);
                }

                @Override // androidx.compose.ui.input.pointer.PointerInputScope
                public void setInterceptOutOfBoundsChildEvents(boolean z) {
                    this.$$delegate_0.setInterceptOutOfBoundsChildEvents(z);
                }

                @Override // androidx.compose.foundation.draganddrop.DragAndDropSourceScope
                public void startTransfer(DragAndDropTransferData dragAndDropTransferData) {
                    this.$dragAndDropModifierNode.mo5738drag12SF9DM(dragAndDropTransferData, IntSizeKt.m9225toSizeozmzZPI(mo1425getSizeYbymL2g()), this.this$0.getDrawDragDecoration());
                }

                @Override // androidx.compose.ui.unit.FontScaling
                /* JADX INFO: renamed from: toDp-GaN1DYA */
                public float mo1429toDpGaN1DYA(long j) {
                    return this.$$delegate_0.mo1429toDpGaN1DYA(j);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toDp-u2uoSUM */
                public float mo1430toDpu2uoSUM(float f) {
                    return this.$$delegate_0.mo1430toDpu2uoSUM(f);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toDpSize-k-rfVVM */
                public long mo1432toDpSizekrfVVM(long j) {
                    return this.$$delegate_0.mo1432toDpSizekrfVVM(j);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toPx--R2X_6o */
                public float mo1433toPxR2X_6o(long j) {
                    return this.$$delegate_0.mo1433toPxR2X_6o(j);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toPx-0680j_4 */
                public float mo1434toPx0680j_4(float f) {
                    return this.$$delegate_0.mo1434toPx0680j_4(f);
                }

                @Override // androidx.compose.ui.unit.Density
                public Rect toRect(DpRect dpRect) {
                    return this.$$delegate_0.toRect(dpRect);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toSize-XkaWNTQ */
                public long mo1435toSizeXkaWNTQ(long j) {
                    return this.$$delegate_0.mo1435toSizeXkaWNTQ(j);
                }

                @Override // androidx.compose.ui.unit.FontScaling
                /* JADX INFO: renamed from: toSp-0xMU5do */
                public long mo1436toSp0xMU5do(float f) {
                    return this.$$delegate_0.mo1436toSp0xMU5do(f);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toSp-kPz2Gy4 */
                public long mo1437toSpkPz2Gy4(float f) {
                    return this.$$delegate_0.mo1437toSpkPz2Gy4(f);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toDp-u2uoSUM */
                public float mo1431toDpu2uoSUM(int i) {
                    return this.$$delegate_0.mo1431toDpu2uoSUM(i);
                }

                @Override // androidx.compose.ui.unit.Density
                /* JADX INFO: renamed from: toSp-kPz2Gy4 */
                public long mo1438toSpkPz2Gy4(int i) {
                    return this.$$delegate_0.mo1438toSpkPz2Gy4(i);
                }
            }
        }));
    }

    public final bm3<DragAndDropSourceScope, e02<? super j59>, Object> getDragAndDropSourceHandler() {
        return this.dragAndDropSourceHandler;
    }

    public final nl3<DrawScope, j59> getDrawDragDecoration() {
        return this.drawDragDecoration;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        this.size = j;
    }

    public final void setDragAndDropSourceHandler(bm3<? super DragAndDropSourceScope, ? super e02<? super j59>, ? extends Object> bm3Var) {
        this.dragAndDropSourceHandler = bm3Var;
    }

    public final void setDrawDragDecoration(nl3<? super DrawScope, j59> nl3Var) {
        this.drawDragDecoration = nl3Var;
    }
}
