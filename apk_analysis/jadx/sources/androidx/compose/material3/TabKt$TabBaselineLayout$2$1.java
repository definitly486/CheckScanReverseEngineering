package androidx.compose.material3;

import androidx.compose.runtime.Composer;
import androidx.compose.ui.layout.AlignmentLineKt;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.hm;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabKt$TabBaselineLayout$2$1 implements MeasurePolicy {
    final /* synthetic */ bm3<Composer, Integer, j59> $icon;
    final /* synthetic */ bm3<Composer, Integer, j59> $text;

    /* JADX WARN: Multi-variable type inference failed */
    public TabKt$TabBaselineLayout$2$1(bm3<? super Composer, ? super Integer, j59> bm3Var, bm3<? super Composer, ? super Integer, j59> bm3Var2) {
        this.$text = bm3Var;
        this.$icon = bm3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$4(Placeable placeable, Placeable placeable2, MeasureScope measureScope, int i, int i2, Integer num, Integer num2, Placeable.PlacementScope placementScope) {
        if (placeable != null && placeable2 != null) {
            num.getClass();
            int iIntValue = num.intValue();
            num2.getClass();
            TabKt.placeTextAndIcon(placementScope, measureScope, placeable, placeable2, i, i2, iIntValue, num2.intValue());
        } else if (placeable != null) {
            TabKt.placeTextOrIcon(placementScope, placeable, i2);
        } else if (placeable2 != null) {
            TabKt.placeTextOrIcon(placementScope, placeable2, i2);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        Placeable placeableMo7702measureBRTryo0;
        Placeable placeableMo7702measureBRTryo1;
        if (this.$text != null) {
            int size = list.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    throw hm.d("Collection contains no element matching the predicate.");
                }
                Measurable measurable = list.get(i);
                if (aa4.e(LayoutIdKt.getLayoutId(measurable), "text")) {
                    placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null));
                    break;
                }
                i++;
            }
        } else {
            placeableMo7702measureBRTryo0 = null;
        }
        if (this.$icon != null) {
            int size2 = list.size();
            int i2 = 0;
            while (true) {
                if (i2 >= size2) {
                    throw hm.d("Collection contains no element matching the predicate.");
                }
                Measurable measurable2 = list.get(i2);
                if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "icon")) {
                    placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(j);
                    break;
                }
                i2++;
            }
        } else {
            placeableMo7702measureBRTryo1 = null;
        }
        final int iMax = Math.max(placeableMo7702measureBRTryo0 != null ? placeableMo7702measureBRTryo0.getWidth() : 0, placeableMo7702measureBRTryo1 != null ? placeableMo7702measureBRTryo1.getWidth() : 0);
        final int iMax2 = Math.max(measureScope.mo1428roundToPx0680j_4((placeableMo7702measureBRTryo0 == null || placeableMo7702measureBRTryo1 == null) ? TabKt.SmallTabHeight : TabKt.LargeTabHeight), measureScope.mo1427roundToPxR2X_6o(TabKt.IconDistanceFromBaseline) + (placeableMo7702measureBRTryo1 != null ? placeableMo7702measureBRTryo1.getHeight() : 0) + (placeableMo7702measureBRTryo0 != null ? placeableMo7702measureBRTryo0.getHeight() : 0));
        final Integer numValueOf = placeableMo7702measureBRTryo0 != null ? Integer.valueOf(placeableMo7702measureBRTryo0.get(AlignmentLineKt.getFirstBaseline())) : null;
        final Integer numValueOf2 = placeableMo7702measureBRTryo0 != null ? Integer.valueOf(placeableMo7702measureBRTryo0.get(AlignmentLineKt.getLastBaseline())) : null;
        final Placeable placeable = placeableMo7702measureBRTryo0;
        final Placeable placeable2 = placeableMo7702measureBRTryo1;
        return MeasureScope.layout$default(measureScope, iMax, iMax2, null, new nl3() { // from class: androidx.compose.material3.g4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabKt$TabBaselineLayout$2$1.measure_3p2s80s$lambda$4(placeable, placeable2, measureScope, iMax, iMax2, numValueOf, numValueOf2, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
