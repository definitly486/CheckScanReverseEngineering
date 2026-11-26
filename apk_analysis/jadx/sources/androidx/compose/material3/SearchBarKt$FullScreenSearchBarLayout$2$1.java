package androidx.compose.material3;

import androidx.compose.material3.internal.BackEventProgress;
import androidx.compose.material3.internal.MutableWindowInsets;
import androidx.compose.material3.internal.SwipeEdge;
import androidx.compose.runtime.MutableState;
import androidx.compose.ui.graphics.GraphicsLayerScope;
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
public final class SearchBarKt$FullScreenSearchBarLayout$2$1 implements MeasurePolicy {
    final /* synthetic */ MutableState<BackEventProgress.InProgress> $firstInProgressValue;
    final /* synthetic */ MutableState<BackEventProgress.InProgress> $lastInProgressValue;
    final /* synthetic */ SearchBarState $state;
    final /* synthetic */ MutableWindowInsets $unconsumedInsets;

    public SearchBarKt$FullScreenSearchBarLayout$2$1(MutableState<BackEventProgress.InProgress> mutableState, SearchBarState searchBarState, MutableWindowInsets mutableWindowInsets, MutableState<BackEventProgress.InProgress> mutableState2) {
        this.$lastInProgressValue = mutableState;
        this.$state = searchBarState;
        this.$unconsumedInsets = mutableWindowInsets;
        this.$firstInProgressValue = mutableState2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$6(MutableState mutableState, float f, final SearchBarState searchBarState, Placeable placeable, Placeable placeable2, int i, Placeable placeable3, int i2, long j, MeasureScope measureScope, int i3, MutableState mutableState2, int i4, int i5, Placeable.PlacementScope placementScope) {
        BackEventProgress.InProgress inProgress = (BackEventProgress.InProgress) mutableState.getValue();
        int iLerp = MathHelpersKt.lerp(0, inProgress != null ? measure_3p2s80s$lambda$6$endOffsetX(inProgress, j, measureScope, i3, searchBarState) : 0, f);
        BackEventProgress.InProgress inProgress2 = (BackEventProgress.InProgress) mutableState.getValue();
        int iLerp2 = MathHelpersKt.lerp(0, inProgress2 != null ? measure_3p2s80s$lambda$6$endOffsetY(inProgress2, mutableState2, j, i4, measureScope, i5, searchBarState) : 0, f);
        int iLerp3 = MathHelpersKt.lerp(SearchBarKt.getCollapsedBounds(searchBarState).getLeft(), iLerp, searchBarState.getProgress());
        int iLerp4 = MathHelpersKt.lerp(SearchBarKt.getCollapsedBounds(searchBarState).getTop(), iLerp2, searchBarState.getProgress());
        Placeable.PlacementScope.place$default(placementScope, placeable, iLerp3, iLerp4, 0.0f, 4, null);
        int i6 = iLerp4 + i;
        Placeable.PlacementScope.place$default(placementScope, placeable2, iLerp3, i6, 0.0f, 4, null);
        Placeable.PlacementScope.placeWithLayer$default(placementScope, placeable3, iLerp3, placeable2.getHeight() + i6 + i2, 0.0f, new nl3() { // from class: androidx.compose.material3.q3
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return SearchBarKt$FullScreenSearchBarLayout$2$1.measure_3p2s80s$lambda$6$lambda$5(searchBarState, (GraphicsLayerScope) obj);
            }
        }, 4, (Object) null);
        return j59.a;
    }

