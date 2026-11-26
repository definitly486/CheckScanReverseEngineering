package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.snapping.LazyListSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dn4;
import defpackage.j59;
import defpackage.qn1;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListCacheWindowScope implements CacheWindowScope {
    public static final int $stable = 8;
    public LazyListLayoutInfo layoutInfo;
    public LazyListPrefetchScope prefetchScope;

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 schedulePrefetch$lambda$0(bm3 bm3Var, LazyListPrefetchResultScope lazyListPrefetchResultScope) {
        bm3Var.invoke(Integer.valueOf(lazyListPrefetchResultScope.getIndex()), Integer.valueOf(lazyListPrefetchResultScope.getMainAxisSize()));
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Density getDensity() {
        LazyListLayoutInfo layoutInfo = getLayoutInfo();
        LazyListMeasureResult lazyListMeasureResult = layoutInfo instanceof LazyListMeasureResult ? (LazyListMeasureResult) layoutInfo : null;
        if (lazyListMeasureResult != null) {
            return lazyListMeasureResult.getDensity();
        }
        return null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getFirstVisibleLineIndex() {
        return ((LazyListItemInfo) qn1.T(getLayoutInfo().getVisibleItemsInfo())).getIndex();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public boolean getHasVisibleItems() {
        return !getLayoutInfo().getVisibleItemsInfo().isEmpty();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastIndexInLine(int i) {
        return i;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastLineIndex() {
        if (getTotalItemsCount() == 0) {
            return -1;
        }
        return getTotalItemsCount() - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastVisibleLineIndex() {
        return ((LazyListItemInfo) qn1.b0(getLayoutInfo().getVisibleItemsInfo())).getIndex();
    }

    public final LazyListLayoutInfo getLayoutInfo() {
        LazyListLayoutInfo lazyListLayoutInfo = this.layoutInfo;
        if (lazyListLayoutInfo != null) {
            return lazyListLayoutInfo;
        }
        aa4.j("layoutInfo");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceEnd() {
        LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) qn1.b0(getLayoutInfo().getVisibleItemsInfo());
        return Math.abs((getLayoutInfo().getMainAxisItemSpacing() + (lazyListItemInfo.getSize() + lazyListItemInfo.getOffset())) - getLayoutInfo().getViewportEndOffset());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceStart() {
        int beforeContentPadding = getLayoutInfo().getBeforeContentPadding() + ((LazyListItemInfo) qn1.T(getLayoutInfo().getVisibleItemsInfo())).getOffset();
        if (beforeContentPadding > 0) {
            beforeContentPadding = 0;
        }
        return Math.abs(beforeContentPadding);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisViewportSize() {
        return LazyListSnapLayoutInfoProviderKt.getSingleAxisViewportSize(getLayoutInfo());
    }

    public final LazyListPrefetchScope getPrefetchScope() {
        LazyListPrefetchScope lazyListPrefetchScope = this.prefetchScope;
        if (lazyListPrefetchScope != null) {
            return lazyListPrefetchScope;
        }
        aa4.j("prefetchScope");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getTotalItemsCount() {
        return getLayoutInfo().getTotalItemsCount();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleItemLine(int i) {
        return getLayoutInfo().getVisibleItemsInfo().get(i).getIndex();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleItemSize(int i) {
        return getLayoutInfo().getVisibleItemsInfo().get(i).getSize();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleLineCount() {
        return getLayoutInfo().getVisibleItemsInfo().size();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Object getVisibleLineKey(int i) {
        return getLayoutInfo().getVisibleItemsInfo().get(i).getKey();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public List<LazyLayoutPrefetchState.PrefetchHandle> schedulePrefetch(int i, bm3<? super Integer, ? super Integer, j59> bm3Var) {
        return u96.h(getPrefetchScope().schedulePrefetch(i, new dn4(0, bm3Var)));
    }

    public final void setLayoutInfo(LazyListLayoutInfo lazyListLayoutInfo) {
        this.layoutInfo = lazyListLayoutInfo;
    }

    public final void setPrefetchScope(LazyListPrefetchScope lazyListPrefetchScope) {
        this.prefetchScope = lazyListPrefetchScope;
    }
}
