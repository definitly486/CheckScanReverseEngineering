package androidx.compose.foundation.gestures.snapping;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.pager.PageInfo;
import androidx.compose.foundation.pager.PagerLayoutInfo;
import androidx.compose.foundation.pager.PagerLayoutInfoKt;
import androidx.compose.foundation.pager.PagerSnapDistance;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.dm3;
import defpackage.kx6;
import defpackage.ll3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PagerSnapLayoutInfoProviderKt {
    public static final SnapLayoutInfoProvider SnapLayoutInfoProvider(final PagerState pagerState, final PagerSnapDistance pagerSnapDistance, final dm3<? super Float, ? super Float, ? super Float, Float> dm3Var) {
        return new SnapLayoutInfoProvider() { // from class: androidx.compose.foundation.gestures.snapping.PagerSnapLayoutInfoProviderKt.SnapLayoutInfoProvider.1
            private final b36<Float, Float> searchForSnappingBounds(SnapPosition snapPosition, float f) {
                float f2;
                List<PageInfo> visiblePagesInfo = getLayoutInfo().getVisiblePagesInfo();
                PagerState pagerState2 = pagerState;
                int size = visiblePagesInfo.size();
                int i = 0;
                float f3 = Float.NEGATIVE_INFINITY;
                float f4 = Float.POSITIVE_INFINITY;
                while (true) {
                    f2 = 0.0f;
                    if (i >= size) {
                        break;
                    }
                    PageInfo pageInfo = visiblePagesInfo.get(i);
                    float fCalculateDistanceToDesiredSnapPosition = SnapPositionKt.calculateDistanceToDesiredSnapPosition(PagerLayoutInfoKt.getMainAxisViewportSize(getLayoutInfo()), getLayoutInfo().getBeforeContentPadding(), getLayoutInfo().getAfterContentPadding(), getLayoutInfo().getPageSize(), pageInfo.getOffset(), pageInfo.getIndex(), snapPosition, pagerState2.getPageCount());
                    if (fCalculateDistanceToDesiredSnapPosition <= 0.0f && fCalculateDistanceToDesiredSnapPosition > f3) {
                        f3 = fCalculateDistanceToDesiredSnapPosition;
                    }
                    if (fCalculateDistanceToDesiredSnapPosition >= 0.0f && fCalculateDistanceToDesiredSnapPosition < f4) {
                        f4 = fCalculateDistanceToDesiredSnapPosition;
                    }
                    i++;
                }
                if (f3 == Float.NEGATIVE_INFINITY) {
                    f3 = f4;
                }
                if (f4 == Float.POSITIVE_INFINITY) {
                    f4 = f3;
                }
                if (!pagerState.getCanScrollForward()) {
                    if (PagerSnapLayoutInfoProviderKt.isScrollingForward(pagerState, f)) {
                        f3 = 0.0f;
                        f4 = 0.0f;
                    } else {
                        f4 = 0.0f;
                    }
                }
                if (pagerState.getCanScrollBackward()) {
                    f2 = f3;
                } else if (!PagerSnapLayoutInfoProviderKt.isScrollingForward(pagerState, f)) {
                    f4 = 0.0f;
                }
                return new b36<>(Float.valueOf(f2), Float.valueOf(f4));
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateApproachOffset(float f, float f2) {
                int pageSpacing$foundation = pagerState.getPageSpacing$foundation() + pagerState.getPageSize$foundation();
                if (pageSpacing$foundation == 0) {
                    return 0.0f;
                }
                PagerState pagerState2 = pagerState;
                int firstVisiblePage$foundation = f < 0.0f ? pagerState2.getFirstVisiblePage$foundation() + 1 : pagerState2.getFirstVisiblePage$foundation();
                int iAbs = Math.abs((kx6.f(pagerSnapDistance.calculateTargetPage(firstVisiblePage$foundation, kx6.f(((int) (f2 / pageSpacing$foundation)) + firstVisiblePage$foundation, 0, pagerState.getPageCount()), f, pagerState.getPageSize$foundation(), pagerState.getPageSpacing$foundation()), 0, pagerState.getPageCount()) - firstVisiblePage$foundation) * pageSpacing$foundation) - pageSpacing$foundation;
                int i = iAbs >= 0 ? iAbs : 0;
                return i == 0 ? i : i * Math.signum(f);
            }

            @Override // androidx.compose.foundation.gestures.snapping.SnapLayoutInfoProvider
            public float calculateSnapOffset(float f) {
                b36<Float, Float> b36VarSearchForSnappingBounds = searchForSnappingBounds(pagerState.getLayoutInfo().getSnapPosition(), f);
                float fFloatValue = b36VarSearchForSnappingBounds.b.floatValue();
                float fFloatValue2 = b36VarSearchForSnappingBounds.c.floatValue();
                float fFloatValue3 = dm3Var.invoke(Float.valueOf(f), Float.valueOf(fFloatValue), Float.valueOf(fFloatValue2)).floatValue();
                if (!(fFloatValue3 == fFloatValue || fFloatValue3 == fFloatValue2 || fFloatValue3 == 0.0f)) {
                    InlineClassHelperKt.throwIllegalStateException("Final Snapping Offset Should Be one of " + fFloatValue + ", " + fFloatValue2 + " or 0.0");
                }
                if (isValidDistance(fFloatValue3)) {
                    return fFloatValue3;
                }
                return 0.0f;
            }

            public final PagerLayoutInfo getLayoutInfo() {
                return pagerState.getLayoutInfo();
            }

            public final boolean isValidDistance(float f) {
                return (f == Float.POSITIVE_INFINITY || f == Float.NEGATIVE_INFINITY) ? false : true;
            }
        };
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0086 A[RETURN] */
    public static final float calculateFinalSnappingBound(PagerState pagerState, LayoutDirection layoutDirection, float f, float f2, float f3, float f4) {
        boolean zIsScrollingForward = isScrollingForward(pagerState, f2);
        if (pagerState.getLayoutInfo().getOrientation() != Orientation.Vertical && layoutDirection != LayoutDirection.Ltr) {
            zIsScrollingForward = !zIsScrollingForward;
        }
        int pageSize = pagerState.getLayoutInfo().getPageSize();
        float fDragGestureDelta = pageSize == 0 ? 0.0f : dragGestureDelta(pagerState) / pageSize;
        float f5 = fDragGestureDelta - ((int) fDragGestureDelta);
        int iCalculateFinalSnappingItem = LazyListSnapLayoutInfoProviderKt.calculateFinalSnappingItem(pagerState.getDensity$foundation(), f2);
        FinalSnappingItem.Companion companion = FinalSnappingItem.Companion;
        if (!FinalSnappingItem.m1673equalsimpl0(iCalculateFinalSnappingItem, companion.m1677getClosestItembbeMdSM())) {
            if (!FinalSnappingItem.m1673equalsimpl0(iCalculateFinalSnappingItem, companion.m1678getNextItembbeMdSM())) {
                if (FinalSnappingItem.m1673equalsimpl0(iCalculateFinalSnappingItem, companion.m1679getPreviousItembbeMdSM())) {
                    return f3;
                }
                return 0.0f;
            }
            return f4;
        }
        if (Math.abs(f5) <= f ? Math.abs(fDragGestureDelta) < Math.abs(pagerState.getPositionThresholdFraction$foundation()) ? Math.abs(f3) >= Math.abs(f4) : !zIsScrollingForward : zIsScrollingForward) {
            return f4;
        }
        return f3;
    }

    private static final void debugLog(ll3<String> ll3Var) {
    }

    private static final float dragGestureDelta(PagerState pagerState) {
        return pagerState.getLayoutInfo().getOrientation() == Orientation.Horizontal ? Float.intBitsToFloat((int) (pagerState.m2308getUpDownDifferenceF1C5BW0$foundation() >> 32)) : Float.intBitsToFloat((int) (pagerState.m2308getUpDownDifferenceF1C5BW0$foundation() & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean isScrollingForward(PagerState pagerState, float f) {
        boolean reverseLayout = pagerState.getLayoutInfo().getReverseLayout();
        boolean z = (pagerState.isNotGestureAction$foundation() ? -f : dragGestureDelta(pagerState)) > 0.0f;
        return (z && reverseLayout) || !(z || reverseLayout);
    }
}
