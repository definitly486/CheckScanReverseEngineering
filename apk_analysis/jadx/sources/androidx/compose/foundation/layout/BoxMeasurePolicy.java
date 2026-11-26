package androidx.compose.foundation.layout;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.aa4;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.sg;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class BoxMeasurePolicy implements MeasurePolicy {
    private final Alignment alignment;
    private final boolean propagateMinConstraints;

    public BoxMeasurePolicy(Alignment alignment, boolean z) {
        this.alignment = alignment;
        this.propagateMinConstraints = z;
    }

    private final Alignment component1() {
        return this.alignment;
    }

    private final boolean component2() {
        return this.propagateMinConstraints;
    }

    public static /* synthetic */ BoxMeasurePolicy copy$default(BoxMeasurePolicy boxMeasurePolicy, Alignment alignment, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            alignment = boxMeasurePolicy.alignment;
        }
        if ((i & 2) != 0) {
            z = boxMeasurePolicy.propagateMinConstraints;
        }
        return boxMeasurePolicy.copy(alignment, z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$0(Placeable.PlacementScope placementScope) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$1(Placeable placeable, Measurable measurable, MeasureScope measureScope, int i, int i2, BoxMeasurePolicy boxMeasurePolicy, Placeable.PlacementScope placementScope) {
        BoxKt.placeInBox(placementScope, placeable, measurable, measureScope.getLayoutDirection(), i, i2, boxMeasurePolicy.alignment);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$4(Placeable[] placeableArr, List list, MeasureScope measureScope, p07 p07Var, p07 p07Var2, BoxMeasurePolicy boxMeasurePolicy, Placeable.PlacementScope placementScope) {
        int length = placeableArr.length;
        int i = 0;
        int i2 = 0;
        while (i < length) {
            Placeable placeable = placeableArr[i];
            placeable.getClass();
            BoxKt.placeInBox(placementScope, placeable, (Measurable) list.get(i2), measureScope.getLayoutDirection(), p07Var.b, p07Var2.b, boxMeasurePolicy.alignment);
            i++;
            i2++;
        }
        return j59.a;
    }

    public final BoxMeasurePolicy copy(Alignment alignment, boolean z) {
        return new BoxMeasurePolicy(alignment, z);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof BoxMeasurePolicy)) {
            return false;
        }
        BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
        return aa4.e(this.alignment, boxMeasurePolicy.alignment) && this.propagateMinConstraints == boxMeasurePolicy.propagateMinConstraints;
    }

    public int hashCode() {
        return Boolean.hashCode(this.propagateMinConstraints) + (this.alignment.hashCode() * 31);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, final List<? extends Measurable> list, long j) {
        int iM8997getMinWidthimpl;
        int iM8996getMinHeightimpl;
        Placeable placeableMo7702measureBRTryo0;
        if (list.isEmpty()) {
            return MeasureScope.layout$default(measureScope, Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j), null, new c(), 4, null);
        }
        long jM8983constructorimpl = this.propagateMinConstraints ? j : Constraints.m8983constructorimpl(j & ConstraintsKt.MaxDimensionsAndFocusMask);
        if (list.size() == 1) {
            final Measurable measurable = list.get(0);
            if (BoxKt.getMatchesParentSize(measurable)) {
                iM8997getMinWidthimpl = Constraints.m8997getMinWidthimpl(j);
                iM8996getMinHeightimpl = Constraints.m8996getMinHeightimpl(j);
                placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(Constraints.m8997getMinWidthimpl(j), Constraints.m8996getMinHeightimpl(j)));
            } else {
                placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(jM8983constructorimpl);
                iM8997getMinWidthimpl = Math.max(Constraints.m8997getMinWidthimpl(j), placeableMo7702measureBRTryo0.getWidth());
                iM8996getMinHeightimpl = Math.max(Constraints.m8996getMinHeightimpl(j), placeableMo7702measureBRTryo0.getHeight());
            }
            final int i = iM8997getMinWidthimpl;
            final int i2 = iM8996getMinHeightimpl;
            final Placeable placeable = placeableMo7702measureBRTryo0;
            return MeasureScope.layout$default(measureScope, i, i2, null, new nl3() { // from class: androidx.compose.foundation.layout.d
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return BoxMeasurePolicy.measure_3p2s80s$lambda$1(placeable, measurable, measureScope, i, i2, this, (Placeable.PlacementScope) obj);
                }
            }, 4, null);
        }
        final Placeable[] placeableArr = new Placeable[list.size()];
        final p07 p07Var = new p07();
        p07Var.b = Constraints.m8997getMinWidthimpl(j);
        final p07 p07Var2 = new p07();
        p07Var2.b = Constraints.m8996getMinHeightimpl(j);
        List<? extends Measurable> list2 = list;
        int size = list2.size();
        boolean z = false;
        for (int i3 = 0; i3 < size; i3++) {
            Measurable measurable2 = list.get(i3);
            if (BoxKt.getMatchesParentSize(measurable2)) {
                z = true;
            } else {
                Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(jM8983constructorimpl);
                placeableArr[i3] = placeableMo7702measureBRTryo1;
                p07Var.b = Math.max(p07Var.b, placeableMo7702measureBRTryo1.getWidth());
                p07Var2.b = Math.max(p07Var2.b, placeableMo7702measureBRTryo1.getHeight());
            }
        }
        if (z) {
            int i4 = p07Var.b;
            int i5 = i4 != Integer.MAX_VALUE ? i4 : 0;
            int i6 = p07Var2.b;
            long jConstraints = ConstraintsKt.Constraints(i5, i4, i6 != Integer.MAX_VALUE ? i6 : 0, i6);
            int size2 = list2.size();
            for (int i7 = 0; i7 < size2; i7++) {
                Measurable measurable3 = list.get(i7);
                if (BoxKt.getMatchesParentSize(measurable3)) {
                    placeableArr[i7] = measurable3.mo7702measureBRTryo0(jConstraints);
                }
            }
        }
        return MeasureScope.layout$default(measureScope, p07Var.b, p07Var2.b, null, new nl3() { // from class: androidx.compose.foundation.layout.e
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return BoxMeasurePolicy.measure_3p2s80s$lambda$4(placeableArr, list, measureScope, p07Var, p07Var2, this, (Placeable.PlacementScope) obj);
            }
        }, 4, null);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("BoxMeasurePolicy(alignment=");
        sb.append(this.alignment);
        sb.append(", propagateMinConstraints=");
        return sg.d(sb, this.propagateMinConstraints, ')');
    }
}
