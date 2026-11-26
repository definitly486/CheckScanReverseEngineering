package androidx.compose.material3;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.MultiContentMeasurePolicy;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Dp;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.pp1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabRowKt$TabRowImpl$1$2$1 implements MultiContentMeasurePolicy {
    final /* synthetic */ TabRowKt$TabRowImpl$1$scope$1$1 $scope;

    public TabRowKt$TabRowImpl$1$2$1(TabRowKt$TabRowImpl$1$scope$1$1 tabRowKt$TabRowImpl$1$scope$1$1) {
        this.$scope = tabRowKt$TabRowImpl$1$scope$1$1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$8(List list, List list2, List list3, p07 p07Var, int i, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i2), i2 * p07Var.b, 0, 0.0f, 4, null);
        }
        int size2 = list2.size();
        for (int i3 = 0; i3 < size2; i3++) {
            Placeable placeable = (Placeable) list2.get(i3);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, 0, i - placeable.getHeight(), 0.0f, 4, null);
        }
        int size3 = list3.size();
        for (int i4 = 0; i4 < size3; i4++) {
            Placeable placeable2 = (Placeable) list3.get(i4);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, 0, i - placeable2.getHeight(), 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1910measure3p2s80s(MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        List<? extends Measurable> list2 = list.get(0);
        List<? extends Measurable> list3 = list.get(1);
        List<? extends Measurable> list4 = list.get(2);
        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
        int size = list2.size();
        final p07 p07Var = new p07();
        if (size > 0) {
            p07Var.b = iM8995getMaxWidthimpl / size;
        }
        Integer numValueOf = 0;
        List<? extends Measurable> list5 = list2;
        int size2 = list5.size();
        for (int i = 0; i < size2; i++) {
            numValueOf = Integer.valueOf(Math.max(list2.get(i).maxIntrinsicHeight(p07Var.b), numValueOf.intValue()));
        }
        int iIntValue = numValueOf.intValue();
        TabRowKt$TabRowImpl$1$scope$1$1 tabRowKt$TabRowImpl$1$scope$1$1 = this.$scope;
        ArrayList arrayList = new ArrayList(size);
        for (int i2 = 0; i2 < size; i2++) {
            arrayList.add(new TabPosition(Dp.m9042constructorimpl(measureScope.mo1431toDpu2uoSUM(p07Var.b) * i2), measureScope.mo1431toDpu2uoSUM(p07Var.b), ((Dp) pp1.c(Dp.m9040boximpl(Dp.m9042constructorimpl(measureScope.mo1431toDpu2uoSUM(Math.min(list2.get(i2).maxIntrinsicWidth(iIntValue), p07Var.b)) - Dp.m9042constructorimpl(TabKt.getHorizontalTextPadding() * 2.0f))), Dp.m9040boximpl(Dp.m9042constructorimpl(24.0f)))).m9056unboximpl(), null));
        }
        tabRowKt$TabRowImpl$1$scope$1$1.setTabPositions(arrayList);
        final ArrayList arrayList2 = new ArrayList(list2.size());
        int size3 = list5.size();
        int iB = 0;
        while (iB < size3) {
            Measurable measurable = list2.get(iB);
            int i3 = p07Var.b;
            int i4 = iIntValue;
            iB = il1.b(measurable, Constraints.m8984copyZbe2FdA(j, i3, i3, i4, iIntValue), arrayList2, iB, 1);
            iIntValue = i4;
        }
        final int i5 = iIntValue;
        final ArrayList arrayList3 = new ArrayList(list3.size());
        int size4 = list3.size();
        int iB2 = 0;
        while (iB2 < size4) {
            iB2 = il1.b(list3.get(iB2), Constraints.m8985copyZbe2FdA$default(j, 0, 0, 0, 0, 11, null), arrayList3, iB2, 1);
        }
        final ArrayList arrayList4 = new ArrayList(list4.size());
        int size5 = list4.size();
        int iB3 = 0;
        while (iB3 < size5) {
            Measurable measurable2 = list4.get(iB3);
            int i6 = p07Var.b;
            int i7 = i5;
            i5 = i7;
            iB3 = il1.b(measurable2, Constraints.m8984copyZbe2FdA(j, i6, i6, 0, i7), arrayList4, iB3, 1);
        }
        return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, i5, null, new nl3() { // from class: androidx.compose.material3.l4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabRowKt$TabRowImpl$1$2$1.measure_3p2s80s$lambda$8(arrayList2, arrayList3, arrayList4, p07Var, i5, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
