package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class RootMeasurePolicy extends LayoutNode.NoIntrinsicsMeasurePolicy {
    public static final int $stable = 0;
    public static final RootMeasurePolicy INSTANCE = new RootMeasurePolicy();

    private RootMeasurePolicy() {
        super("Undefined intrinsics block and it is required");
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int size = list.size();
        if (size == 0) {
            return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, RootMeasurePolicy$measure$1.INSTANCE, 4, null);
        }
        if (size == 1) {
            Placeable placeableMo7702measureBRTryo0 = list.get(0).mo7702measureBRTryo0(j);
            return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, placeableMo7702measureBRTryo0.getWidth()), ConstraintsKt.m9011constrainHeightK40F9xA(j, placeableMo7702measureBRTryo0.getHeight()), null, new RootMeasurePolicy$measure$2(placeableMo7702measureBRTryo0), 4, null);
        }
        ArrayList arrayList = new ArrayList(list.size());
        int size2 = list.size();
        int iMax = 0;
        int iMax2 = 0;
        for (int i = 0; i < size2; i++) {
            Placeable placeableMo7702measureBRTryo1 = list.get(i).mo7702measureBRTryo0(j);
            iMax = Math.max(placeableMo7702measureBRTryo1.getWidth(), iMax);
            iMax2 = Math.max(placeableMo7702measureBRTryo1.getHeight(), iMax2);
            arrayList.add(placeableMo7702measureBRTryo1);
        }
        return MeasureScope.layout$default(measureScope, ConstraintsKt.m9012constrainWidthK40F9xA(j, iMax), ConstraintsKt.m9011constrainHeightK40F9xA(j, iMax2), null, new RootMeasurePolicy$measure$3(arrayList), 4, null);
    }
}
