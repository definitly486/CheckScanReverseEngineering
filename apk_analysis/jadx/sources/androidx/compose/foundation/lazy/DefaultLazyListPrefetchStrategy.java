package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import defpackage.jh2;
import defpackage.qn1;

/* JADX INFO: loaded from: classes.dex */
final class DefaultLazyListPrefetchStrategy implements LazyListPrefetchStrategy {
    private LazyLayoutPrefetchState.PrefetchHandle currentPrefetchHandle;
    private int indexToPrefetch;
    private final int initialNestedPrefetchItemCount;
    private float previousPassDelta;
    private int previousPassItemCount;
    private boolean wasScrollingForward;

    public DefaultLazyListPrefetchStrategy(int i) {
        this.initialNestedPrefetchItemCount = i;
        this.indexToPrefetch = -1;
        this.previousPassItemCount = -1;
    }

    private final int calculateIndexToPrefetch(LazyListLayoutInfo lazyListLayoutInfo, boolean z) {
        return z ? ((LazyListItemInfo) qn1.b0(lazyListLayoutInfo.getVisibleItemsInfo())).getIndex() + 1 : ((LazyListItemInfo) qn1.T(lazyListLayoutInfo.getVisibleItemsInfo())).getIndex() - 1;
    }

    private final void evaluatePrefetchForCancellation(LazyListLayoutInfo lazyListLayoutInfo, int i, boolean z) {
        if (i == -1 || lazyListLayoutInfo.getVisibleItemsInfo().isEmpty() || i == calculateIndexToPrefetch(lazyListLayoutInfo, z)) {
            return;
        }
        resetPrefetchState();
    }

    private final void resetPrefetchState() {
        this.indexToPrefetch = -1;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle = this.currentPrefetchHandle;
        if (prefetchHandle != null) {
            prefetchHandle.cancel();
        }
        this.currentPrefetchHandle = null;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onNestedPrefetch(NestedPrefetchScope nestedPrefetchScope, int i) {
        int nestedPrefetchItemCount = nestedPrefetchScope.getNestedPrefetchItemCount() == -1 ? this.initialNestedPrefetchItemCount : nestedPrefetchScope.getNestedPrefetchItemCount();
        for (int i2 = 0; i2 < nestedPrefetchItemCount; i2++) {
            nestedPrefetchScope.schedulePrecomposition(i + i2);
        }
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onScroll(LazyListPrefetchScope lazyListPrefetchScope, float f, LazyListLayoutInfo lazyListLayoutInfo) {
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle;
        LazyLayoutPrefetchState.PrefetchHandle prefetchHandle2;
        if (!lazyListLayoutInfo.getVisibleItemsInfo().isEmpty()) {
            boolean z = f < 0.0f;
            int iCalculateIndexToPrefetch = calculateIndexToPrefetch(lazyListLayoutInfo, z);
            if (iCalculateIndexToPrefetch >= 0 && iCalculateIndexToPrefetch < lazyListLayoutInfo.getTotalItemsCount()) {
                if (iCalculateIndexToPrefetch != this.indexToPrefetch) {
                    if (this.wasScrollingForward != z) {
                        resetPrefetchState();
                    }
                    this.wasScrollingForward = z;
                    this.indexToPrefetch = iCalculateIndexToPrefetch;
                    this.currentPrefetchHandle = LazyListPrefetchScope.schedulePrefetch$default(lazyListPrefetchScope, iCalculateIndexToPrefetch, null, 2, null);
                }
                if (z) {
                    LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) qn1.b0(lazyListLayoutInfo.getVisibleItemsInfo());
                    if (((lazyListItemInfo.getSize() + lazyListItemInfo.getOffset()) + lazyListLayoutInfo.getMainAxisItemSpacing()) - lazyListLayoutInfo.getViewportEndOffset() < (-f) && (prefetchHandle2 = this.currentPrefetchHandle) != null) {
                        prefetchHandle2.markAsUrgent();
                    }
                } else if (lazyListLayoutInfo.getViewportStartOffset() - ((LazyListItemInfo) qn1.T(lazyListLayoutInfo.getVisibleItemsInfo())).getOffset() < f && (prefetchHandle = this.currentPrefetchHandle) != null) {
                    prefetchHandle.markAsUrgent();
                }
            }
        }
        this.previousPassDelta = f;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onVisibleItemsUpdated(LazyListPrefetchScope lazyListPrefetchScope, LazyListLayoutInfo lazyListLayoutInfo) {
        evaluatePrefetchForCancellation(lazyListLayoutInfo, this.indexToPrefetch, this.wasScrollingForward);
        int totalItemsCount = lazyListLayoutInfo.getTotalItemsCount();
        int i = this.previousPassItemCount;
        if (i != -1 && this.previousPassDelta != 0.0f && i != totalItemsCount && !lazyListLayoutInfo.getVisibleItemsInfo().isEmpty()) {
            int iCalculateIndexToPrefetch = calculateIndexToPrefetch(lazyListLayoutInfo, this.previousPassDelta < 0.0f);
            if (iCalculateIndexToPrefetch >= 0 && iCalculateIndexToPrefetch < totalItemsCount) {
                this.indexToPrefetch = iCalculateIndexToPrefetch;
                this.currentPrefetchHandle = LazyListPrefetchScope.schedulePrefetch$default(lazyListPrefetchScope, iCalculateIndexToPrefetch, null, 2, null);
            }
        }
        this.previousPassItemCount = totalItemsCount;
    }

    public DefaultLazyListPrefetchStrategy() {
        this(0, 1, null);
    }

    public /* synthetic */ DefaultLazyListPrefetchStrategy(int i, int i2, jh2 jh2Var) {
        this((i2 & 1) != 0 ? 2 : i);
    }
}
