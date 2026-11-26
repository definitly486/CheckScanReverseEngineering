package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.j59;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class SpacerMeasurePolicy implements MeasurePolicy {
    public static final SpacerMeasurePolicy INSTANCE = new SpacerMeasurePolicy();

    private SpacerMeasurePolicy() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        return MeasureScope.layout$default(measureScope, Constraints.m8993getHasFixedWidthimpl(j) ? Constraints.m8995getMaxWidthimpl(j) : 0, Constraints.m8992getHasFixedHeightimpl(j) ? Constraints.m8994getMaxHeightimpl(j) : 0, null, new e0(), 4, null);
    }
}
