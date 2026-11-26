package androidx.compose.foundation.pager;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.nl3;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {
    final /* synthetic */ int $beyondViewportPageCount;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ ll3<PagerLazyLayoutItemProvider> $itemProviderLambda;
    final /* synthetic */ Orientation $orientation;
    final /* synthetic */ ll3<Integer> $pageCount;
    final /* synthetic */ PageSize $pageSize;
    final /* synthetic */ float $pageSpacing;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ SnapPosition $snapPosition;
    final /* synthetic */ PagerState $state;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;

    public PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1(PagerState pagerState, Orientation orientation, PaddingValues paddingValues, boolean z, float f, PageSize pageSize, ll3<PagerLazyLayoutItemProvider> ll3Var, ll3<Integer> ll3Var2, Alignment.Vertical vertical, Alignment.Horizontal horizontal, int i, SnapPosition snapPosition, y22 y22Var) {
        this.$state = pagerState;
        this.$orientation = orientation;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z;
        this.$pageSpacing = f;
        this.$pageSize = pageSize;
        this.$itemProviderLambda = ll3Var;
        this.$pageCount = ll3Var2;
        this.$verticalAlignment = vertical;
        this.$horizontalAlignment = horizontal;
        this.$beyondViewportPageCount = i;
        this.$snapPosition = snapPosition;
        this.$coroutineScope = y22Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult measure_0kLqBqw$lambda$2(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, int i, int i2, int i3, int i4, nl3 nl3Var) {
        return lazyLayoutMeasureScope.layout(ConstraintsKt.m9012constrainWidthK40F9xA(j, i3 + i), ConstraintsKt.m9011constrainHeightK40F9xA(j, i4 + i2), mx2.b, nl3Var);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    public final MeasureResult mo2154measure0kLqBqw(final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j) {
        int i;
        long jM9164constructorimpl;
        ObservableScopeInvalidator.m2232attachToScopeimpl(this.$state.m2305getMeasurementScopeInvalidatorzYiylxw$foundation());
        Orientation orientation = this.$orientation;
        Orientation orientation2 = Orientation.Vertical;
        boolean z = orientation == orientation2;
        CheckScrollableContainerConstraintsKt.m1316checkScrollableContainerConstraintsK40F9xA(j, z ? orientation2 : Orientation.Horizontal);
        PaddingValues paddingValues = this.$contentPadding;
        int iMo1428roundToPx0680j_4 = z ? lazyLayoutMeasureScope.mo1428roundToPx0680j_4(paddingValues.mo1983calculateLeftPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.mo1428roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
        PaddingValues paddingValues2 = this.$contentPadding;
        int iMo1428roundToPx0680j_5 = z ? lazyLayoutMeasureScope.mo1428roundToPx0680j_4(paddingValues2.mo1984calculateRightPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.mo1428roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues2, lazyLayoutMeasureScope.getLayoutDirection()));
        int iMo1428roundToPx0680j_6 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(this.$contentPadding.mo1985calculateTopPaddingD9Ej5fM());
        int iMo1428roundToPx0680j_7 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(this.$contentPadding.mo1982calculateBottomPaddingD9Ej5fM());
        final int i2 = iMo1428roundToPx0680j_6 + iMo1428roundToPx0680j_7;
        final int i3 = iMo1428roundToPx0680j_4 + iMo1428roundToPx0680j_5;
        int i4 = z ? i2 : i3;
        if (z && !this.$reverseLayout) {
            i = iMo1428roundToPx0680j_6;
        } else if (z && this.$reverseLayout) {
            i = iMo1428roundToPx0680j_7;
        } else {
            i = (z || this.$reverseLayout) ? iMo1428roundToPx0680j_5 : iMo1428roundToPx0680j_4;
        }
        int i5 = i4 - i;
        long jM9014offsetNN6EwU = ConstraintsKt.m9014offsetNN6EwU(j, -i3, -i2);
        this.$state.setDensity$foundation(lazyLayoutMeasureScope);
        int iMo1428roundToPx0680j_8 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(this.$pageSpacing);
        int iM8994getMaxHeightimpl = z ? Constraints.m8994getMaxHeightimpl(j) - i2 : Constraints.m8995getMaxWidthimpl(j) - i3;
        if (!this.$reverseLayout || iM8994getMaxHeightimpl > 0) {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) << 32) | (((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            if (!z) {
                iMo1428roundToPx0680j_4 += iM8994getMaxHeightimpl;
            }
            if (z) {
                iMo1428roundToPx0680j_6 += iM8994getMaxHeightimpl;
            }
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) << 32) | (((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        int iCalculateMainAxisPageSize = this.$pageSize.calculateMainAxisPageSize(lazyLayoutMeasureScope, iM8994getMaxHeightimpl, iMo1428roundToPx0680j_8);
        int i6 = iCalculateMainAxisPageSize < 0 ? 0 : iCalculateMainAxisPageSize;
        this.$state.m2309setPremeasureConstraintsBRTryo0$foundation(ConstraintsKt.Constraints$default(0, this.$orientation == orientation2 ? Constraints.m8995getMaxWidthimpl(jM9014offsetNN6EwU) : i6, 0, this.$orientation != orientation2 ? Constraints.m8994getMaxHeightimpl(jM9014offsetNN6EwU) : i6, 5, null));
        PagerLazyLayoutItemProvider pagerLazyLayoutItemProviderInvoke = this.$itemProviderLambda.invoke();
        int i7 = iM8994getMaxHeightimpl + i + i5;
        Snapshot.Companion companion = Snapshot.Companion;
        PagerState pagerState = this.$state;
        SnapPosition snapPosition = this.$snapPosition;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            int iMatchScrollPositionWithKey$foundation = pagerState.matchScrollPositionWithKey$foundation(pagerLazyLayoutItemProviderInvoke, pagerState.getCurrentPage());
            int iCurrentPageOffset = PagerKt.currentPageOffset(snapPosition, i7, i6, iMo1428roundToPx0680j_8, i, i5, pagerState.getCurrentPage(), pagerState.getCurrentPageOffsetFraction(), pagerState.getPageCount());
            j59 j59Var = j59.a;
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            List<Integer> listCalculateLazyLayoutPinnedIndices = LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(pagerLazyLayoutItemProviderInvoke, this.$state.getPinnedPages$foundation(), this.$state.getBeyondBoundsInfo$foundation());
            MutableIntObjectMap mutableIntObjectMapMutableIntObjectMapOf = IntObjectMapKt.mutableIntObjectMapOf();
            PagerMeasureResult pagerMeasureResultM2302measurePager7L1iB3k = PagerMeasureKt.m2302measurePager7L1iB3k(lazyLayoutMeasureScope, this.$pageCount.invoke().intValue(), pagerLazyLayoutItemProviderInvoke, iM8994getMaxHeightimpl, i, i5, iMo1428roundToPx0680j_8, iMatchScrollPositionWithKey$foundation, iCurrentPageOffset, jM9014offsetNN6EwU, this.$orientation, this.$verticalAlignment, this.$horizontalAlignment, this.$reverseLayout, jM9164constructorimpl, i6, this.$beyondViewportPageCount, listCalculateLazyLayoutPinnedIndices, this.$snapPosition, this.$state.m2306getPlacementScopeInvalidatorzYiylxw$foundation(), this.$coroutineScope, lazyLayoutMeasureScope, new dm3() { // from class: androidx.compose.foundation.pager.e
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return PagerMeasurePolicyKt$rememberPagerMeasurePolicy$1$1.measure_0kLqBqw$lambda$2(lazyLayoutMeasureScope, j, i3, i2, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (nl3) obj3);
                }
            }, mutableIntObjectMapMutableIntObjectMapOf);
            PagerState.applyMeasureResult$foundation$default(this.$state, pagerMeasureResultM2302measurePager7L1iB3k, lazyLayoutMeasureScope.isLookingAhead(), false, 4, null);
            PagerMeasurePolicyKt.keepAroundItems(lazyLayoutMeasureScope, this.$state.getCacheWindowLogic$foundation(), pagerMeasureResultM2302measurePager7L1iB3k.getVisiblePagesInfo());
            return pagerMeasureResultM2302measurePager7L1iB3k;
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }
}
