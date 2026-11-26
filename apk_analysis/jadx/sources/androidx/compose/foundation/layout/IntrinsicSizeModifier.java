package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
abstract class IntrinsicSizeModifier extends Modifier.Node implements LayoutModifierNode {
    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.m7769placeRelative70tqf50$default(placementScope, placeable, IntOffset.Companion.m9181getZeronOccac(), 0.0f, 2, null);
        return j59.a;
    }

    /* JADX INFO: renamed from: calculateContentConstraints-l58MMJ0 */
    public abstract long mo1986calculateContentConstraintsl58MMJ0(MeasureScope measureScope, Measurable measurable, long j);

    public abstract boolean getEnforceIncoming();

    public int maxIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int maxIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.maxIntrinsicWidth(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        long jMo1986calculateContentConstraintsl58MMJ0 = mo1986calculateContentConstraintsl58MMJ0(measureScope, measurable, j);
        if (getEnforceIncoming()) {
            jMo1986calculateContentConstraintsl58MMJ0 = ConstraintsKt.m9010constrainN9IONVI(j, jMo1986calculateContentConstraintsl58MMJ0);
        }
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jMo1986calculateContentConstraintsl58MMJ0);
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: androidx.compose.foundation.layout.w
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return IntrinsicSizeModifier.measure_3p2s80s$lambda$0(placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public int minIntrinsicHeight(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.minIntrinsicHeight(i);
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public int minIntrinsicWidth(IntrinsicMeasureScope intrinsicMeasureScope, IntrinsicMeasurable intrinsicMeasurable, int i) {
        return intrinsicMeasurable.minIntrinsicWidth(i);
    }
}
