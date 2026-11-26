package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt__SnapshotStateKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class SkipToLookaheadSizeNode extends Modifier.Node implements LayoutModifierNode {
    public static final int $stable = 8;
    private final MutableState isEnabled$delegate;
    private Constraints lookaheadConstraints;
    private long lookaheadSize = AnimationModifierKt.getInvalidSize();
    private final MutableState scaleToBounds$delegate;

    public SkipToLookaheadSizeNode(ScaleToBoundsImpl scaleToBoundsImpl, ll3<Boolean> ll3Var) {
        this.scaleToBounds$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(scaleToBoundsImpl, null, 2, null);
        this.isEnabled$delegate = SnapshotStateKt__SnapshotStateKt.mutableStateOf$default(ll3Var, null, 2, null);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final ScaleToBoundsImpl getScaleToBounds() {
        return (ScaleToBoundsImpl) this.scaleToBounds$delegate.getValue();
    }

    public final ll3<Boolean> isEnabled() {
        return (ll3) this.isEnabled$delegate.getValue();
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return (intrinsicMeasureScope.isLookingAhead() || !AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize)) ? intrinsicMeasurable.maxIntrinsicHeight(i) : (int) (this.lookaheadSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return (intrinsicMeasureScope.isLookingAhead() || !AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize)) ? intrinsicMeasurable.maxIntrinsicWidth(i) : (int) (this.lookaheadSize >> 32);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        Placeable placeableMo7702measureBRTryo0;
        if (measureScope.isLookingAhead()) {
            this.lookaheadConstraints = Constraints.m8982boximpl(j);
        }
        if (!isEnabled().invoke().booleanValue()) {
            Placeable placeableMo7702measureBRTryo1 = measurable.mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo1.getWidth(), placeableMo7702measureBRTryo1.getHeight(), null, new SkipToLookaheadSizeNode$measure$1$1(placeableMo7702measureBRTryo1), 4, null);
        }
        if (measureScope.isLookingAhead()) {
            placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
            this.lookaheadSize = IntSize.m9208constructorimpl((((long) placeableMo7702measureBRTryo0.getWidth()) << 32) | (((long) placeableMo7702measureBRTryo0.getHeight()) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            Constraints constraints = this.lookaheadConstraints;
            constraints.getClass();
            placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(constraints.m9001unboximpl());
        }
        long jM9009constrain4WqzIAM = ConstraintsKt.m9009constrain4WqzIAM(j, this.lookaheadSize);
        return MeasureScope.layout$default(measureScope, (int) (jM9009constrain4WqzIAM >> 32), (int) (MuxerUtil.UNSIGNED_INT_MAX_VALUE & jM9009constrain4WqzIAM), null, new SkipToLookaheadSizeNode$measure$2(this, placeableMo7702measureBRTryo0, jM9009constrain4WqzIAM, measureScope), 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return (intrinsicMeasureScope.isLookingAhead() || !AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize)) ? intrinsicMeasurable.minIntrinsicHeight(i) : (int) (this.lookaheadSize & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return (intrinsicMeasureScope.isLookingAhead() || !AnimationModifierKt.m1077isValidozmzZPI(this.lookaheadSize)) ? intrinsicMeasurable.minIntrinsicWidth(i) : (int) (this.lookaheadSize >> 32);
    }

    public final void setEnabled(ll3<Boolean> ll3Var) {
        this.isEnabled$delegate.setValue(ll3Var);
    }

    public final void setScaleToBounds(ScaleToBoundsImpl scaleToBoundsImpl) {
        this.scaleToBounds$delegate.setValue(scaleToBoundsImpl);
    }
}
