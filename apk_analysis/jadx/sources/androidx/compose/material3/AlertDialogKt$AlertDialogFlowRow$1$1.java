package androidx.compose.material3;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class AlertDialogKt$AlertDialogFlowRow$1$1 implements MeasurePolicy {
    final /* synthetic */ float $crossAxisSpacing;
    final /* synthetic */ float $mainAxisSpacing;

    public AlertDialogKt$AlertDialogFlowRow$1$1(float f, float f2) {
        this.$mainAxisSpacing = f;
        this.$crossAxisSpacing = f2;
    }

    private static final boolean measure_3p2s80s$canAddToCurrentSequence(List<Placeable> list, p07 p07Var, MeasureScope measureScope, float f, long j, Placeable placeable) {
        if (list.isEmpty()) {
            return true;
        }
        return placeable.getWidth() + (measureScope.mo1428roundToPx0680j_4(f) + p07Var.b) <= Constraints.m8995getMaxWidthimpl(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$4(List list, MeasureScope measureScope, float f, int i, List list2, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            List list3 = (List) list.get(i2);
            int size2 = list3.size();
            int[] iArr = new int[size2];
            int i3 = 0;
            while (i3 < size2) {
                iArr[i3] = ((Placeable) list3.get(i3)).getWidth() + (i3 < list3.size() + (-1) ? measureScope.mo1428roundToPx0680j_4(f) : 0);
                i3++;
            }
            int[] iArr2 = new int[size2];
            Arrangement.INSTANCE.getEnd().arrange(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
            int size3 = list3.size();
            for (int i4 = 0; i4 < size3; i4++) {
                Placeable.PlacementScope.place$default(placementScope, (Placeable) list3.get(i4), iArr2[i4], ((Number) list2.get(i2)).intValue(), 0.0f, 4, null);
            }
        }
        return j59.a;
    }

    private static final void measure_3p2s80s$startNewSequence(List<List<Placeable>> list, p07 p07Var, MeasureScope measureScope, float f, List<Placeable> list2, List<Integer> list3, p07 p07Var2, List<Integer> list4, p07 p07Var3, p07 p07Var4) {
        if (!list.isEmpty()) {
            p07Var.b = measureScope.mo1428roundToPx0680j_4(f) + p07Var.b;
        }
        list.add(0, qn1.t0(list2));
        list3.add(Integer.valueOf(p07Var2.b));
        list4.add(Integer.valueOf(p07Var.b));
        p07Var.b += p07Var2.b;
        p07Var3.b = Math.max(p07Var3.b, p07Var4.b);
        list2.clear();
        p07Var4.b = 0;
        p07Var2.b = 0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, long j) {
        List<? extends Measurable> list2 = list;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        p07 p07Var = new p07();
        p07 p07Var2 = new p07();
        ArrayList arrayList4 = new ArrayList();
        p07 p07Var3 = new p07();
        p07 p07Var4 = new p07();
        float f = this.$mainAxisSpacing;
        ArrayList arrayList5 = arrayList3;
        float f2 = this.$crossAxisSpacing;
        int size = list2.size();
        int i = 0;
        while (i < size) {
            ArrayList arrayList6 = arrayList;
            Placeable placeableMo7702measureBRTryo0 = list2.get(i).mo7702measureBRTryo0(j);
            int i2 = i;
            if (!measure_3p2s80s$canAddToCurrentSequence(arrayList4, p07Var3, measureScope, f, j, placeableMo7702measureBRTryo0)) {
                p07 p07Var5 = p07Var4;
                ArrayList arrayList7 = arrayList2;
                ArrayList arrayList8 = arrayList4;
                p07 p07Var6 = p07Var;
                ArrayList arrayList9 = arrayList5;
                measure_3p2s80s$startNewSequence(arrayList6, p07Var2, measureScope, f2, arrayList8, arrayList7, p07Var5, arrayList9, p07Var6, p07Var3);
                arrayList4 = arrayList8;
                arrayList2 = arrayList7;
                p07Var4 = p07Var5;
                arrayList5 = arrayList9;
                p07Var = p07Var6;
                arrayList6 = arrayList6;
            }
            p07 p07Var7 = p07Var2;
            if (!arrayList4.isEmpty()) {
                p07Var3.b = measureScope.mo1428roundToPx0680j_4(f) + p07Var3.b;
            }
            arrayList4.add(placeableMo7702measureBRTryo0);
            p07Var3.b = placeableMo7702measureBRTryo0.getWidth() + p07Var3.b;
            p07Var4.b = Math.max(p07Var4.b, placeableMo7702measureBRTryo0.getHeight());
            i = i2 + 1;
            list2 = list;
            p07Var2 = p07Var7;
            size = size;
            arrayList = arrayList6;
        }
        final ArrayList arrayList10 = arrayList;
        p07 p07Var8 = p07Var2;
        if (!arrayList4.isEmpty()) {
            measure_3p2s80s$startNewSequence(arrayList10, p07Var8, measureScope, this.$crossAxisSpacing, arrayList4, arrayList2, p07Var4, arrayList5, p07Var, p07Var3);
        }
        final int iMax = Math.max(p07Var.b, Constraints.m8997getMinWidthimpl(j));
        int iMax2 = Math.max(p07Var8.b, Constraints.m8996getMinHeightimpl(j));
        final float f3 = this.$mainAxisSpacing;
        final ArrayList arrayList11 = arrayList5;
        return MeasureScope.layout$default(measureScope, iMax, iMax2, null, new nl3() { // from class: androidx.compose.material3.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AlertDialogKt$AlertDialogFlowRow$1$1.measure_3p2s80s$lambda$4(arrayList10, measureScope, f3, iMax, arrayList11, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
