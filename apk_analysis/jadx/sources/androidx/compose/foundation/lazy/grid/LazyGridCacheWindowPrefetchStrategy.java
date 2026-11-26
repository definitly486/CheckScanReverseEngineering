package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridCacheWindowPrefetchStrategy extends CacheWindowLogic implements LazyGridPrefetchStrategy {
    public static final int $stable = 8;
    private final LazyGridCacheWindowScope cacheWindowScope;

    public LazyGridCacheWindowPrefetchStrategy(LazyLayoutCacheWindow lazyLayoutCacheWindow) {
        super(lazyLayoutCacheWindow, false, 2, null);
        this.cacheWindowScope = new LazyGridCacheWindowScope();
    }

    private final void applyWindowScope(LazyGridPrefetchScope lazyGridPrefetchScope, LazyGridLayoutInfo lazyGridLayoutInfo, nl3<? super CacheWindowScope, j59> nl3Var) {
        this.cacheWindowScope.setLayoutInfo(lazyGridLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyGridPrefetchScope);
        nl3Var.invoke(this.cacheWindowScope);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public void onNestedPrefetch(NestedPrefetchScope nestedPrefetchScope, int i) {
        int nestedPrefetchItemCount = nestedPrefetchScope.getNestedPrefetchItemCount();
        for (int i2 = 0; i2 < nestedPrefetchItemCount; i2++) {
            nestedPrefetchScope.schedulePrecomposition(i + i2);
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public void onScroll(LazyGridPrefetchScope lazyGridPrefetchScope, float f, LazyGridLayoutInfo lazyGridLayoutInfo) {
        this.cacheWindowScope.setLayoutInfo(lazyGridLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyGridPrefetchScope);
        onScroll(this.cacheWindowScope, f);
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchStrategy
    public void onVisibleItemsUpdated(LazyGridPrefetchScope lazyGridPrefetchScope, LazyGridLayoutInfo lazyGridLayoutInfo) {
        this.cacheWindowScope.setLayoutInfo(lazyGridLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyGridPrefetchScope);
        onVisibleItemsUpdated(this.cacheWindowScope);
    }
}
