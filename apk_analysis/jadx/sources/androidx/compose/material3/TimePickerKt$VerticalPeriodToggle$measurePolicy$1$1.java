package androidx.compose.material3;

import androidx.compose.material3.tokens.TimePickerTokens;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.aa4;
import defpackage.hm;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1 implements MeasurePolicy {
    public static final TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1 INSTANCE = new TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$3(List list, Placeable placeable, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.place$default(placementScope, (Placeable) list.get(0), 0, 0, 0.0f, 4, null);
        Placeable.PlacementScope.place$default(placementScope, (Placeable) list.get(1), 0, ((Placeable) list.get(0)).getHeight(), 0.0f, 4, null);
        Placeable.PlacementScope.place$default(placementScope, placeable, 0, ((Placeable) list.get(0)).getHeight() - (placeable.getHeight() / 2), 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int size = list.size();
        int iB = 0;
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "Spacer")) {
                final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, measureScope.mo1428roundToPx0680j_4(TimePickerTokens.INSTANCE.m5192getPeriodSelectorOutlineWidthD9Ej5fM()), 3, null));
                ArrayList arrayList = new ArrayList(list.size());
                int size2 = list.size();
                for (int i2 = 0; i2 < size2; i2++) {
                    Measurable measurable2 = list.get(i2);
                    if (!aa4.e(LayoutIdKt.getLayoutId(measurable2), "Spacer")) {
                        arrayList.add(measurable2);
                    }
                }
                final ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size3 = arrayList.size();
                while (iB < size3) {
                    iB = il1.b((Measurable) arrayList.get(iB), Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, Constraints.m8994getMaxHeightimpl(j) / 2, 3, null), arrayList2, iB, 1);
                }
                return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, new nl3() { // from class: androidx.compose.material3.h5
                    @Override // defpackage.nl3
                    public final Object invoke(Object obj) {
                        return TimePickerKt$VerticalPeriodToggle$measurePolicy$1$1.measure_3p2s80s$lambda$3(arrayList2, placeableMo7702measureBRTryo0, (Placeable.PlacementScope) obj);
                    }
                }, 4, null);
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
