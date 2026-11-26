package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class CenteredContentMeasurePolicy implements MeasurePolicy {
    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$5(p07 p07Var, List list, Placeable.PlacementScope placementScope) {
        int i = p07Var.b;
        int size = list.size();
        int width = i;
        for (int i2 = 0; i2 < size; i2++) {
            Placeable placeable = (Placeable) list.get(i2);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, width, 0, 0.0f, 4, null);
            width += placeable.getWidth();
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final ArrayList arrayList;
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
        int size = list.size();
        if (size < 1) {
            return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, null, new n(), 4, null);
        }
        final p07 p07Var = new p07();
        if (Constraints.m8991getHasBoundedWidthimpl(j)) {
            int i = iM8995getMaxWidthimpl / size;
            int iCalculateCenteredContentHorizontalPadding = ShortNavigationBarKt.calculateCenteredContentHorizontalPadding(size, iM8995getMaxWidthimpl);
            p07Var.b = iCalculateCenteredContentHorizontalPadding;
            int i2 = (iM8995getMaxWidthimpl - (iCalculateCenteredContentHorizontalPadding * 2)) / size;
            List<? extends Measurable> list2 = list;
            int size2 = list2.size();
            for (int i3 = 0; i3 < size2; i3++) {
                int iMaxIntrinsicHeight = list.get(i3).maxIntrinsicHeight(i2);
                if (iM8996getMinHeightimpl < iMaxIntrinsicHeight) {
                    int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                    if (iMaxIntrinsicHeight > iM8994getMaxHeightimpl) {
                        iMaxIntrinsicHeight = iM8994getMaxHeightimpl;
                    }
                    iM8996getMinHeightimpl = iMaxIntrinsicHeight;
                }
            }
            ArrayList arrayList2 = new ArrayList(list.size());
            int size3 = list2.size();
            int iB = 0;
            while (iB < size3) {
                Measurable measurable = list.get(iB);
                int iMaxIntrinsicWidth = measurable.maxIntrinsicWidth(Constraints.m8996getMinHeightimpl(j));
                if (i2 < iMaxIntrinsicWidth) {
                    if (iMaxIntrinsicWidth > i) {
                        iMaxIntrinsicWidth = i;
                    }
                    p07Var.b -= (iMaxIntrinsicWidth - i2) / 2;
                } else {
                    iMaxIntrinsicWidth = i2;
                }
                iB = il1.b(measurable, ConstraintsKt.m9010constrainN9IONVI(j, Constraints.Companion.m9005fixedJhjzzOo(iMaxIntrinsicWidth, iM8996getMinHeightimpl)), arrayList2, iB, 1);
            }
            arrayList = arrayList2;
        } else {
            arrayList = new ArrayList(list.size());
            int size4 = list.size();
            for (int i4 = 0; i4 < size4; i4++) {
                arrayList.add(list.get(i4).mo7702measureBRTryo0(ConstraintsKt.m9010constrainN9IONVI(j, Constraints.Companion.m9006fixedHeightOenEA2s(iM8996getMinHeightimpl))));
            }
        }
        return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8996getMinHeightimpl, null, new nl3() { // from class: androidx.compose.material3.o
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return CenteredContentMeasurePolicy.measure_3p2s80s$lambda$5(p07Var, arrayList, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
