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
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class UnspecifiedConstraintsNode extends Modifier.Node implements LayoutModifierNode {
    private float minHeight;
    private float minWidth;

    public /* synthetic */ UnspecifiedConstraintsNode(float f, float f2, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f, (i & 2) != 0 ? Dp.Companion.m9062getUnspecifiedD9Ej5fM() : f2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: getMinHeight-D9Ej5fM, reason: not valid java name */
    public final float m2118getMinHeightD9Ej5fM() {
        return this.minHeight;
    }

    /* JADX INFO: renamed from: getMinWidth-D9Ej5fM, reason: not valid java name */
    public final float m2119getMinWidthD9Ej5fM() {
        return this.minWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int iMaxIntrinsicHeight = intrinsicMeasurable.maxIntrinsicHeight(i);
        int iMo1428roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? intrinsicMeasureScope.mo1428roundToPx0680j_4(this.minHeight) : 0;
        return iMaxIntrinsicHeight < iMo1428roundToPx0680j_4 ? iMo1428roundToPx0680j_4 : iMaxIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int iMaxIntrinsicWidth = intrinsicMeasurable.maxIntrinsicWidth(i);
        int iMo1428roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? intrinsicMeasureScope.mo1428roundToPx0680j_4(this.minWidth) : 0;
        return iMaxIntrinsicWidth < iMo1428roundToPx0680j_4 ? iMo1428roundToPx0680j_4 : iMaxIntrinsicWidth;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iM8997getMinWidthimpl;
        int iM8996getMinHeightimpl;
        if (Float.isNaN(this.minWidth) || Constraints.m8997getMinWidthimpl(j) != 0) {
            iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
        } else {
            int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.minWidth);
            iM8997getMinWidthimpl = Constraints.m8995getMaxWidthimpl(j);
            if (iMo1428roundToPx0680j_4 < 0) {
                iMo1428roundToPx0680j_4 = 0;
            }
            if (iMo1428roundToPx0680j_4 <= iM8997getMinWidthimpl) {
                iM8997getMinWidthimpl = iMo1428roundToPx0680j_4;
            }
        }
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        if (Float.isNaN(this.minHeight) || Constraints.m8996getMinHeightimpl(j) != 0) {
            iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        } else {
            int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(this.minHeight);
            iM8996getMinHeightimpl = Constraints.m8994getMaxHeightimpl(j);
            int i = iMo1428roundToPx0680j_5 >= 0 ? iMo1428roundToPx0680j_5 : 0;
            if (i <= iM8996getMinHeightimpl) {
                iM8996getMinHeightimpl = i;
            }
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM8997getMinWidthimpl, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, Constraints.m8994getMaxHeightimpl(j)));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.f0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return UnspecifiedConstraintsNode.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int iMinIntrinsicHeight = intrinsicMeasurable.minIntrinsicHeight(i);
        int iMo1428roundToPx0680j_4 = !Float.isNaN(this.minHeight) ? intrinsicMeasureScope.mo1428roundToPx0680j_4(this.minHeight) : 0;
        return iMinIntrinsicHeight < iMo1428roundToPx0680j_4 ? iMo1428roundToPx0680j_4 : iMinIntrinsicHeight;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        int iMinIntrinsicWidth = intrinsicMeasurable.minIntrinsicWidth(i);
        int iMo1428roundToPx0680j_4 = !Float.isNaN(this.minWidth) ? intrinsicMeasureScope.mo1428roundToPx0680j_4(this.minWidth) : 0;
        return iMinIntrinsicWidth < iMo1428roundToPx0680j_4 ? iMo1428roundToPx0680j_4 : iMinIntrinsicWidth;
    }

    /* JADX INFO: renamed from: setMinHeight-0680j_4, reason: not valid java name */
    public final void m2120setMinHeight0680j_4(float f) {
        this.minHeight = f;
    }

    /* JADX INFO: renamed from: setMinWidth-0680j_4, reason: not valid java name */
    public final void m2121setMinWidth0680j_4(float f) {
        this.minWidth = f;
    }

    private UnspecifiedConstraintsNode(float f, float f2) {
        this.minWidth = f;
        this.minHeight = f2;
    }

    public /* synthetic */ UnspecifiedConstraintsNode(float f, float f2, jh2 jh2Var) {
        this(f, f2);
    }
}
