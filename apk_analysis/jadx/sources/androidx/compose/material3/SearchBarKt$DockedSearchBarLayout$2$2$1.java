package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarKt$DockedSearchBarLayout$2$2$1 implements MultiContentMeasurePolicy {
    final /* synthetic */ float $maxHeight;
    final /* synthetic */ float $minHeight;
    final /* synthetic */ SearchBarState $state;

    public SearchBarKt$DockedSearchBarLayout$2$2$1(SearchBarState searchBarState, float f, float f2) {
        this.$state = searchBarState;
        this.$maxHeight = f;
        this.$minHeight = f2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$8(List list, List list2, int i, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Placeable.PlacementScope.place$default(placementScope, (Placeable) list.get(i2), 0, 0, 0.0f, 4, null);
        }
        int size2 = list2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Placeable.PlacementScope.place$default(placementScope, (Placeable) list2.get(i3), 0, i, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        Integer numValueOf;
        Integer numValueOf2;
        Integer numValueOf3;
        List<? extends Measurable> list2 = list.get(0);
        int i = 1;
        List<? extends Measurable> list3 = list.get(1);
        int iLerp = MathHelpersKt.lerp(SearchBarKt.getCollapsedBounds(this.$state).getHeight(), measureScope.mo1428roundToPx0680j_4(this.$maxHeight), this.$state.getProgress());
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.$minHeight);
        long jM9010constrainN9IONVI = ConstraintsKt.m9010constrainN9IONVI(j, ConstraintsKt.Constraints$default(0, 0, iMo1428roundToPx0680j_4 > iLerp ? iLerp : iMo1428roundToPx0680j_4, iLerp, 3, null));
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(jM9010constrainN9IONVI, 0, 0, 0, 0, 10, null);
        final ArrayList arrayList = new ArrayList(list2.size());
        int size = list2.size();
        for (int iB = 0; iB < size; iB = il1.b(list2.get(iB), jM8985copyZbe2FdA$default, arrayList, iB, 1)) {
        }
        Integer numValueOf4 = null;
        if (!arrayList.isEmpty()) {
            numValueOf = Integer.valueOf(((Placeable) arrayList.get(0)).getWidth());
            int size2 = arrayList.size() - 1;
            if (1 <= size2) {
                int i2 = 1;
                while (true) {
                    Integer numValueOf5 = Integer.valueOf(((Placeable) arrayList.get(i2)).getWidth());
                    if (numValueOf5.compareTo(numValueOf) > 0) {
                        numValueOf = numValueOf5;
                    }
                    if (i2 == size2) {
                        break;
                    }
                    i2++;
                }
            }
        } else {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : 0;
        if (!arrayList.isEmpty()) {
            numValueOf2 = Integer.valueOf(((Placeable) arrayList.get(0)).getHeight());
            int size3 = arrayList.size() - 1;
            if (1 <= size3) {
                int i3 = 1;
                while (true) {
                    Integer numValueOf6 = Integer.valueOf(((Placeable) arrayList.get(i3)).getHeight());
                    if (numValueOf6.compareTo(numValueOf2) > 0) {
                        numValueOf2 = numValueOf6;
                    }
                    if (i3 == size3) {
                        break;
                    }
                    i3++;
                }
            }
        } else {
            numValueOf2 = null;
        }
        final int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : 0;
        long jM8985copyZbe2FdA$default2 = Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(jM8985copyZbe2FdA$default, 0, -iIntValue2, 1, null), 0, iIntValue, 0, 0, 13, null);
        final ArrayList arrayList2 = new ArrayList(list3.size());
        int size4 = list3.size();
        for (int iB2 = 0; iB2 < size4; iB2 = il1.b(list3.get(iB2), jM8985copyZbe2FdA$default2, arrayList2, iB2, 1)) {
        }
        if (!arrayList2.isEmpty()) {
            numValueOf3 = Integer.valueOf(((Placeable) arrayList2.get(0)).getHeight());
            int size5 = arrayList2.size() - 1;
            if (1 <= size5) {
                int i4 = 1;
                while (true) {
                    Integer numValueOf7 = Integer.valueOf(((Placeable) arrayList2.get(i4)).getHeight());
                    if (numValueOf7.compareTo(numValueOf3) > 0) {
                        numValueOf3 = numValueOf7;
                    }
                    if (i4 == size5) {
                        break;
                    }
                    i4++;
                }
            }
        } else {
            numValueOf3 = null;
        }
        int iIntValue3 = (numValueOf3 != null ? numValueOf3.intValue() : 0) + iIntValue2;
        if (!arrayList2.isEmpty()) {
            numValueOf4 = Integer.valueOf(((Placeable) arrayList2.get(0)).getWidth());
            int size6 = arrayList2.size() - 1;
            if (1 <= size6) {
                while (true) {
                    Integer numValueOf8 = Integer.valueOf(((Placeable) arrayList2.get(i)).getWidth());
                    if (numValueOf8.compareTo(numValueOf4) > 0) {
                        numValueOf4 = numValueOf8;
                    }
                    if (i == size6) {
                        break;
                    }
                    i++;
                }
            }
        }
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(jM9010constrainN9IONVI, Math.max(iIntValue, numValueOf4 != null ? numValueOf4.intValue() : 0)), ConstraintsKt.m9011constrainHeightK40F9xA(jM9010constrainN9IONVI, iIntValue3), null, new nl3() { // from class: androidx.compose.material3.p3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SearchBarKt$DockedSearchBarLayout$2$2$1.measure_3p2s80s$lambda$8(arrayList, arrayList2, iIntValue2, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
