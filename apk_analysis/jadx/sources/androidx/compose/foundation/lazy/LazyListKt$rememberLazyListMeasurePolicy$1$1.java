package androidx.compose.foundation.lazy;

import androidx.compose.foundation.CheckScrollableContainerConstraintsKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsStateKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy;
import androidx.compose.foundation.lazy.layout.LazyLayoutMeasureScope;
import androidx.compose.foundation.lazy.layout.ObservableScopeInvalidator;
import androidx.compose.foundation.lazy.layout.StickyItemsPlacement;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.ng;
import defpackage.nl3;
import defpackage.y22;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListKt$rememberLazyListMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {
    final /* synthetic */ int $beyondBoundsItemCount;
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ GraphicsContext $graphicsContext;
    final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ ll3<LazyListItemProvider> $itemProviderLambda;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyListState $state;
    final /* synthetic */ StickyItemsPlacement $stickyItemsPlacement;
    final /* synthetic */ Alignment.Vertical $verticalAlignment;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyListKt$rememberLazyListMeasurePolicy$1$1(LazyListState lazyListState, boolean z, PaddingValues paddingValues, boolean z2, ll3<? extends LazyListItemProvider> ll3Var, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, int i, y22 y22Var, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement, Alignment.Horizontal horizontal2, Alignment.Vertical vertical2) {
        this.$state = lazyListState;
        this.$isVertical = z;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z2;
        this.$itemProviderLambda = ll3Var;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$beyondBoundsItemCount = i;
        this.$coroutineScope = y22Var;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsPlacement = stickyItemsPlacement;
        this.$horizontalAlignment = horizontal2;
        this.$verticalAlignment = vertical2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult measure_0kLqBqw$lambda$3(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, int i, int i2, int i3, int i4, nl3 nl3Var) {
        return lazyLayoutMeasureScope.layout(ConstraintsKt.m9012constrainWidthK40F9xA(j, i3 + i), ConstraintsKt.m9011constrainHeightK40F9xA(j, i4 + i2), mx2.b, nl3Var);
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw, reason: not valid java name */
    public final MeasureResult mo2154measure0kLqBqw(final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j) {
        final int i;
        float fMo1746getSpacingD9Ej5fM;
        long jM9164constructorimpl;
        ObservableScopeInvalidator.m2232attachToScopeimpl(this.$state.m2169getMeasurementScopeInvalidatorzYiylxw$foundation());
        boolean z = this.$state.getHasLookaheadOccurred$foundation() || lazyLayoutMeasureScope.isLookingAhead();
        CheckScrollableContainerConstraintsKt.m1316checkScrollableContainerConstraintsK40F9xA(j, this.$isVertical ? Orientation.Vertical : Orientation.Horizontal);
        boolean z2 = this.$isVertical;
        PaddingValues paddingValues = this.$contentPadding;
        int iMo1428roundToPx0680j_4 = z2 ? lazyLayoutMeasureScope.mo1428roundToPx0680j_4(paddingValues.mo1983calculateLeftPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.mo1428roundToPx0680j_4(PaddingKt.calculateStartPadding(paddingValues, lazyLayoutMeasureScope.getLayoutDirection()));
        boolean z3 = this.$isVertical;
        PaddingValues paddingValues2 = this.$contentPadding;
        int iMo1428roundToPx0680j_5 = z3 ? lazyLayoutMeasureScope.mo1428roundToPx0680j_4(paddingValues2.mo1984calculateRightPaddingu2uoSUM(lazyLayoutMeasureScope.getLayoutDirection())) : lazyLayoutMeasureScope.mo1428roundToPx0680j_4(PaddingKt.calculateEndPadding(paddingValues2, lazyLayoutMeasureScope.getLayoutDirection()));
        int iMo1428roundToPx0680j_6 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(this.$contentPadding.mo1985calculateTopPaddingD9Ej5fM());
        int iMo1428roundToPx0680j_7 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(this.$contentPadding.mo1982calculateBottomPaddingD9Ej5fM());
        final int i2 = iMo1428roundToPx0680j_6 + iMo1428roundToPx0680j_7;
        final int i3 = iMo1428roundToPx0680j_4 + iMo1428roundToPx0680j_5;
        boolean z4 = this.$isVertical;
        int i4 = z4 ? i2 : i3;
        if (z4 && !this.$reverseLayout) {
            i = iMo1428roundToPx0680j_6;
        } else if (z4 && this.$reverseLayout) {
            i = iMo1428roundToPx0680j_7;
        } else {
            i = (z4 || this.$reverseLayout) ? iMo1428roundToPx0680j_5 : iMo1428roundToPx0680j_4;
        }
        final int i5 = i4 - i;
        final long jM9014offsetNN6EwU = ConstraintsKt.m9014offsetNN6EwU(j, -i3, -i2);
        final LazyListItemProvider lazyListItemProviderInvoke = this.$itemProviderLambda.invoke();
        lazyListItemProviderInvoke.getItemScope().setMaxSize(Constraints.m8995getMaxWidthimpl(jM9014offsetNN6EwU), Constraints.m8994getMaxHeightimpl(jM9014offsetNN6EwU));
        if (this.$isVertical) {
            Arrangement.Vertical vertical = this.$verticalArrangement;
            if (vertical == null) {
                throw ng.f("null verticalArrangement when isVertical == true");
            }
            fMo1746getSpacingD9Ej5fM = vertical.mo1746getSpacingD9Ej5fM();
        } else {
            Arrangement.Horizontal horizontal = this.$horizontalArrangement;
            if (horizontal == null) {
                throw ng.f("null horizontalAlignment when isVertical == false");
            }
            fMo1746getSpacingD9Ej5fM = horizontal.mo1746getSpacingD9Ej5fM();
        }
        final int iMo1428roundToPx0680j_8 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(fMo1746getSpacingD9Ej5fM);
        final int itemCount = lazyListItemProviderInvoke.getItemCount();
        int iM8994getMaxHeightimpl = this.$isVertical ? Constraints.m8994getMaxHeightimpl(j) - i2 : Constraints.m8995getMaxWidthimpl(j) - i3;
        if (!this.$reverseLayout || iM8994getMaxHeightimpl > 0) {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iMo1428roundToPx0680j_4) << 32));
        } else {
            boolean z5 = this.$isVertical;
            if (!z5) {
                iMo1428roundToPx0680j_4 += iM8994getMaxHeightimpl;
            }
            if (z5) {
                iMo1428roundToPx0680j_6 += iM8994getMaxHeightimpl;
            }
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE) | (((long) iMo1428roundToPx0680j_4) << 32));
        }
        final boolean z6 = this.$isVertical;
        final Alignment.Horizontal horizontal2 = this.$horizontalAlignment;
        final long j2 = jM9164constructorimpl;
        final Alignment.Vertical vertical2 = this.$verticalAlignment;
        final boolean z7 = this.$reverseLayout;
        final LazyListState lazyListState = this.$state;
        LazyListMeasuredItemProvider lazyListMeasuredItemProvider = new LazyListMeasuredItemProvider(jM9014offsetNN6EwU, z6, lazyListItemProviderInvoke, lazyLayoutMeasureScope, itemCount, iMo1428roundToPx0680j_8, horizontal2, vertical2, z7, i, i5, j2, lazyListState) { // from class: androidx.compose.foundation.lazy.LazyListKt$rememberLazyListMeasurePolicy$1$1$measuredItemProvider$1
            final /* synthetic */ int $afterContentPadding;
            final /* synthetic */ int $beforeContentPadding;
            final /* synthetic */ Alignment.Horizontal $horizontalAlignment;
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ int $itemsCount;
            final /* synthetic */ boolean $reverseLayout;
            final /* synthetic */ int $spaceBetweenItems;
            final /* synthetic */ LazyListState $state;
            final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
            final /* synthetic */ Alignment.Vertical $verticalAlignment;
            final /* synthetic */ long $visualItemOffset;

            {
                this.$isVertical = z6;
                this.$this_LazyLayoutMeasurePolicy = lazyLayoutMeasureScope;
                this.$itemsCount = itemCount;
                this.$spaceBetweenItems = iMo1428roundToPx0680j_8;
                this.$horizontalAlignment = horizontal2;
                this.$verticalAlignment = vertical2;
                this.$reverseLayout = z7;
                this.$beforeContentPadding = i;
                this.$afterContentPadding = i5;
                this.$visualItemOffset = j2;
                this.$state = lazyListState;
            }

            @Override // androidx.compose.foundation.lazy.LazyListMeasuredItemProvider
            /* JADX INFO: renamed from: createItem-X9ElhV4, reason: not valid java name */
            public LazyListMeasuredItem mo2155createItemX9ElhV4(int i6, Object obj, Object obj2, List<? extends Placeable> list, long j3) {
                return new LazyListMeasuredItem(i6, list, this.$isVertical, this.$horizontalAlignment, this.$verticalAlignment, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$reverseLayout, this.$beforeContentPadding, this.$afterContentPadding, i6 == this.$itemsCount + (-1) ? 0 : this.$spaceBetweenItems, this.$visualItemOffset, obj, obj2, this.$state.getItemAnimator$foundation(), j3, null);
            }
        };
        Snapshot.Companion companion = Snapshot.Companion;
        LazyListState lazyListState2 = this.$state;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            int iUpdateScrollPositionIfTheFirstItemWasMoved$foundation = lazyListState2.updateScrollPositionIfTheFirstItemWasMoved$foundation(lazyListItemProviderInvoke, lazyListState2.getFirstVisibleItemIndex());
            int firstVisibleItemScrollOffset = lazyListState2.getFirstVisibleItemScrollOffset();
            j59 j59Var = j59.a;
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            LazyListMeasureResult lazyListMeasureResultM2159measureLazyListpIk1_oM = LazyListMeasureKt.m2159measureLazyListpIk1_oM(itemCount, lazyListMeasuredItemProvider, iM8994getMaxHeightimpl, i, i5, iMo1428roundToPx0680j_8, iUpdateScrollPositionIfTheFirstItemWasMoved$foundation, firstVisibleItemScrollOffset, (lazyLayoutMeasureScope.isLookingAhead() || !z) ? this.$state.getScrollToBeConsumed$foundation() : this.$state.getScrollDeltaBetweenPasses$foundation(), jM9014offsetNN6EwU, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, lazyLayoutMeasureScope, this.$state.getItemAnimator$foundation(), this.$beyondBoundsItemCount, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(lazyListItemProviderInvoke, this.$state.getPinnedItems$foundation(), this.$state.getBeyondBoundsInfo$foundation()), z, lazyLayoutMeasureScope.isLookingAhead(), this.$coroutineScope, this.$state.m2170getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, this.$stickyItemsPlacement, !this.$state.getSkipItemPlacementAnimation$foundation(), new dm3() { // from class: androidx.compose.foundation.lazy.c
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return LazyListKt$rememberLazyListMeasurePolicy$1$1.measure_0kLqBqw$lambda$3(lazyLayoutMeasureScope, j, i3, i2, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (nl3) obj3);
                }
            });
            LazyListState.applyMeasureResult$foundation$default(this.$state, lazyListMeasureResultM2159measureLazyListpIk1_oM, lazyLayoutMeasureScope.isLookingAhead(), false, 4, null);
            Object prefetchStrategy$foundation = this.$state.getPrefetchStrategy$foundation();
            CacheWindowLogic cacheWindowLogic = prefetchStrategy$foundation instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy$foundation : null;
            if (cacheWindowLogic != null) {
                LazyListKt.keepAroundItems(cacheWindowLogic, lazyListMeasureResultM2159measureLazyListpIk1_oM.getVisibleItemsInfo(), lazyListMeasuredItemProvider);
            }
            return lazyListMeasureResultM2159measureLazyListpIk1_oM;
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }
}
