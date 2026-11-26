package androidx.compose.material3;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.material3.tokens.TimePickerTokens;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSizeKt;
import defpackage.av0;
import defpackage.jh2;

/* JADX INFO: loaded from: classes2.dex */
public final class ClockDialNode extends DelegatingNode implements PointerInputModifierNode, CompositionLocalConsumerModifierNode, LayoutAwareModifierNode {
    public static final int $stable = 8;
    private AnimationSpec<Float> animationSpec;
    private boolean autoSwitchToMinute;
    private final MutableState center$delegate;
    private float offsetX;
    private float offsetY;
    private final SuspendingPointerInputModifierNode pointerInputDragNode;
    private final SuspendingPointerInputModifierNode pointerInputTapNode;
    private int selection;
    private AnalogTimePickerState state;

    private ClockDialNode(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec<Float> animationSpec) {
        this.state = analogTimePickerState;
        this.autoSwitchToMinute = z;
        this.selection = i;
        this.animationSpec = animationSpec;
        this.center$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(IntOffset.m9161boximpl(IntOffset.Companion.m9181getZeronOccac()), null, 2, null);
        this.pointerInputTapNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new ClockDialNode$pointerInputTapNode$1(this)));
        this.pointerInputDragNode = (SuspendingPointerInputModifierNode) delegate(SuspendingPointerInputFilterKt.SuspendingPointerInputModifierNode(new ClockDialNode$pointerInputDragNode$1(this)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: getCenter-nOcc-ac, reason: not valid java name */
    public final long m3214getCenternOccac() {
        return ((IntOffset) this.center$delegate.getValue()).m9179unboximpl();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final float getMaxDist() {
        Density densityRequireDensity = DelegatableNodeKt.requireDensity(this);
        return (densityRequireDensity.mo1434toPx0680j_4(TimePickerKt.MaxDistance) * densityRequireDensity.mo1428roundToPx0680j_4(this.state.m3074getCurrentDiameterD9Ej5fM())) / densityRequireDensity.mo1428roundToPx0680j_4(TimePickerTokens.INSTANCE.m5185getClockDialContainerSizeD9Ej5fM());
    }

    /* JADX INFO: renamed from: setCenter--gyyYBs, reason: not valid java name */
    private final void m3215setCentergyyYBs(long j) {
        this.center$delegate.setValue(IntOffset.m9161boximpl(j));
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public void onCancelPointerInput() {
        this.pointerInputTapNode.onCancelPointerInput();
        this.pointerInputDragNode.onCancelPointerInput();
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    /* JADX INFO: renamed from: onPointerEvent-H0pRuoY */
    public void mo1259onPointerEventH0pRuoY(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        this.pointerInputTapNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
        this.pointerInputDragNode.mo1259onPointerEventH0pRuoY(pointerEvent, pointerEventPass, j);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode, androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    /* JADX INFO: renamed from: onRemeasured-ozmzZPI */
    public void mo1423onRemeasuredozmzZPI(long j) {
        m3215setCentergyyYBs(IntSizeKt.m9219getCenterozmzZPI(j));
        this.state.m3076setCurrentDiameter0680j_4(DelegatableNodeKt.requireDensity(this).mo1431toDpu2uoSUM((int) (j >> 32)));
    }

    /* JADX INFO: renamed from: updateNode-JwYzU44, reason: not valid java name */
    public final void m3216updateNodeJwYzU44(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec<Float> animationSpec) {
        this.state = analogTimePickerState;
        this.autoSwitchToMinute = z;
        this.animationSpec = animationSpec;
        if (TimePickerSelectionMode.m4151equalsimpl0(this.selection, i)) {
            return;
        }
        this.selection = i;
        av0.c(getCoroutineScope(), null, null, new ClockDialNode$updateNode$1(analogTimePickerState, animationSpec, null), 3);
    }

    public /* synthetic */ ClockDialNode(AnalogTimePickerState analogTimePickerState, boolean z, int i, AnimationSpec animationSpec, jh2 jh2Var) {
        this(analogTimePickerState, z, i, animationSpec);
    }
}
