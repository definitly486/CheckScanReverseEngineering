package androidx.compose.foundation.text.selection;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class SimpleLayoutKt$SimpleLayout$1$1 implements MeasurePolicy {
    public static final SimpleLayoutKt$SimpleLayout$1$1 INSTANCE = new SimpleLayoutKt$SimpleLayout$1$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(List list, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable.PlacementScope.place$default(placementScope, (Placeable) list.get(i), 0, 0, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i = 0; i < size; i++) {
            Placeable placeableMo7702measureBRTryo0 = list.get(i).mo7702measureBRTryo0(j);
            iMax = Math.max(iMax, placeableMo7702measureBRTryo0.getWidth());
            iMax2 = Math.max(iMax2, placeableMo7702measureBRTryo0.getHeight());
            arrayList.add(placeableMo7702measureBRTryo0);
        }
        return MeasureScope.layout$default(measureScope, iMax, iMax2, null, new nl3() { // from class: androidx.compose.foundation.text.selection.d
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SimpleLayoutKt$SimpleLayout$1$1.measure_3p2s80s$lambda$1(arrayList, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
