package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.internal.InlineClassHelperKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
final class PaddingValuesModifier extends Modifier.Node implements LayoutModifierNode {
    private PaddingValues paddingValues;

    public PaddingValuesModifier(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(Placeable placeable, int i, int i2, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        return j59.a;
    }

    public final PaddingValues getPaddingValues() {
        return this.paddingValues;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1073measure3p2s80s(MeasureScope measureScope, Measurable measurable, long j) {
        float fMo1983calculateLeftPaddingu2uoSUM = this.paddingValues.mo1983calculateLeftPaddingu2uoSUM(measureScope.getLayoutDirection());
        float fMo1985calculateTopPaddingD9Ej5fM = this.paddingValues.mo1985calculateTopPaddingD9Ej5fM();
        float fMo1984calculateRightPaddingu2uoSUM = this.paddingValues.mo1984calculateRightPaddingu2uoSUM(measureScope.getLayoutDirection());
        float fMo1982calculateBottomPaddingD9Ej5fM = this.paddingValues.mo1982calculateBottomPaddingD9Ej5fM();
        if (!((Dp.m9041compareTo0680j_4(fMo1983calculateLeftPaddingu2uoSUM, Dp.m9042constructorimpl(0.0f)) >= 0) & (Dp.m9041compareTo0680j_4(fMo1985calculateTopPaddingD9Ej5fM, Dp.m9042constructorimpl(0.0f)) >= 0) & (Dp.m9041compareTo0680j_4(fMo1984calculateRightPaddingu2uoSUM, Dp.m9042constructorimpl(0.0f)) >= 0) & (Dp.m9041compareTo0680j_4(fMo1982calculateBottomPaddingD9Ej5fM, Dp.m9042constructorimpl(0.0f)) >= 0))) {
            InlineClassHelperKt.throwIllegalArgumentException("Padding must be non-negative");
        }
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(fMo1983calculateLeftPaddingu2uoSUM);
        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(fMo1984calculateRightPaddingu2uoSUM) + iMo1428roundToPx0680j_4;
        final int iMo1428roundToPx0680j_6 = measureScope.mo1428roundToPx0680j_4(fMo1985calculateTopPaddingD9Ej5fM);
        int iMo1428roundToPx0680j_7 = measureScope.mo1428roundToPx0680j_4(fMo1982calculateBottomPaddingD9Ej5fM) + iMo1428roundToPx0680j_6;
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(j, -iMo1428roundToPx0680j_5, -iMo1428roundToPx0680j_7));
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth() + iMo1428roundToPx0680j_5), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeableMo7702measureBRTryo0.getHeight() + iMo1428roundToPx0680j_7), null, new nl3() { // from class: androidx.compose.foundation.layout.a0
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                int i = iMo1428roundToPx0680j_4;
                return PaddingValuesModifier.measure_3p2s80s$lambda$1(placeableMo7702measureBRTryo0, i, iMo1428roundToPx0680j_6, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public final void setPaddingValues(PaddingValues paddingValues) {
        this.paddingValues = paddingValues;
    }
}
