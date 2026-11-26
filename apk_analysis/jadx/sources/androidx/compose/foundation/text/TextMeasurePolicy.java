package androidx.compose.foundation.text;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class TextMeasurePolicy implements MeasurePolicy {
    private final ll3<List<Rect>> placements;
    private final ll3<Boolean> shouldMeasureLinks;

    /* JADX WARN: Multi-variable type inference failed */
    public TextMeasurePolicy(ll3<Boolean> ll3Var, ll3<? extends List<Rect>> ll3Var2) {
        this.shouldMeasureLinks = ll3Var;
        this.placements = ll3Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 measure_3p2s80s$lambda$3(List list, List list2, Placeable.PlacementScope placementScope) {
        if (list != null) {
            int size = list.size();
            for (int i = 0; i < size; i++) {
                b36 b36Var = (b36) list.get(i);
                Placeable.PlacementScope.m7768place70tqf50$default(placementScope, (Placeable) b36Var.b, ((IntOffset) b36Var.c).m9179unboximpl(), 0.0f, 2, null);
            }
        }
        if (list2 != null) {
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                b36 b36Var2 = (b36) list2.get(i2);
                Placeable placeable = (Placeable) b36Var2.b;
                ll3 ll3Var = (ll3) b36Var2.c;
                Placeable.PlacementScope.m7768place70tqf50$default(placementScope, placeable, ll3Var != null ? ((IntOffset) ll3Var.invoke()).m9179unboximpl() : IntOffset.Companion.m9181getZeronOccac(), 0.0f, 2, null);
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final ArrayList arrayList;
        ArrayList arrayList2 = new ArrayList(list.size());
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (!(measurable.getParentData() instanceof TextRangeLayoutModifier)) {
                arrayList2.add(measurable);
            }
        }
        List<Rect> listInvoke = this.placements.invoke();
        if (listInvoke != null) {
            ArrayList arrayList3 = new ArrayList(listInvoke.size());
            int size2 = listInvoke.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Rect rect = listInvoke.get(i2);
                b36 b36Var = rect != null ? new b36(((Measurable) arrayList2.get(i2)).mo7702measureBRTryo0(ConstraintsKt.Constraints$default(0, (int) Math.floor(rect.getRight() - rect.getLeft()), 0, (int) Math.floor(rect.getBottom() - rect.getTop()), 5, null)), IntOffset.m9161boximpl(IntOffset.m9164constructorimpl((((long) Math.round(rect.getTop())) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) Math.round(rect.getLeft())) << 32)))) : null;
                if (b36Var != null) {
                    arrayList3.add(b36Var);
                }
            }
            arrayList = arrayList3;
        } else {
            arrayList = null;
        }
        ArrayList arrayList4 = new ArrayList(list.size());
        int size3 = list2.size();
        for (int i3 = 0; i3 < size3; i3++) {
            Measurable measurable2 = list.get(i3);
            if (measurable2.getParentData() instanceof TextRangeLayoutModifier) {
                arrayList4.add(measurable2);
            }
        }
        final List listMeasureWithTextRangeMeasureConstraints = BasicTextKt.measureWithTextRangeMeasureConstraints(arrayList4, this.shouldMeasureLinks);
        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, new nl3() { // from class: androidx.compose.foundation.text.q
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return TextMeasurePolicy.measure_3p2s80s$lambda$3(arrayList, listMeasureWithTextRangeMeasureConstraints, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
