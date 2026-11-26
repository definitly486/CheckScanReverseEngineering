package androidx.compose.foundation.text;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import defpackage.b36;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class LinksTextMeasurePolicy implements MeasurePolicy {
    private final ll3<Boolean> shouldMeasureLinks;

    public LinksTextMeasurePolicy(ll3<Boolean> ll3Var) {
        this.shouldMeasureLinks = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final j59 measure_3p2s80s$lambda$0(List list, LinksTextMeasurePolicy linksTextMeasurePolicy, Placeable.PlacementScope placementScope) {
        List listMeasureWithTextRangeMeasureConstraints = BasicTextKt.measureWithTextRangeMeasureConstraints(list, linksTextMeasurePolicy.shouldMeasureLinks);
        if (listMeasureWithTextRangeMeasureConstraints != null) {
            int size = listMeasureWithTextRangeMeasureConstraints.size();
            for (int i = 0; i < size; i++) {
                b36 b36Var = (b36) listMeasureWithTextRangeMeasureConstraints.get(i);
                Placeable placeable = (Placeable) b36Var.b;
                ll3 ll3Var = (ll3) b36Var.c;
                Placeable.PlacementScope.m7768place70tqf50$default(placementScope, placeable, ll3Var != null ? ((IntOffset) ll3Var.invoke()).m9179unboximpl() : IntOffset.Companion.m9181getZeronOccac(), 0.0f, 2, null);
            }
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, final List<? extends Measurable> list, long j) {
        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, new nl3() { // from class: androidx.compose.foundation.text.k
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LinksTextMeasurePolicy.measure_3p2s80s$lambda$0(list, this, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }
}