    private static final int measure_3p2s80s$lambda$6$endOffsetX(BackEventProgress.InProgress inProgress, long j, MeasureScope measureScope, int i, SearchBarState searchBarState) {
        int iM8995getMaxWidthimpl = inProgress.getSwipeEdge() == SwipeEdge.Left ? (Constraints.m8995getMaxWidthimpl(j) - measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMinMargin)) - i : measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMinMargin);
        int right = SearchBarKt.getCollapsedBounds(searchBarState).getRight() - i;
        if (iM8995getMaxWidthimpl < right) {
            iM8995getMaxWidthimpl = right;
        }
        int left = SearchBarKt.getCollapsedBounds(searchBarState).getLeft();
        return iM8995getMaxWidthimpl > left ? left : iM8995getMaxWidthimpl;
    }

    private static final int measure_3p2s80s$lambda$6$endOffsetY(BackEventProgress.InProgress inProgress, MutableState<BackEventProgress.InProgress> mutableState, long j, int i, MeasureScope measureScope, int i2, SearchBarState searchBarState) {
        float touchY = inProgress.getTouchY();
        BackEventProgress.InProgress value = mutableState.getValue();
        if (value == null) {
            return 0;
        }
        float touchY2 = touchY - value.getTouchY();
        float fAbs = Math.abs(touchY2) / Constraints.m8994getMaxHeightimpl(j);
        int iM8994getMaxHeightimpl = ((Constraints.m8994getMaxHeightimpl(j) - i) / 2) - measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMinMargin);
        if (iM8994getMaxHeightimpl < 0) {
            iM8994getMaxHeightimpl = 0;
        }
        int iLerp = (MathHelpersKt.lerp(0, Math.min(iM8994getMaxHeightimpl, measureScope.mo1428roundToPx0680j_4(SearchBarKt.SearchBarPredictiveBackMaxOffsetY)), fAbs) * ((int) Math.signum(touchY2))) + i2;
        int top = SearchBarKt.getCollapsedBounds(searchBarState).getTop();
        return iLerp > top ? top : iLerp;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 measure_3p2s80s$lambda$6$lambda$5(SearchBarState searchBarState, GraphicsLayerScope graphicsLayerScope) {
        graphicsLayerScope.setAlpha(searchBarState.getProgress());
        return j59.a;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    /* JADX INFO: renamed from: measure-3p2s80s */
    public final MeasureResult mo1045measure3p2s80s(MeasureScope measureScope, List<? extends Measurable> list, long j) {
        final MeasureScope measureScope2 = measureScope;
        List<? extends Measurable> list2 = list;
        final long j2 = j;
        float fTransform = SearchBarKt.transform(this.$lastInProgressValue.getValue());
        int width = SearchBarKt.getCollapsedBounds(this.$state).getWidth();
        Integer numValueOf = Integer.valueOf(width);
        if (width == 0) {
            numValueOf = null;
        }
        int iIntValue = numValueOf != null ? numValueOf.intValue() : measureScope2.mo1428roundToPx0680j_4(SearchBarKt.getSearchBarMinWidth());
        int height = SearchBarKt.getCollapsedBounds(this.$state).getHeight();
        Integer numValueOf2 = height != 0 ? Integer.valueOf(height) : null;
        int iIntValue2 = numValueOf2 != null ? numValueOf2.intValue() : measureScope2.mo1428roundToPx0680j_4(SearchBarDefaults.INSTANCE.m3787getInputFieldHeightD9Ej5fM());
        int iB = w65.b(Constraints.m8995getMaxWidthimpl(j2) * 0.9f);
        final int i = iB < iIntValue ? iIntValue : iB;
        int iB2 = w65.b(Constraints.m8994getMaxHeightimpl(j2) * 0.9f);
        final int i2 = iB2 < iIntValue2 ? iIntValue2 : iB2;
        int iLerp = MathHelpersKt.lerp(Constraints.m8995getMaxWidthimpl(j2), i, fTransform);
        int iLerp2 = MathHelpersKt.lerp(Constraints.m8994getMaxHeightimpl(j2), i2, fTransform);
        int iM9012constrainWidthK40F9xA = ConstraintsKt.m9012constrainWidthK40F9xA(j2, MathHelpersKt.lerp(iIntValue, iLerp, this.$state.getProgress()));
        int iM9011constrainHeightK40F9xA = ConstraintsKt.m9011constrainHeightK40F9xA(j2, MathHelpersKt.lerp(iIntValue2, iLerp2, this.$state.getProgress()));
        int size = list2.size();
        int i3 = 0;
        while (i3 < size) {
            Measurable measurable = list2.get(i3);
            final float f = fTransform;
            if (aa4.e(LayoutIdKt.getLayoutId(measurable), "Surface")) {
                Placeable placeableMo7702measureBRTryo0 = measurable.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iM9012constrainWidthK40F9xA, iM9011constrainHeightK40F9xA));
                List<? extends Measurable> list3 = list2;
                int size2 = list3.size();
                int i4 = 0;
                while (i4 < size2) {
                    Measurable measurable2 = list2.get(i4);
                    final Placeable placeable = placeableMo7702measureBRTryo0;
                    int i5 = iM9011constrainHeightK40F9xA;
                    if (aa4.e(LayoutIdKt.getLayoutId(measurable2), "InputField")) {
                        final Placeable placeableMo7702measureBRTryo1 = measurable2.mo7702measureBRTryo0(Constraints.Companion.m9005fixedJhjzzOo(iM9012constrainWidthK40F9xA, iIntValue2));
                        final int iMo1428roundToPx0680j_4 = measureScope2.mo1428roundToPx0680j_4(SearchBarKt.getSearchBarVerticalPadding()) + this.$unconsumedInsets.getTop(measureScope2);
                        int iMo1428roundToPx0680j_5 = measureScope2.mo1428roundToPx0680j_4(SearchBarKt.getSearchBarVerticalPadding());
                        int iLerp3 = MathHelpersKt.lerp(0, iMo1428roundToPx0680j_4, Math.min(this.$state.getProgress(), 1.0f - f));
                        final int iLerp4 = MathHelpersKt.lerp(0, iMo1428roundToPx0680j_5, this.$state.getProgress());
                        int height2 = placeableMo7702measureBRTryo1.getHeight() + iLerp3 + iLerp4;
                        int size3 = list3.size();
                        int i6 = 0;
                        while (i6 < size3) {
                            Measurable measurable3 = list2.get(i6);
                            int i7 = height2;
                            final int i8 = iLerp3;
                            if (aa4.e(LayoutIdKt.getLayoutId(measurable3), "Content")) {
                                int i9 = i5 - i7;
                                if (i9 < 0) {
                                    i9 = 0;
                                }
                                final Placeable placeableMo7702measureBRTryo2 = measurable3.mo7702measureBRTryo0(ConstraintsKt.Constraints(iM9012constrainWidthK40F9xA, iM9012constrainWidthK40F9xA, 0, i9));
                                int iM8995getMaxWidthimpl = Constraints.m8995getMaxWidthimpl(j2);
                                int iM8994getMaxHeightimpl = Constraints.m8994getMaxHeightimpl(j2);
                                final MutableState<BackEventProgress.InProgress> mutableState = this.$lastInProgressValue;
                                final SearchBarState searchBarState = this.$state;
                                final MutableState<BackEventProgress.InProgress> mutableState2 = this.$firstInProgressValue;
                                return MeasureScope.layout$default(measureScope, iM8995getMaxWidthimpl, iM8994getMaxHeightimpl, null, new nl3() { // from class: androidx.compose.material3.r3
                                    @Override // defpackage.nl3
                                    public final Object invoke(Object obj) {
                                        return SearchBarKt$FullScreenSearchBarLayout$2$1.measure_3p2s80s$lambda$6(mutableState, f, searchBarState, placeable, placeableMo7702measureBRTryo1, i8, placeableMo7702measureBRTryo2, iLerp4, j2, measureScope2, i, mutableState2, i2, iMo1428roundToPx0680j_4, (Placeable.PlacementScope) obj);
                                    }
                                }, 4, null);
                            }
                            i6++;
                            measureScope2 = measureScope;
                            list2 = list;
                            j2 = j;
                            height2 = i7;
                            iLerp3 = i8;
                        }
                        throw hm.d("Collection contains no element matching the predicate.");
                    }
                    i4++;
                    measureScope2 = measureScope;
                    list2 = list;
                    j2 = j;
                    placeableMo7702measureBRTryo0 = placeable;
                    iM9011constrainHeightK40F9xA = i5;
                }
                throw hm.d("Collection contains no element matching the predicate.");
            }
            i3++;
            measureScope2 = measureScope;
            list2 = list;
            j2 = j;
            fTransform = f;
        }
        throw hm.d("Collection contains no element matching the predicate.");
    }
}
