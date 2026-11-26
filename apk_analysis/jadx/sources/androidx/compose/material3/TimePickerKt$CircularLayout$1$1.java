package androidx.compose.material3;

import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.tg;
import defpackage.ug;
import defpackage.w65;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TimePickerKt$CircularLayout$1$1 implements MeasurePolicy {
    final /* synthetic */ float $radiusToSizeRatio;

    public TimePickerKt$CircularLayout$1$1(float f) {
        this.$radiusToSizeRatio = f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$5(Placeable placeable, List list, Placeable placeable2, long j, float f, float f2, Placeable.PlacementScope placementScope) {
        if (placeable != null) {
            Placeable.PlacementScope.place$default(placementScope, placeable, 0, 0, 0.0f, 4, null);
        }
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable placeable3 = (Placeable) list.get(i);
            double d = f;
            double d2 = ((double) (i * f2)) - 1.5707963267948966d;
            Placeable.PlacementScope.place$default(placementScope, placeable3, w65.a((Math.cos(d2) * d) + ((double) ((Constraints.m8995getMaxWidthimpl(j) / 2) - (placeable3.getWidth() / 2)))), w65.a((Math.sin(d2) * d) + ((double) ((Constraints.m8994getMaxHeightimpl(j) / 2) - (placeable3.getHeight() / 2)))), 0.0f, 4, null);
        }
        if (placeable2 != null) {
            Placeable.PlacementScope.place$default(placementScope, placeable2, ug.b(Constraints.m8997getMinWidthimpl(j), 2, placeable2), tg.b(Constraints.m8996getMinHeightimpl(j), 2, placeable2), 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, final long j) {
        Measurable measurable;
        Measurable measurable2;
        final float fM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j) * this.$radiusToSizeRatio;
        int i = 0;
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 10, null);
        ArrayList arrayList = new ArrayList(list.size());
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        for (int i2 = 0; i2 < size; i2++) {
            Measurable measurable3 = list.get(i2);
            Measurable measurable4 = measurable3;
            if (LayoutIdKt.getLayoutId(measurable4) != LayoutId.Selector && LayoutIdKt.getLayoutId(measurable4) != LayoutId.InnerCircle) {
                arrayList.add(measurable3);
            }
        }
        final ArrayList arrayList2 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int iB = 0; iB < size2; iB = il1.b((Measurable) arrayList.get(iB), jM8985copyZbe2FdA$default, arrayList2, iB, 1)) {
        }
        int size3 = list2.size();
        int i3 = 0;
        while (true) {
            if (i3 >= size3) {
                measurable = null;
                break;
            }
            measurable = list.get(i3);
            if (LayoutIdKt.getLayoutId(measurable) == LayoutId.Selector) {
                break;
            }
            i3++;
        }
        Measurable measurable5 = measurable;
        int size4 = list2.size();
        while (true) {
            if (i >= size4) {
                measurable2 = null;
                break;
            }
            measurable2 = list.get(i);
            if (LayoutIdKt.getLayoutId(measurable2) == LayoutId.InnerCircle) {
                break;
            }
            i++;
        }
        Measurable measurable6 = measurable2;
        final float size5 = 6.2831855f / arrayList2.size();
        final Placeable placeableMo7702measureBRTryo0 = measurable5 != null ? measurable5.mo7702measureBRTryo0(jM8985copyZbe2FdA$default) : null;
        final Placeable placeableMo7702measureBRTryo1 = measurable6 != null ? measurable6.mo7702measureBRTryo0(jM8985copyZbe2FdA$default) : null;
        return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, new nl3() { // from class: androidx.compose.material3.w4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TimePickerKt$CircularLayout$1$1.measure_3p2s80s$lambda$5(placeableMo7702measureBRTryo0, arrayList2, placeableMo7702measureBRTryo1, j, fM8994getMaxHeightimpl, size5, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
