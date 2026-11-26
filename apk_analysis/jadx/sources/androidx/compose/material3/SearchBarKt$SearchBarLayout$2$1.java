package androidx.compose.material3;

import androidx.activity.BackEventCompat;
import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.layout.LayoutIdKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.util.MathHelpersKt;
import defpackage.aa4;
import defpackage.hm;
import defpackage.j59;
import defpackage.nl3;
import defpackage.w65;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public final class SearchBarKt$SearchBarLayout$2$1 implements MeasurePolicy {
    final /* synthetic */ Animatable<Float, AnimationVector1D> $animationProgress;
    final /* synthetic */ MutableState<BackEventCompat> $currentBackEvent;
    final /* synthetic */ MutableFloatState $finalBackProgress;
    final /* synthetic */ MutableState<BackEventCompat> $firstBackEvent;
    final /* synthetic */ MutableWindowInsets $unconsumedInsets;

    public SearchBarKt$SearchBarLayout$2$1(Animatable<Float, AnimationVector1D> animatable, MutableWindowInsets mutableWindowInsets, MutableState<BackEventCompat> mutableState, MutableFloatState mutableFloatState, MutableState<BackEventCompat> mutableState2) {
        this.$animationProgress = animatable;
        this.$unconsumedInsets = mutableWindowInsets;
        this.$currentBackEvent = mutableState;
        this.$finalBackProgress = mutableFloatState;
        this.$firstBackEvent = mutableState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$3(MeasureScope measureScope, long j, MutableState mutableState, float f, float f2, MutableState mutableState2, int i, Placeable placeable, int i2, Placeable placeable2, int i3, Placeable placeable3, int i4, Placeable.PlacementScope placementScope) {
        int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMinMargin);
        int iM3809calculatePredictiveBackOffsetXrOvwMX4 = SearchBarKt.m3809calculatePredictiveBackOffsetXrOvwMX4(j, iMo1428roundToPx0680j_4, (BackEventCompat) mutableState.getValue(), measureScope.getLayoutDirection(), f, f2);
        int iM3810calculatePredictiveBackOffsetYdzo92Q0 = SearchBarKt.m3810calculatePredictiveBackOffsetYdzo92Q0(j, iMo1428roundToPx0680j_4, (BackEventCompat) mutableState.getValue(), (BackEventCompat) mutableState2.getValue(), i, measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMaxOffsetY), f2);
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable, iM3809calculatePredictiveBackOffsetXrOvwMX4, iM3810calculatePredictiveBackOffsetYdzo92Q0 + i2, 0.0f, 4, null);
        int i5 = iM3810calculatePredictiveBackOffsetYdzo92Q0 + i3;
        Placeable.PlacementScope.placeRelative$default(placementScope, placeable2, iM3809calculatePredictiveBackOffsetXrOvwMX4, i5, 0.0f, 4, null);
        if (placeable3 != null) {
            Placeable.PlacementScope.placeRelative$default(placementScope, placeable3, iM3809calculatePredictiveBackOffsetXrOvwMX4, placeable2.getHeight() + i5 + i4, 0.0f, 4, null);
        }
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(final MeasureScope measureScope, List<? extends Measurable> list, final long j) {
        Measurable measurable;
        final Placeable placeableMo7702measureBRTryo0;
        int iM8994getMaxHeightimpl;
        final float fFloatValue = this.$animationProgress.getValue().floatValue();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Measurable measurable2 = list.get(i);
            if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "InputField")) {
                List<? extends Measurable> list2 = list;
                int size2 = list2.size();
                int i2 = 0;
                while (i2 < size2) {
                    Measurable measurable3 = list.get(i2);
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "Surface")) {
                        int size3 = list2.size();
                        int i3 = 0;
                        while (true) {
                            if (i3 >= size3) {
                                measurable = null;
                                break;
                            }
                            measurable = list.get(i3);
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "Content")) {
                                break;
                            }
                            i3++;
                        }
                        Measurable measurable4 = measurable;
                        final int iMo1428roundToPx0680j_4 = measureScope.mo1428roundToPx0680j_4(SearchBarKt.getSearchBarVerticalPadding()) + this.$unconsumedInsets.getTop(measureScope);
                        int iMo1428roundToPx0680j_5 = measureScope.mo1428roundToPx0680j_4(SearchBarKt.getSearchBarVerticalPadding());
                        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j, measurable2.maxIntrinsicWidth(Constraints.m8994getMaxHeightimpl(j)));
                        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j, measurable2.minIntrinsicHeight(Constraints.m8995getMaxWidthimpl(j)));
                        int iB = w65.b(Constraints.m8995getMaxWidthimpl(j) * 0.9f);
                        int iB2 = w65.b(Constraints.m8994getMaxHeightimpl(j) * 0.9f);
                        final float fCalculatePredictiveBackMultiplier = SearchBarKt.calculatePredictiveBackMultiplier(this.$currentBackEvent.getValue(), fFloatValue, this.$finalBackProgress.getFloatValue());
                        int iLerp = MathHelpersKt.lerp(iM9012constrainWidthK40F9xA, iB, fCalculatePredictiveBackMultiplier);
                        int i4 = iMo1428roundToPx0680j_4 + iM9011constrainHeightK40F9xA;
                        int iLerp2 = MathHelpersKt.lerp(i4, iB2, fCalculatePredictiveBackMultiplier);
                        int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j);
                        int iM8994getMaxHeightimpl2 = Constraints.m8994getMaxHeightimpl(j);
                        int iLerp3 = MathHelpersKt.lerp(iLerp, iM8995getMaxWidthimpl, fFloatValue);
                        final int iLerp4 = MathHelpersKt.lerp(iLerp2, iM8994getMaxHeightimpl2, fFloatValue);
                        final int iLerp5 = MathHelpersKt.lerp(iMo1428roundToPx0680j_4, 0, fFloatValue);
                        final int iLerp6 = MathHelpersKt.lerp(0, iMo1428roundToPx0680j_5, fFloatValue);
                        final Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(ConstraintsKt.Constraints(iLerp3, iM8995getMaxWidthimpl, iM9011constrainHeightK40F9xA, iM9011constrainHeightK40F9xA));
                        int width = placeableMo7702measureBRTryo1.getWidth();
                        final Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(width, iLerp4 - iLerp5));
                        if (measurable4 != null) {
                            if (Constraints.m8990getHasBoundedHeightimpl(j)) {
                                iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j) - (i4 + iMo1428roundToPx0680j_5);
                                if (iM8994getMaxHeightimpl < 0) {
                                    iM8994getMaxHeightimpl = 0;
                                }
                            } else {
                                iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j);
                            }
                            placeableMo7702measureBRTryo0 = measurable4.mo7702measureBRTryo0(ConstraintsKt.Constraints(width, width, 0, iM8994getMaxHeightimpl));
                        } else {
                            placeableMo7702measureBRTryo0 = null;
                        }
                        final MutableState<BackEventCompat> mutableState = this.$currentBackEvent;
                        final MutableState<BackEventCompat> mutableState2 = this.$firstBackEvent;
                        return MeasureScope.layout$default(measureScope, width, iLerp4, null, new nl3() { // from class: androidx.compose.material3.s3
                            @Override // defpackage.nl3
                            public final Object invoke(Object obj) {
                                return SearchBarKt$SearchBarLayout$2$1.measure_3p2s80s$lambda$3(measureScope, j, mutableState, fFloatValue, fCalculatePredictiveBackMultiplier, mutableState2, iLerp4, placeableMo7702measureBRTryo2, iLerp5, placeableMo7702measureBRTryo1, iMo1428roundToPx0680j_4, placeableMo7702measureBRTryo0, iLerp6, (Placeable.PlacementScope) obj);
                            }
                        }, 4, null);
                    }
                    i2++;
                    measureScope = measureScope;
                    j = j;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
