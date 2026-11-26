package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.NestedPrefetchScope;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListCacheWindowStrategy extends CacheWindowLogic implements LazyListPrefetchStrategy {
    public static final int $stable = 8;
    private final LazyListCacheWindowScope cacheWindowScope;

    public LazyListCacheWindowStrategy(LazyLayoutCacheWindow lazyLayoutCacheWindow) {
        super(lazyLayoutCacheWindow, false, 2, null);
        this.cacheWindowScope = new LazyListCacheWindowScope();
    }

    private final void applyWindowScope(LazyListPrefetchScope lazyListPrefetchScope, LazyListLayoutInfo lazyListLayoutInfo, nl3<? super CacheWindowScope, j59> nl3Var) {
        this.cacheWindowScope.setLayoutInfo(lazyListLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyListPrefetchScope);
        nl3Var.invoke(this.cacheWindowScope);
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onNestedPrefetch(NestedPrefetchScope nestedPrefetchScope, int i) {
        int nestedPrefetchItemCount = nestedPrefetchScope.getNestedPrefetchItemCount() == -1 ? 2 : nestedPrefetchScope.getNestedPrefetchItemCount();
        for (int i2 = 0; i2 < nestedPrefetchItemCount; i2++) {
            nestedPrefetchScope.schedulePrecomposition(i + i2);
        }
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onScroll(LazyListPrefetchScope lazyListPrefetchScope, float f, LazyListLayoutInfo lazyListLayoutInfo) {
        this.cacheWindowScope.setLayoutInfo(lazyListLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyListPrefetchScope);
        onScroll(this.cacheWindowScope, f);
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchStrategy
    public void onVisibleItemsUpdated(LazyListPrefetchScope lazyListPrefetchScope, LazyListLayoutInfo lazyListLayoutInfo) {
        this.cacheWindowScope.setLayoutInfo(lazyListLayoutInfo);
        this.cacheWindowScope.setPrefetchScope(lazyListPrefetchScope);
        onVisibleItemsUpdated(this.cacheWindowScope);
    }
}
