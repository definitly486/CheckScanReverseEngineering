package androidx.compose.material3;

import androidx.collection.MutableIntList;
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
import defpackage.o07;
import defpackage.pp1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class TabRowKt$ScrollableTabRowImpl$1$1$2$1 implements MultiContentMeasurePolicy {
    final /* synthetic */ float $edgePadding;
    final /* synthetic */ float $minTabWidth;
    final /* synthetic */ TabRowKt$ScrollableTabRowImpl$1$scope$1$1 $scope;
    final /* synthetic */ ScrollableTabData $scrollableTabData;
    final /* synthetic */ int $selectedTabIndex;

    public TabRowKt$ScrollableTabRowImpl$1$1$2$1(float f, float f2, TabRowKt$ScrollableTabRowImpl$1$scope$1$1 tabRowKt$ScrollableTabRowImpl$1$scope$1$1, int i, ScrollableTabData scrollableTabData) {
        this.$edgePadding = f;
        this.$minTabWidth = f2;
        this.$scope = tabRowKt$ScrollableTabRowImpl$1$scope$1$1;
        this.$selectedTabIndex = i;
        this.$scrollableTabData = scrollableTabData;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$7(o07 o07Var, float f, List list, List list2, ScrollableTabData scrollableTabData, MeasureScope measureScope, int i, List list3, int i2, int i3, Placeable.PlacementScope placementScope) {
        o07Var.b = f;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i4), measureScope.mo1428roundToPx0680j_4(o07Var.b), 0, 0.0f, 4, null);
            o07Var.b = Dp.m9042constructorimpl(((TabPosition) list3.get(i4)).m3981getWidthD9Ej5fM() + o07Var.b);
        }
        int size2 = list2.size();
        for (int i5 = 0; i5 < size2; i5++) {
            Placeable placeable = (Placeable) list2.get(i5);
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable, Math.max(0, (measureScope.mo1428roundToPx0680j_4(((TabPosition) list3.get(i2)).m3981getWidthD9Ej5fM()) - placeable.getWidth()) / 2), i3 - placeable.getHeight(), 0.0f, 4, null);
        }
        scrollableTabData.onLaidOut(measureScope, i, list3, i2);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MultiContentMeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1910measure3p2s80s(final MeasureScope measureScope, List<? extends List<? extends Measurable>> list, long j) {
        List<? extends Measurable> list2 = list.get(0);
        List<? extends Measurable> list3 = list.get(1);
        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(this.$edgePadding);
        int size = list2.size();
        Integer numValueOf = 0;
        List<? extends Measurable> list4 = list2;
        int size2 = list4.size();
        for (int i = 0; i < size2; i++) {
            numValueOf = Integer.valueOf(Math.max(numValueOf.intValue(), list2.get(i).maxIntrinsicHeight(Integer.MAX_VALUE)));
        }
        final int iIntValue = numValueOf.intValue();
        int iMo1428roundToPx0680j_5 = iMo1428roundToPx0680j_4 * 2;
        long jM8985copyZbe2FdA$default = Constraints.m8985copyZbe2FdA$default(j, measureScope.mo1428roundToPx0680j_4(this.$minTabWidth), 0, iIntValue, iIntValue, 2, null);
        o07 o07Var = new o07();
        o07Var.b = this.$edgePadding;
        ArrayList arrayList = new ArrayList(list2.size());
        int iB = 0;
        for (int size3 = list4.size(); iB < size3; size3 = size3) {
            iB = il1.b(list2.get(iB), jM8985copyZbe2FdA$default, arrayList, iB, 1);
        }
        ArrayList arrayList2 = arrayList;
        MutableIntList mutableIntList = new MutableIntList(0, 1, null);
        int size4 = list4.size();
        for (int i2 = 0; i2 < size4; i2++) {
            mutableIntList.add(list2.get(i2).maxIntrinsicWidth(Integer.MAX_VALUE));
        }
        float f = this.$minTabWidth;
        final ArrayList arrayList3 = new ArrayList(size);
        for (int i3 = 0; i3 < size; i3++) {
            float fM9056unboximpl = ((Dp) pp1.c(Dp.m9040boximpl(f), Dp.m9040boximpl(measureScope.mo1431toDpu2uoSUM(((Placeable) arrayList2.get(i3)).getWidth())))).m9056unboximpl();
            iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(fM9056unboximpl) + iMo1428roundToPx0680j_5;
            TabPosition tabPosition = new TabPosition(o07Var.b, fM9056unboximpl, ((Dp) pp1.c(Dp.m9040boximpl(Dp.m9042constructorimpl(measureScope.mo1431toDpu2uoSUM(mutableIntList.get(i3)) - Dp.m9042constructorimpl(TabKt.getHorizontalTextPadding() * 2.0f))), Dp.m9040boximpl(Dp.m9042constructorimpl(24.0f)))).m9056unboximpl(), null);
            o07Var.b = Dp.m9042constructorimpl(o07Var.b + fM9056unboximpl);
            arrayList3.add(tabPosition);
        }
        this.$scope.setTabPositions(arrayList3);
        int i4 = this.$selectedTabIndex;
        final ArrayList arrayList4 = new ArrayList(list3.size());
        int size5 = list3.size();
        int iB2 = 0;
        while (iB2 < size5) {
            iB2 = il1.b(list3.get(iB2), Constraints.m8984copyZbe2FdA(j, 0, measureScope.mo1428roundToPx0680j_4(((TabPosition) arrayList3.get(i4)).m3978getContentWidthD9Ej5fM()), 0, iIntValue), arrayList4, iB2, 1);
            arrayList2 = arrayList2;
            size5 = size5;
            o07Var = o07Var;
        }
        final ArrayList arrayList5 = arrayList2;
        final o07 o07Var2 = o07Var;
        final float f2 = this.$edgePadding;
        final ScrollableTabData scrollableTabData = this.$scrollableTabData;
        final int i5 = this.$selectedTabIndex;
        return MeasureScope.layout$default(measureScope, iMo1428roundToPx0680j_5, iIntValue, null, new nl3() { // from class: androidx.compose.material3.i4
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TabRowKt$ScrollableTabRowImpl$1$1$2$1.measure_3p2s80s$lambda$7(o07Var2, f2, arrayList5, arrayList4, scrollableTabData, measureScope, iMo1428roundToPx0680j_4, arrayList3, i5, iIntValue, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
