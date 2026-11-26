package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutCacheWindow;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class PagerCacheWindowLogic extends CacheWindowLogic {
    public static final int $stable = 8;
    private final LazyLayoutCacheWindow cacheWindow;
    private final PagerCacheWindowScope cacheWindowScope;
    private final ll3<Integer> itemCount;
    private final LazyLayoutPrefetchState state;

    public PagerCacheWindowLogic(LazyLayoutCacheWindow lazyLayoutCacheWindow, LazyLayoutPrefetchState lazyLayoutPrefetchState, ll3<Integer> ll3Var) {
        super(lazyLayoutCacheWindow, false);
        this.cacheWindow = lazyLayoutCacheWindow;
        this.state = lazyLayoutPrefetchState;
        this.itemCount = ll3Var;
        this.cacheWindowScope = new PagerCacheWindowScope(ll3Var);
    }

    private final void applyWindowScope(PagerMeasureResult pagerMeasureResult, nl3<? super CacheWindowScope, j59> nl3Var) {
        this.cacheWindowScope.setLayoutInfo(pagerMeasureResult);
        this.cacheWindowScope.setState(this.state);
        nl3Var.invoke(this.cacheWindowScope);
    }

    public final LazyLayoutCacheWindow getCacheWindow() {
        return this.cacheWindow;
    }

    public final ll3<Integer> getItemCount() {
        return this.itemCount;
    }

    public final LazyLayoutPrefetchState getState() {
        return this.state;
    }

    public final void onScroll(float f, PagerMeasureResult pagerMeasureResult) {
        this.cacheWindowScope.setLayoutInfo(pagerMeasureResult);
        this.cacheWindowScope.setState(this.state);
        onScroll(this.cacheWindowScope, -f);
    }

    public final void onVisibleItemsChanged(PagerMeasureResult pagerMeasureResult) {
        this.cacheWindowScope.setLayoutInfo(pagerMeasureResult);
        this.cacheWindowScope.setState(this.state);
        onVisibleItemsUpdated(this.cacheWindowScope);
    }
}
