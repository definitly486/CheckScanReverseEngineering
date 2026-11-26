package androidx.compose.foundation.text;

import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class EmptyMeasurePolicy implements MeasurePolicy {
    public static final EmptyMeasurePolicy INSTANCE = new EmptyMeasurePolicy();
    private static final nl3<Placeable.PlacementScope, j59> placementBlock = new f();

    private EmptyMeasurePolicy() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 placementBlock$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        return MeasureScope.layout$default(measureScope, Constraints.m8995getMaxWidthimpl(j), Constraints.m8994getMaxHeightimpl(j), null, placementBlock, 4, null);
    }
}
