package androidx.compose.foundation.text;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.il1;
import defpackage.j59;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class AnnotatedStringResolveInlineContentKt$InlineChildren$1$2$1 implements MeasurePolicy {
    public static final AnnotatedStringResolveInlineContentKt$InlineChildren$1$2$1 INSTANCE = new AnnotatedStringResolveInlineContentKt$InlineChildren$1$2$1();

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(List list, Placeable.PlacementScope placementScope) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Placeable.PlacementScope.placeRelative$default(placementScope, (Placeable) list.get(i), 0, 0, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int iB = 0;
        while (iB < size) {
            iB = il1.b(list.get(iB), j, arrayList, iB, 1);
        }
        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, new nl3() { // from class: androidx.compose.foundation.text.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return AnnotatedStringResolveInlineContentKt$InlineChildren$1$2$1.measure_3p2s80s$lambda$1(arrayList, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
