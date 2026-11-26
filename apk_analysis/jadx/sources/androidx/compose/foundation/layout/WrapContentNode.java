package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.bm3;
import defpackage.j59;
import defpackage.kx6;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class WrapContentNode extends Modifier.Node implements LayoutModifierNode {
    private bm3<? super IntSize, ? super LayoutDirection, IntOffset> alignmentCallback;
    private Direction direction;
    private boolean unbounded;

    public WrapContentNode(Direction direction, boolean z, bm3<? super IntSize, ? super LayoutDirection, IntOffset> bm3Var) {
        this.direction = direction;
        this.unbounded = z;
        this.alignmentCallback = bm3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(WrapContentNode wrapContentNode, int i, Placeable placeable, int i2, MeasureScope measureScope, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.m7768place70tqf50$default(placementScope, placeable, wrapContentNode.alignmentCallback.invoke(IntSize.m9205boximpl(IntSize.m9208constructorimpl((((long) (i - placeable.getWidth())) << 32) | (((long) (i2 - placeable.getHeight())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE))), measureScope.getLayoutDirection()).m9179unboximpl(), 0.0f, 2, null);
        return j59.a;
    }

    public final bm3<IntSize, LayoutDirection, IntOffset> getAlignmentCallback() {
        return this.alignmentCallback;
    }

    public final Direction getDirection() {
        return this.direction;
    }

    public final boolean getUnbounded() {
        return this.unbounded;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(final MeasureScope measureScope, Measurable measurable, long j) {
        Direction direction = this.direction;
        Direction direction2 = Direction.Vertical;
        int iM8997getMinWidthimpl = direction != direction2 ? 0 : Constraints.m8997getMinWidthimpl(j);
        Direction direction3 = this.direction;
        Direction direction4 = Direction.Horizontal;
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, (this.direction == direction2 || !this.unbounded) ? Constraints.m8995getMaxWidthimpl(j) : Integer.MAX_VALUE, direction3 == direction4 ? Constraints.m8996getMinHeightimpl(j) : 0, (this.direction == direction4 || !this.unbounded) ? Constraints.m8994getMaxHeightimpl(j) : Integer.MAX_VALUE));
        final int iF = kx6.f(placeableMo7702measureBRTryo0.getWidth(), Constraints.m8997getMinWidthimpl(j), Constraints.m8995getMaxWidthimpl(j));
        final int iF2 = kx6.f(placeableMo7702measureBRTryo0.getHeight(), Constraints.m8996getMinHeightimpl(j), Constraints.m8994getMaxHeightimpl(j));
        return MeasureScope.layout$default(measureScope, iF, iF2, null, new nl3() { // from class: androidx.compose.foundation.layout.l0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return WrapContentNode.measure_3p2s80s$lambda$0(this.b, iF, placeableMo7702measureBRTryo0, iF2, measureScope, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setAlignmentCallback(bm3<? super IntSize, ? super LayoutDirection, IntOffset> bm3Var) {
        this.alignmentCallback = bm3Var;
    }

    public final void setDirection(Direction direction) {
        this.direction = direction;
    }

    public final void setUnbounded(boolean z) {
        this.unbounded = z;
    }
}
