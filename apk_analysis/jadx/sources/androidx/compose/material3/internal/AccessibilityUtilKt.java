package androidx.compose.material3.internal;

import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.material3.internal.AccessibilityUtilKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Dp;
import defpackage.a3;
import defpackage.b3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.x2;
import defpackage.y2;
import defpackage.z2;

/* JADX INFO: loaded from: classes2.dex */
public final class AccessibilityUtilKt {
    private static final float HorizontalSemanticsBoundsPadding;
    private static final Modifier IncreaseHorizontalSemanticsBounds;
    private static final Modifier IncreaseVerticalSemanticsBounds;
    private static final float VerticalSemanticsBoundsPadding;

    static {
        float fM9042constructorimpl = Dp.m9042constructorimpl(10.0f);
        HorizontalSemanticsBoundsPadding = fM9042constructorimpl;
        float fM9042constructorimpl2 = Dp.m9042constructorimpl(10.0f);
        VerticalSemanticsBoundsPadding = fM9042constructorimpl2;
        Modifier.Companion companion = Modifier.Companion;
        IncreaseHorizontalSemanticsBounds = PaddingKt.m2035paddingVpY3zN4$default(SemanticsModifierKt.semantics(LayoutModifierKt.layout(companion, new y2()), true, new z2(0)), fM9042constructorimpl, 0.0f, 2, null);
        IncreaseVerticalSemanticsBounds = PaddingKt.m2035paddingVpY3zN4$default(SemanticsModifierKt.semantics(LayoutModifierKt.layout(companion, new a3()), true, new b3(0)), 0.0f, fM9042constructorimpl2, 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult IncreaseHorizontalSemanticsBounds$lambda$1(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(HorizontalSemanticsBoundsPadding);
        long jM9001unboximpl = constraints.m9001unboximpl();
        int i = iMo1428roundToPx0680j_4 * 2;
        final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(jM9001unboximpl, i, 0));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth() - i, placeableMo7702measureBRTryo0.getHeight(), null, new nl3() { // from class: c3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AccessibilityUtilKt.IncreaseHorizontalSemanticsBounds$lambda$1$lambda$0(placeableMo7702measureBRTryo0, iMo1428roundToPx0680j_4, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IncreaseHorizontalSemanticsBounds$lambda$1$lambda$0(Placeable placeable, int i, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, -i, 0, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IncreaseHorizontalSemanticsBounds$lambda$2(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult IncreaseVerticalSemanticsBounds$lambda$4(MeasureScope measureScope, Measurable measurable, Constraints constraints) {
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(VerticalSemanticsBoundsPadding);
        long jM9001unboximpl = constraints.m9001unboximpl();
        int i = iMo1428roundToPx0680j_4 * 2;
        Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(ConstraintsKt.m9014offsetNN6EwU(jM9001unboximpl, 0, i));
        return MeasureScope.layout$default(measureScope, placeableMo7702measureBRTryo0.getWidth(), placeableMo7702measureBRTryo0.getHeight() - i, null, new x2(iMo1428roundToPx0680j_4, placeableMo7702measureBRTryo0), 4, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IncreaseVerticalSemanticsBounds$lambda$4$lambda$3(Placeable placeable, int i, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, -i, 0.0f, 4, null);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 IncreaseVerticalSemanticsBounds$lambda$5(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        return j59.a;
    }

    public static final float getHorizontalSemanticsBoundsPadding() {
        return HorizontalSemanticsBoundsPadding;
    }

    public static /* synthetic */ void getHorizontalSemanticsBoundsPadding$annotations() {
    }

    public static final Modifier getIncreaseHorizontalSemanticsBounds() {
        return IncreaseHorizontalSemanticsBounds;
    }

    public static final Modifier getIncreaseVerticalSemanticsBounds() {
        return IncreaseVerticalSemanticsBounds;
    }

    public static final float getVerticalSemanticsBoundsPadding() {
        return VerticalSemanticsBoundsPadding;
    }

    public static /* synthetic */ void getVerticalSemanticsBoundsPadding$annotations() {
    }
}
