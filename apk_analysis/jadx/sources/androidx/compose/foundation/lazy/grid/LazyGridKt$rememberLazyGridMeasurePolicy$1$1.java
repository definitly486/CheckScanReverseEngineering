package androidx.compose.foundation.lazy.grid;

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
import androidx.compose.ui.graphics.GraphicsContext;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.dm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mx2;
import defpackage.ng;
import defpackage.nl3;
import defpackage.y22;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridKt$rememberLazyGridMeasurePolicy$1$1 implements LazyLayoutMeasurePolicy {
    final /* synthetic */ PaddingValues $contentPadding;
    final /* synthetic */ y22 $coroutineScope;
    final /* synthetic */ GraphicsContext $graphicsContext;
    final /* synthetic */ Arrangement.Horizontal $horizontalArrangement;
    final /* synthetic */ boolean $isVertical;
    final /* synthetic */ ll3<LazyGridItemProvider> $itemProviderLambda;
    final /* synthetic */ boolean $reverseLayout;
    final /* synthetic */ LazyGridSlotsProvider $slots;
    final /* synthetic */ LazyGridState $state;
    final /* synthetic */ StickyItemsPlacement $stickyItemsScrollBehavior;
    final /* synthetic */ Arrangement.Vertical $verticalArrangement;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridKt$rememberLazyGridMeasurePolicy$1$1(LazyGridState lazyGridState, boolean z, PaddingValues paddingValues, boolean z2, ll3<? extends LazyGridItemProvider> ll3Var, LazyGridSlotsProvider lazyGridSlotsProvider, Arrangement.Vertical vertical, Arrangement.Horizontal horizontal, y22 y22Var, GraphicsContext graphicsContext, StickyItemsPlacement stickyItemsPlacement) {
        this.$state = lazyGridState;
        this.$isVertical = z;
        this.$contentPadding = paddingValues;
        this.$reverseLayout = z2;
        this.$itemProviderLambda = ll3Var;
        this.$slots = lazyGridSlotsProvider;
        this.$verticalArrangement = vertical;
        this.$horizontalArrangement = horizontal;
        this.$coroutineScope = y22Var;
        this.$graphicsContext = graphicsContext;
        this.$stickyItemsScrollBehavior = stickyItemsPlacement;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ArrayList measure_0kLqBqw$lambda$2(LazyGridSpanLayoutProvider lazyGridSpanLayoutProvider, LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1 lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1, int i) {
        LazyGridSpanLayoutProvider.LineConfiguration lineConfiguration = lazyGridSpanLayoutProvider.getLineConfiguration(i);
        int firstItemIndex = lineConfiguration.getFirstItemIndex();
        ArrayList arrayList = new ArrayList(lineConfiguration.getSpans().size());
        List<GridItemSpan> spans = lineConfiguration.getSpans();
        int size = spans.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            int iM2175getCurrentLineSpanimpl = GridItemSpan.m2175getCurrentLineSpanimpl(spans.get(i3).m2178unboximpl());
            arrayList.add(new b36(Integer.valueOf(firstItemIndex), Constraints.m8982boximpl(lazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1.m2192childConstraintsJhjzzOo$foundation(i2, iM2175getCurrentLineSpanimpl))));
            firstItemIndex++;
            i2 += iM2175getCurrentLineSpanimpl;
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final MeasureResult measure_0kLqBqw$lambda$5(LazyLayoutMeasureScope lazyLayoutMeasureScope, long j, int i, int i2, int i3, int i4, nl3 nl3Var) {
        return lazyLayoutMeasureScope.layout(ConstraintsKt.m9012constrainWidthK40F9xA(j, i3 + i), ConstraintsKt.m9011constrainHeightK40F9xA(j, i4 + i2), mx2.b, nl3Var);
    }

    /* JADX WARN: Type inference failed for: r28v0, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1, androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider] */
    /* JADX WARN: Type inference failed for: r3v10, types: [androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1, androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider] */
    /* JADX WARN: Type inference failed for: r3v11, types: [androidx.compose.foundation.lazy.grid.e] */
    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutMeasurePolicy
    /* JADX INFO: renamed from: measure-0kLqBqw */
    public final MeasureResult mo2154measure0kLqBqw(final LazyLayoutMeasureScope lazyLayoutMeasureScope, final long j) {
        float fMo1746getSpacingD9Ej5fM;
        long jM9164constructorimpl;
        int lineIndexOfItem;
        int firstVisibleItemScrollOffset;
        ObservableScopeInvalidator.m2232attachToScopeimpl(this.$state.m2193getMeasurementScopeInvalidatorzYiylxw$foundation());
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
        final int i = iMo1428roundToPx0680j_6 + iMo1428roundToPx0680j_7;
        final int i2 = iMo1428roundToPx0680j_4 + iMo1428roundToPx0680j_5;
        boolean z4 = this.$isVertical;
        int i3 = z4 ? i : i2;
        if (z4 && !this.$reverseLayout) {
            iMo1428roundToPx0680j_5 = iMo1428roundToPx0680j_6;
        } else if (z4 && this.$reverseLayout) {
            iMo1428roundToPx0680j_5 = iMo1428roundToPx0680j_7;
        } else if (!z4 && !this.$reverseLayout) {
            iMo1428roundToPx0680j_5 = iMo1428roundToPx0680j_4;
        }
        final int i4 = i3 - iMo1428roundToPx0680j_5;
        long jM9014offsetNN6EwU = ConstraintsKt.m9014offsetNN6EwU(j, -i2, -i);
        final LazyGridItemProvider lazyGridItemProviderInvoke = this.$itemProviderLambda.invoke();
        final LazyGridSpanLayoutProvider spanLayoutProvider = lazyGridItemProviderInvoke.getSpanLayoutProvider();
        final LazyGridSlots lazyGridSlotsMo2179invoke0kLqBqw = this.$slots.mo2179invoke0kLqBqw(lazyLayoutMeasureScope, jM9014offsetNN6EwU);
        int length = lazyGridSlotsMo2179invoke0kLqBqw.getSizes().length;
        spanLayoutProvider.setSlotsPerLine(length);
        if (this.$isVertical) {
            Arrangement.Vertical vertical = this.$verticalArrangement;
            if (vertical == null) {
                throw ng.f("null verticalArrangement when isVertical == true");
            }
            fMo1746getSpacingD9Ej5fM = vertical.mo1746getSpacingD9Ej5fM();
        } else {
            Arrangement.Horizontal horizontal = this.$horizontalArrangement;
            if (horizontal == null) {
                throw ng.f("null horizontalArrangement when isVertical == false");
            }
            fMo1746getSpacingD9Ej5fM = horizontal.mo1746getSpacingD9Ej5fM();
        }
        final int iMo1428roundToPx0680j_8 = lazyLayoutMeasureScope.mo1428roundToPx0680j_4(fMo1746getSpacingD9Ej5fM);
        final int itemCount = lazyGridItemProviderInvoke.getItemCount();
        int iM8994getMaxHeightimpl = this.$isVertical ? Constraints.m8994getMaxHeightimpl(j) - i : Constraints.m8995getMaxWidthimpl(j) - i2;
        if (!this.$reverseLayout || iM8994getMaxHeightimpl > 0) {
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) << 32) | (((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        } else {
            boolean z5 = this.$isVertical;
            if (!z5) {
                iMo1428roundToPx0680j_4 += iM8994getMaxHeightimpl;
            }
            if (z5) {
                iMo1428roundToPx0680j_6 += iM8994getMaxHeightimpl;
            }
            jM9164constructorimpl = IntOffset.m9164constructorimpl((((long) iMo1428roundToPx0680j_4) << 32) | (((long) iMo1428roundToPx0680j_6) & MuxerUtil.UNSIGNED_INT_MAX_VALUE));
        }
        final long j2 = jM9164constructorimpl;
        final LazyGridState lazyGridState = this.$state;
        final boolean z6 = this.$isVertical;
        final boolean z7 = this.$reverseLayout;
        final int i5 = iMo1428roundToPx0680j_5;
        final ?? r28 = new LazyGridMeasuredItemProvider(lazyGridItemProviderInvoke, lazyLayoutMeasureScope, iMo1428roundToPx0680j_8, lazyGridState, z6, z7, i5, i4, j2) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredItemProvider$1
            final /* synthetic */ int $afterContentPadding;
            final /* synthetic */ int $beforeContentPadding;
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ boolean $reverseLayout;
            final /* synthetic */ LazyGridState $state;
            final /* synthetic */ LazyLayoutMeasureScope $this_LazyLayoutMeasurePolicy;
            final /* synthetic */ long $visualItemOffset;

            {
                this.$this_LazyLayoutMeasurePolicy = lazyLayoutMeasureScope;
                this.$state = lazyGridState;
                this.$isVertical = z6;
                this.$reverseLayout = z7;
                this.$beforeContentPadding = i5;
                this.$afterContentPadding = i4;
                this.$visualItemOffset = j2;
            }

            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredItemProvider
            /* JADX INFO: renamed from: createItem-O3s9Psw, reason: not valid java name */
            public LazyGridMeasuredItem mo2186createItemO3s9Psw(int i6, Object obj, Object obj2, int i7, int i8, List<? extends Placeable> list, long j3, int i9, int i10) {
                return new LazyGridMeasuredItem(i6, obj, this.$isVertical, i7, i8, this.$reverseLayout, this.$this_LazyLayoutMeasurePolicy.getLayoutDirection(), this.$beforeContentPadding, this.$afterContentPadding, list, this.$visualItemOffset, obj2, this.$state.getItemAnimator$foundation(), j3, i9, i10, null);
            }
        };
        final boolean z8 = this.$isVertical;
        final ?? r3 = new LazyGridMeasuredLineProvider(z8, lazyGridSlotsMo2179invoke0kLqBqw, itemCount, iMo1428roundToPx0680j_8, r28, spanLayoutProvider) { // from class: androidx.compose.foundation.lazy.grid.LazyGridKt$rememberLazyGridMeasurePolicy$1$1$measuredLineProvider$1
            final /* synthetic */ boolean $isVertical;
            final /* synthetic */ LazyGridSlots $resolvedSlots;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(z8, lazyGridSlotsMo2179invoke0kLqBqw, itemCount, iMo1428roundToPx0680j_8, r28, spanLayoutProvider);
                this.$isVertical = z8;
                this.$resolvedSlots = lazyGridSlotsMo2179invoke0kLqBqw;
            }

            @Override // androidx.compose.foundation.lazy.grid.LazyGridMeasuredLineProvider
            public LazyGridMeasuredLine createLine(int i6, LazyGridMeasuredItem[] lazyGridMeasuredItemArr, List<GridItemSpan> list, int i7) {
                return new LazyGridMeasuredLine(i6, lazyGridMeasuredItemArr, this.$resolvedSlots, list, this.$isVertical, i7);
            }
        };
        nl3 nl3Var = new nl3() { // from class: androidx.compose.foundation.lazy.grid.d
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyGridKt$rememberLazyGridMeasurePolicy$1$1.measure_0kLqBqw$lambda$2(spanLayoutProvider, r3, ((Integer) obj).intValue());
            }
        };
        ?? r4 = new nl3() { // from class: androidx.compose.foundation.lazy.grid.e
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return Integer.valueOf(spanLayoutProvider.getLineIndexOfItem(((Integer) obj).intValue()));
            }
        };
        Snapshot.Companion companion = Snapshot.Companion;
        LazyGridState lazyGridState2 = this.$state;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            int iUpdateScrollPositionIfTheFirstItemWasMoved$foundation = lazyGridState2.updateScrollPositionIfTheFirstItemWasMoved$foundation(lazyGridItemProviderInvoke, lazyGridState2.getFirstVisibleItemIndex());
            if (iUpdateScrollPositionIfTheFirstItemWasMoved$foundation < itemCount || itemCount <= 0) {
                lineIndexOfItem = spanLayoutProvider.getLineIndexOfItem(iUpdateScrollPositionIfTheFirstItemWasMoved$foundation);
                firstVisibleItemScrollOffset = lazyGridState2.getFirstVisibleItemScrollOffset();
            } else {
                lineIndexOfItem = spanLayoutProvider.getLineIndexOfItem(itemCount - 1);
                firstVisibleItemScrollOffset = 0;
            }
            int i6 = lineIndexOfItem;
            j59 j59Var = j59.a;
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            LazyGridMeasureResult lazyGridMeasureResultM2188measureLazyGridt1x4au0 = LazyGridMeasureKt.m2188measureLazyGridt1x4au0(itemCount, r3, r28, iM8994getMaxHeightimpl, i5, i4, iMo1428roundToPx0680j_8, i6, firstVisibleItemScrollOffset, (lazyLayoutMeasureScope.isLookingAhead() || !z) ? this.$state.getScrollToBeConsumed$foundation() : this.$state.getScrollDeltaBetweenPasses$foundation(), jM9014offsetNN6EwU, this.$isVertical, this.$verticalArrangement, this.$horizontalArrangement, this.$reverseLayout, lazyLayoutMeasureScope, this.$state.getItemAnimator$foundation(), length, LazyLayoutBeyondBoundsStateKt.calculateLazyLayoutPinnedIndices(lazyGridItemProviderInvoke, this.$state.getPinnedItems$foundation(), this.$state.getBeyondBoundsInfo$foundation()), z, lazyLayoutMeasureScope.isLookingAhead(), this.$state.getApproachLayoutInfo$foundation(), this.$coroutineScope, this.$state.m2194getPlacementScopeInvalidatorzYiylxw$foundation(), this.$graphicsContext, nl3Var, r4, this.$stickyItemsScrollBehavior, new dm3() { // from class: androidx.compose.foundation.lazy.grid.f
                @Override // defpackage.dm3
                public final Object invoke(Object obj, Object obj2, Object obj3) {
                    return LazyGridKt$rememberLazyGridMeasurePolicy$1$1.measure_0kLqBqw$lambda$5(lazyLayoutMeasureScope, j, i2, i, ((Integer) obj).intValue(), ((Integer) obj2).intValue(), (nl3) obj3);
                }
            });
            LazyGridState.applyMeasureResult$foundation$default(this.$state, lazyGridMeasureResultM2188measureLazyGridt1x4au0, lazyLayoutMeasureScope.isLookingAhead(), false, 4, null);
            Object prefetchStrategy$foundation = this.$state.getPrefetchStrategy$foundation();
            CacheWindowLogic cacheWindowLogic = prefetchStrategy$foundation instanceof CacheWindowLogic ? (CacheWindowLogic) prefetchStrategy$foundation : null;
            if (cacheWindowLogic != null) {
                LazyGridKt.keepAroundItems(cacheWindowLogic, lazyGridMeasureResultM2188measureLazyGridt1x4au0.getOrientation(), lazyGridMeasureResultM2188measureLazyGridt1x4au0.getVisibleItemsInfo(), r3);
            }
            return lazyGridMeasureResultM2188measureLazyGridt1x4au0;
        } catch (Throwable th) {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
            throw th;
        }
    }
}
