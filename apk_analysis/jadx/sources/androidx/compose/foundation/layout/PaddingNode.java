package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class PaddingNode extends Modifier.Node implements LayoutModifierNode {
    private float bottom;
    private float end;
    private boolean rtlAware;
    private float start;
    private float top;

    public /* synthetic */ PaddingNode(float f, float f2, float f3, float f4, boolean z, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Dp.m9042constructorimpl(0.0f) : f, (i & 2) != 0 ? Dp.m9042constructorimpl(0.0f) : f2, (i & 4) != 0 ? Dp.m9042constructorimpl(0.0f) : f3, (i & 8) != 0 ? Dp.m9042constructorimpl(0.0f) : f4, z, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(PaddingNode paddingNode, Placeable placeable, Placeable.PlacementScope placementScope) {
        boolean z = paddingNode.rtlAware;
        float f = paddingNode.start;
        if (z) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, placementScope.mo1428roundToPx0680j_4(f), placementScope.mo1428roundToPx0680j_4(paddingNode.top), 0.0f, 4, null);
        } else {
            Placeable.PlacementScope.place$default(placementScope, placeable, placementScope.mo1428roundToPx0680j_4(f), placementScope.mo1428roundToPx0680j_4(paddingNode.top), 0.0f, 4, null);
        }
        return j59.a;
    }

    /* JADX INFO: renamed from: getBottom-D9Ej5fM, reason: not valid java name */
    public final float m2038getBottomD9Ej5fM() {
        return this.bottom;
    }

    /* JADX INFO: renamed from: getEnd-D9Ej5fM, reason: not valid java name */
    public final float m2039getEndD9Ej5fM() {
        return this.end;
    }

    public final boolean getRtlAware() {
        return this.rtlAware;
    }

    /* JADX INFO: renamed from: getStart-D9Ej5fM, reason: not valid java name */
    public final float m2040getStartD9Ej5fM() {
        return this.start;
    }

    /* JADX INFO: renamed from: getTop-D9Ej5fM, reason: not valid java name */
    public final float m2041getTopD9Ej5fM() {
        return this.top;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.end) + measureScope.mo1428roundToPx0680j_4(this.start);
        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(this.bottom) + measureScope.mo1428roundToPx0680j_4(this.top);
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j, -iMo1428roundToPx0680j_4, -iMo1428roundToPx0680j_5));
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth() + iMo1428roundToPx0680j_4), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeableMo7702measureBRTryo0.getHeight() + iMo1428roundToPx0680j_5), null, new nl3() { // from class: androidx.compose.foundation.layout.z
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PaddingNode.measure_3p2s80s$lambda$0(this.b, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: renamed from: setBottom-0680j_4, reason: not valid java name */
    public final void m2042setBottom0680j_4(float f) {
        this.bottom = f;
    }

    /* JADX INFO: renamed from: setEnd-0680j_4, reason: not valid java name */
    public final void m2043setEnd0680j_4(float f) {
        this.end = f;
    }

    public final void setRtlAware(boolean z) {
        this.rtlAware = z;
    }

    /* JADX INFO: renamed from: setStart-0680j_4, reason: not valid java name */
    public final void m2044setStart0680j_4(float f) {
        this.start = f;
    }

    /* JADX INFO: renamed from: setTop-0680j_4, reason: not valid java name */
    public final void m2045setTop0680j_4(float f) {
        this.top = f;
    }

    private PaddingNode(float f, float f2, float f3, float f4, boolean z) {
        this.start = f;
        this.top = f2;
        this.end = f3;
        this.bottom = f4;
        this.rtlAware = z;
    }

    public /* synthetic */ PaddingNode(float f, float f2, float f3, float f4, boolean z, jh2 jh2Var) {
        this(f, f2, f3, f4, z);
    }
}
