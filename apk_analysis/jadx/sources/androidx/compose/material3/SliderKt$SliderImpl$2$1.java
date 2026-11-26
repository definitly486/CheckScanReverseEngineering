package androidx.compose.material3;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.aa4;
import defpackage.hm;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import defpackage.tg;
import defpackage.ug;
import defpackage.w65;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderKt$SliderImpl$2$1 implements MeasurePolicy {
    final /* synthetic */ SliderState $state;

    public SliderKt$SliderImpl$2$1(SliderState sliderState) {
        this.$state = sliderState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$3(Placeable placeable, int i, int i2, Placeable placeable2, int i3, p07 p07Var, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, p07Var.b, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int width;
        int iMax;
        int width2;
        final int iB;
        final int i;
        int size = list.size();
        for (int i2 = 0; i2 < size; i2++) {
            Measurable measurable = list.get(i2);
            if (LayoutIdKt.getLayoutId(measurable) == SliderComponents.THUMB) {
                long j2 = j;
                final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j2);
                int size2 = list.size();
                int i3 = 0;
                while (i3 < size2) {
                    Measurable measurable2 = list.get(i3);
                    if (LayoutIdKt.getLayoutId(measurable2) == SliderComponents.TRACK) {
                        Orientation orientation$material3 = this.$state.getOrientation$material3();
                        Orientation orientation = Orientation.Vertical;
                        final Placeable placeableMo7702measureBRTryo1 = orientation$material3 == orientation ? measurable2.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(j2, 0, -placeableMo7702measureBRTryo0.getHeight(), 1, null), 0, 0, 0, 0, 14, null)) : measurable2.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(j, -placeableMo7702measureBRTryo0.getWidth(), 0, 2, null), 0, 0, 0, 0, 11, null));
                        final p07 p07Var = new p07();
                        float coercedValueAsFraction = this.$state.getCoercedValueAsFraction();
                        boolean z = aa4.a(coercedValueAsFraction, yr.J(this.$state.getTickFractions$material3())) || aa4.a(coercedValueAsFraction, yr.U(this.$state.getTickFractions$material3()));
                        int i4 = placeableMo7702measureBRTryo1.get(SliderKt.getCornerSizeAlignmentLine());
                        int i5 = i4 != Integer.MIN_VALUE ? i4 : 0;
                        if (this.$state.getOrientation$material3() == orientation) {
                            width = Math.max(placeableMo7702measureBRTryo1.getWidth(), placeableMo7702measureBRTryo0.getWidth());
                            iMax = placeableMo7702measureBRTryo1.getHeight() + placeableMo7702measureBRTryo0.getHeight();
                            width2 = ug.b(width, 2, placeableMo7702measureBRTryo1);
                            iB = placeableMo7702measureBRTryo0.getHeight() / 2;
                            int iB2 = ug.b(width, 2, placeableMo7702measureBRTryo0);
                            p07Var.b = (this.$state.getSteps() <= 0 || z) ? w65.b(placeableMo7702measureBRTryo1.getHeight() * coercedValueAsFraction) : w65.b((placeableMo7702measureBRTryo1.getHeight() - (i5 * 2)) * coercedValueAsFraction) + i5;
                            if (this.$state.getReverseVerticalDirection$material3()) {
                                p07Var.b = placeableMo7702measureBRTryo1.getHeight() - p07Var.b;
                            }
                            i = iB2;
                        } else {
                            width = placeableMo7702measureBRTryo0.getWidth() + placeableMo7702measureBRTryo1.getWidth();
                            iMax = Math.max(placeableMo7702measureBRTryo1.getHeight(), placeableMo7702measureBRTryo0.getHeight());
                            width2 = placeableMo7702measureBRTryo0.getWidth() / 2;
                            iB = tg.b(iMax, 2, placeableMo7702measureBRTryo1);
                            int iB3 = (this.$state.getSteps() <= 0 || z) ? w65.b(placeableMo7702measureBRTryo1.getWidth() * coercedValueAsFraction) : w65.b((placeableMo7702measureBRTryo1.getWidth() - (i5 * 2)) * coercedValueAsFraction) + i5;
                            p07Var.b = tg.b(iMax, 2, placeableMo7702measureBRTryo0);
                            i = iB3;
                        }
                        int i6 = width;
                        int i7 = iMax;
                        final int i8 = width2;
                        this.$state.updateDimensions$material3(i6, i7);
                        return MeasureScope.layout$default(measureScope, i6, i7, null, new nl3() { // from class: androidx.compose.material3.v3
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return SliderKt$SliderImpl$2$1.measure_3p2s80s$lambda$3(placeableMo7702measureBRTryo1, i8, iB, placeableMo7702measureBRTryo0, i, p07Var, (Placeable.PlacementScope) obj);
                            }
                        }, 4, null);
                    }
                    i3++;
                    j2 = j;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
