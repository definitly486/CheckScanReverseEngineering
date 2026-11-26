package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class AspectRatioNode extends Modifier.Node implements LayoutModifierNode {
    private float aspectRatio;
    private boolean matchHeightConstraintsFirst;

    public AspectRatioNode(float f, boolean z) {
        this.aspectRatio = f;
        this.matchHeightConstraintsFirst = z;
    }

    /* JADX INFO: renamed from: findSize-ToXhtMw, reason: not valid java name */
    private final long m1758findSizeToXhtMw(long j) {
        IntSize.Companion companion;
        if (this.matchHeightConstraintsFirst) {
            long jM1759tryMaxHeightJN0ABg = m1759tryMaxHeightJN0ABg(j, true);
            companion = IntSize.Companion;
            if (!IntSize.m9211equalsimpl0(jM1759tryMaxHeightJN0ABg, companion.m9218getZeroYbymL2g())) {
                return jM1759tryMaxHeightJN0ABg;
            }
            long jM1760tryMaxWidthJN0ABg = m1760tryMaxWidthJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1760tryMaxWidthJN0ABg, companion.m9218getZeroYbymL2g())) {
                return jM1760tryMaxWidthJN0ABg;
            }
            long jM1761tryMinHeightJN0ABg = m1761tryMinHeightJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1761tryMinHeightJN0ABg, companion.m9218getZeroYbymL2g())) {
                return jM1761tryMinHeightJN0ABg;
            }
            long jM1762tryMinWidthJN0ABg = m1762tryMinWidthJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1762tryMinWidthJN0ABg, companion.m9218getZeroYbymL2g())) {
                return jM1762tryMinWidthJN0ABg;
            }
            long jM1759tryMaxHeightJN0ABg2 = m1759tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1759tryMaxHeightJN0ABg2, companion.m9218getZeroYbymL2g())) {
                return jM1759tryMaxHeightJN0ABg2;
            }
            long jM1760tryMaxWidthJN0ABg2 = m1760tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1760tryMaxWidthJN0ABg2, companion.m9218getZeroYbymL2g())) {
                return jM1760tryMaxWidthJN0ABg2;
            }
            long jM1761tryMinHeightJN0ABg2 = m1761tryMinHeightJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1761tryMinHeightJN0ABg2, companion.m9218getZeroYbymL2g())) {
                return jM1761tryMinHeightJN0ABg2;
            }
            long jM1762tryMinWidthJN0ABg2 = m1762tryMinWidthJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1762tryMinWidthJN0ABg2, companion.m9218getZeroYbymL2g())) {
                return jM1762tryMinWidthJN0ABg2;
            }
        } else {
            long jM1760tryMaxWidthJN0ABg3 = m1760tryMaxWidthJN0ABg(j, true);
            companion = IntSize.Companion;
            if (!IntSize.m9211equalsimpl0(jM1760tryMaxWidthJN0ABg3, companion.m9218getZeroYbymL2g())) {
                return jM1760tryMaxWidthJN0ABg3;
            }
            long jM1759tryMaxHeightJN0ABg3 = m1759tryMaxHeightJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1759tryMaxHeightJN0ABg3, companion.m9218getZeroYbymL2g())) {
                return jM1759tryMaxHeightJN0ABg3;
            }
            long jM1762tryMinWidthJN0ABg3 = m1762tryMinWidthJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1762tryMinWidthJN0ABg3, companion.m9218getZeroYbymL2g())) {
                return jM1762tryMinWidthJN0ABg3;
            }
            long jM1761tryMinHeightJN0ABg3 = m1761tryMinHeightJN0ABg(j, true);
            if (!IntSize.m9211equalsimpl0(jM1761tryMinHeightJN0ABg3, companion.m9218getZeroYbymL2g())) {
                return jM1761tryMinHeightJN0ABg3;
            }
            long jM1760tryMaxWidthJN0ABg4 = m1760tryMaxWidthJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1760tryMaxWidthJN0ABg4, companion.m9218getZeroYbymL2g())) {
                return jM1760tryMaxWidthJN0ABg4;
            }
            long jM1759tryMaxHeightJN0ABg4 = m1759tryMaxHeightJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1759tryMaxHeightJN0ABg4, companion.m9218getZeroYbymL2g())) {
                return jM1759tryMaxHeightJN0ABg4;
            }
            long jM1762tryMinWidthJN0ABg4 = m1762tryMinWidthJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1762tryMinWidthJN0ABg4, companion.m9218getZeroYbymL2g())) {
                return jM1762tryMinWidthJN0ABg4;
            }
            long jM1761tryMinHeightJN0ABg4 = m1761tryMinHeightJN0ABg(j, false);
            if (!IntSize.m9211equalsimpl0(jM1761tryMinHeightJN0ABg4, companion.m9218getZeroYbymL2g())) {
                return jM1761tryMinHeightJN0ABg4;
            }
        }
        return companion.m9218getZeroYbymL2g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: tryMaxHeight-JN-0ABg, reason: not valid java name */
    private final long m1759tryMaxHeightJN0ABg(long j, boolean z) {
        int iRound;
        int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
        return (iM8994getMaxHeightimpl == Integer.MAX_VALUE || (iRound = Math.round(((float) iM8994getMaxHeightimpl) * this.aspectRatio)) <= 0 || (z && !AspectRatioKt.m1757isSatisfiedByNN6EwU(j, iRound, iM8994getMaxHeightimpl))) ? IntSize.Companion.m9218getZeroYbymL2g() : IntSize.m9208constructorimpl((((long) iRound) << 32) | (((long) iM8994getMaxHeightimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: tryMaxWidth-JN-0ABg, reason: not valid java name */
    private final long m1760tryMaxWidthJN0ABg(long j, boolean z) {
        int iRound;
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        return (iM8995getMaxWidthimpl == Integer.MAX_VALUE || (iRound = Math.round(((float) iM8995getMaxWidthimpl) / this.aspectRatio)) <= 0 || (z && !AspectRatioKt.m1757isSatisfiedByNN6EwU(j, iM8995getMaxWidthimpl, iRound))) ? IntSize.Companion.m9218getZeroYbymL2g() : IntSize.m9208constructorimpl((((long) iM8995getMaxWidthimpl) << 32) | (((long) iRound) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: tryMinHeight-JN-0ABg, reason: not valid java name */
    private final long m1761tryMinHeightJN0ABg(long j, boolean z) {
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int iRound = Math.round(iM8996getMinHeightimpl * this.aspectRatio);
        return (iRound <= 0 || (z && !AspectRatioKt.m1757isSatisfiedByNN6EwU(j, iRound, iM8996getMinHeightimpl))) ? IntSize.Companion.m9218getZeroYbymL2g() : IntSize.m9208constructorimpl((((long) iRound) << 32) | (((long) iM8996getMinHeightimpl) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: renamed from: tryMinWidth-JN-0ABg, reason: not valid java name */
    private final long m1762tryMinWidthJN0ABg(long j, boolean z) {
        int iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        int iRound = Math.round(iM8997getMinWidthimpl / this.aspectRatio);
        return (iRound <= 0 || (z && !AspectRatioKt.m1757isSatisfiedByNN6EwU(j, iM8997getMinWidthimpl, iRound))) ? IntSize.Companion.m9218getZeroYbymL2g() : IntSize.m9208constructorimpl((((long) iM8997getMinWidthimpl) << 32) | (((long) iRound) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    public final float getAspectRatio() {
        return this.aspectRatio;
    }

    public final boolean getMatchHeightConstraintsFirst() {
        return this.matchHeightConstraintsFirst;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.aspectRatio) : intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.aspectRatio) : intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long jM1758findSizeToXhtMw = m1758findSizeToXhtMw(j);
        if (!IntSize.m9211equalsimpl0(jM1758findSizeToXhtMw, IntSize.Companion.m9218getZeroYbymL2g())) {
            j = Constraints.Companion.m9005fixedJhjzzOo((int) (jM1758findSizeToXhtMw >> 32), (int) (jM1758findSizeToXhtMw & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AspectRatioNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i / this.aspectRatio) : intrinsicMeasurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return i != Integer.MAX_VALUE ? Math.round(i * this.aspectRatio) : intrinsicMeasurable.minIntrinsicWidth(i);
    }

    public final void setAspectRatio(float f) {
        this.aspectRatio = f;
    }

    public final void setMatchHeightConstraintsFirst(boolean z) {
        this.matchHeightConstraintsFirst = z;
    }
}
