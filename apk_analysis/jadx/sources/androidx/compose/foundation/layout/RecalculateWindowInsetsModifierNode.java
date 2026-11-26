package androidx.compose.foundation.layout;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class RecalculateWindowInsetsModifierNode extends InsetsConsumingModifierNode implements LayoutModifierNode {
    private final ValueInsets insets = new ValueInsets(new InsetsValues(0, 0, 0, 0), "reset");

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(RecalculateWindowInsetsModifierNode recalculateWindowInsetsModifierNode, Measurable measurable, int i, int i2, Placeable.PlacementScope placementScope) {
        LayoutCoordinates coordinates = placementScope.getCoordinates();
        if (coordinates != null) {
            long jPositionInRoot = LayoutCoordinatesKt.positionInRoot(coordinates);
            long jMo7710getSizeYbymL2g = coordinates.mo7710getSizeYbymL2g();
            float f = (int) (jMo7710getSizeYbymL2g >> 32);
            long jMo7713localToRootMKHz9U = coordinates.mo7713localToRootMKHz9U(Offset.m5979constructorimpl((((long) Float.floatToRawIntBits((int) (jMo7710getSizeYbymL2g & MuxerUtil.UNSIGNED_INT_MAX_VALUE))) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (Float.floatToRawIntBits(f) << 32)));
            long jMo7710getSizeYbymL2g2 = LayoutCoordinatesKt.findRootCoordinates(coordinates).mo7710getSizeYbymL2g();
            int iRound = Math.round(Float.intBitsToFloat((int) (jPositionInRoot >> 32)));
            int iRound2 = Math.round(Float.intBitsToFloat((int) (jPositionInRoot & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            int iRound3 = ((int) (jMo7710getSizeYbymL2g2 >> 32)) - Math.round(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U >> 32)));
            int iRound4 = ((int) (jMo7710getSizeYbymL2g2 & MuxerUtil.UNSIGNED_INT_MAX_VALUE)) - Math.round(Float.intBitsToFloat((int) (jMo7713localToRootMKHz9U & MuxerUtil.UNSIGNED_INT_MAX_VALUE)));
            InsetsValues value$foundation_layout = recalculateWindowInsetsModifierNode.insets.getValue$foundation_layout();
            if (value$foundation_layout.getLeft() != iRound || value$foundation_layout.getTop() != iRound2 || value$foundation_layout.getRight() != iRound3 || value$foundation_layout.getBottom() != iRound4) {
                recalculateWindowInsetsModifierNode.insets.setValue$foundation_layout(new InsetsValues(iRound, iRound2, iRound3, iRound4));
                recalculateWindowInsetsModifierNode.insetsInvalidated();
            }
        }
        Placeable.PlacementScope.place$default(placementScope, measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(i, i2)), 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode
    public WindowInsets calculateInsets(WindowInsets windowInsets) {
        return this.insets.getValue$foundation_layout().getLeft() == -1 ? windowInsets : this.insets;
    }

    public final ValueInsets getInsets() {
        return this.insets;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public boolean getShouldAutoInvalidate() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, final Measurable measurable, long j) {
        if (Constraints.m8993getHasFixedWidthimpl(j) && Constraints.m8992getHasFixedHeightimpl(j)) {
            final int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
            final int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
            return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, null, new nl3() { // from class: androidx.compose.foundation.layout.c0
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return RecalculateWindowInsetsModifierNode.measure_3p2s80s$lambda$1(this.b, measurable, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, (Placeable.PlacementScope) obj);
                }
            }, 4, null);
        }
        if (this.insets.getValue$foundation_layout().getLeft() != -1) {
            this.insets.setValue$foundation_layout(new InsetsValues(-1, -1, -1, -1));
            insetsInvalidated();
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.b0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return RecalculateWindowInsetsModifierNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.minIntrinsicWidth(i);
    }
}
