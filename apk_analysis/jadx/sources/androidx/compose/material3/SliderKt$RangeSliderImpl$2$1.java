package androidx.compose.material3;

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
import defpackage.tg;
import defpackage.ug;
import defpackage.w65;
import defpackage.yr;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SliderKt$RangeSliderImpl$2$1 implements MeasurePolicy {
    final /* synthetic */ RangeSliderState $state;

    public SliderKt$RangeSliderImpl$2$1(RangeSliderState rangeSliderState) {
        this.$state = rangeSliderState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$4(Placeable placeable, int i, int i2, Placeable placeable2, int i3, int i4, Placeable placeable3, int i5, int i6, Placeable.PlacementScope placementScope) {
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, i, i2, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, i3, i4, 0.0f, 4, null);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, i5, i6, 0.0f, 4, null);
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable = list.get(i);
            if (LayoutIdKt.getLayoutId(measurable) == RangeSliderComponents.STARTTHUMB) {
                final Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(j);
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable2 = list.get(i2);
                    if (LayoutIdKt.getLayoutId(measurable2) == RangeSliderComponents.ENDTHUMB) {
                        final Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(j);
                        int size3 = list2.size();
                        int i3 = 0;
                        while (i3 < size3) {
                            Measurable measurable3 = list.get(i3);
                            if (LayoutIdKt.getLayoutId(measurable3) == RangeSliderComponents.TRACK) {
                                final Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(Constraints.m8985copyZbe2FdA$default(ConstraintsKt.m9015offsetNN6EwU$default(j, (-(placeableMo7702measureBRTryo1.getWidth() + placeableMo7702measureBRTryo0.getWidth())) / 2, 0, 2, null), 0, 0, 0, 0, 11, null));
                                int width = ((placeableMo7702measureBRTryo1.getWidth() + placeableMo7702measureBRTryo0.getWidth()) / 2) + placeableMo7702measureBRTryo2.getWidth();
                                int iMax = Math.max(placeableMo7702measureBRTryo2.getHeight(), Math.max(placeableMo7702measureBRTryo0.getHeight(), placeableMo7702measureBRTryo1.getHeight()));
                                this.$state.setTotalWidth$material3(width);
                                this.$state.updateMinMaxPx$material3();
                                float coercedActiveRangeStartAsFraction$material3 = this.$state.getCoercedActiveRangeStartAsFraction$material3();
                                boolean z = true;
                                boolean z2 = aa4.a(coercedActiveRangeStartAsFraction$material3, yr.J(this.$state.getTickFractions$material3())) || aa4.a(coercedActiveRangeStartAsFraction$material3, yr.U(this.$state.getTickFractions$material3()));
                                float coercedActiveRangeEndAsFraction$material3 = this.$state.getCoercedActiveRangeEndAsFraction$material3();
                                if (!aa4.a(coercedActiveRangeEndAsFraction$material3, yr.J(this.$state.getTickFractions$material3())) && !aa4.a(coercedActiveRangeEndAsFraction$material3, yr.U(this.$state.getTickFractions$material3()))) {
                                    z = false;
                                }
                                final int width2 = placeableMo7702measureBRTryo0.getWidth() / 2;
                                int i4 = placeableMo7702measureBRTryo2.get(SliderKt.getCornerSizeAlignmentLine());
                                int i5 = i4 != Integer.MIN_VALUE ? i4 : 0;
                                final int iB = (this.$state.getSteps() <= 0 || z2) ? w65.b(placeableMo7702measureBRTryo2.getWidth() * coercedActiveRangeStartAsFraction$material3) : w65.b((placeableMo7702measureBRTryo2.getWidth() - (i5 * 2)) * coercedActiveRangeStartAsFraction$material3) + i5;
                                int iB2 = ug.b(placeableMo7702measureBRTryo0.getWidth(), 2, placeableMo7702measureBRTryo1);
                                final int iB3 = (this.$state.getSteps() <= 0 || z) ? w65.b((placeableMo7702measureBRTryo2.getWidth() * coercedActiveRangeEndAsFraction$material3) + iB2) : w65.b(((placeableMo7702measureBRTryo2.getWidth() - (i5 * 2)) * coercedActiveRangeEndAsFraction$material3) + iB2) + i5;
                                final int iB4 = tg.b(iMax, 2, placeableMo7702measureBRTryo2);
                                final int iB5 = tg.b(iMax, 2, placeableMo7702measureBRTryo0);
                                final int iB6 = tg.b(iMax, 2, placeableMo7702measureBRTryo1);
                                return MeasureScope.layout$default(measureScope, width, iMax, null, new nl3() { // from class: androidx.compose.material3.u3
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return SliderKt$RangeSliderImpl$2$1.measure_3p2s80s$lambda$4(placeableMo7702measureBRTryo2, width2, iB4, placeableMo7702measureBRTryo0, iB, iB5, placeableMo7702measureBRTryo1, iB3, iB6, (Placeable.PlacementScope) obj);
                                    }
                                }, 4, null);
                            }
                            i3++;
                            j = j;
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                    i2++;
                    j = j;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
