package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.ui.unit.Density;
import com.google.firebase.remoteconfig.RemoteConfigConstants;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.qn1;
import defpackage.u96;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class PagerCacheWindowScope implements CacheWindowScope {
    private final ll3<Integer> itemCount;
    public PagerMeasureResult layoutInfo;
    public LazyLayoutPrefetchState state;

    public PagerCacheWindowScope(ll3<Integer> ll3Var) {
        this.itemCount = ll3Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 schedulePrefetch$lambda$0(bm3 bm3Var, PagerCacheWindowScope pagerCacheWindowScope, LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope) {
        bm3Var.invoke(Integer.valueOf(prefetchResultScope.getIndex()), Integer.valueOf(pagerCacheWindowScope.getLayoutInfo().getPageSize()));
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Density getDensity() {
        return getLayoutInfo().getDensity();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getFirstVisibleLineIndex() {
        if (getLayoutInfo().getVisiblePagesInfo().isEmpty()) {
            return -1;
        }
        long index = ((long) ((MeasuredPage) qn1.T(getLayoutInfo().getVisiblePagesInfo())).getIndex()) - ((long) getLayoutInfo().getBeyondViewportPageCount());
        if (index < 0) {
            index = 0;
        }
        return (int) index;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public boolean getHasVisibleItems() {
        return !getLayoutInfo().getVisiblePagesInfo().isEmpty();
    }

    public final ll3<Integer> getItemCount() {
        return this.itemCount;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastIndexInLine(int i) {
        return i;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastLineIndex() {
        if (getLayoutInfo().getVisiblePagesInfo().isEmpty()) {
            return -1;
        }
        return getTotalItemsCount() - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastVisibleLineIndex() {
        if (getLayoutInfo().getVisiblePagesInfo().isEmpty()) {
            return -1;
        }
        long index = ((long) ((MeasuredPage) qn1.b0(getLayoutInfo().getVisiblePagesInfo())).getIndex()) + ((long) getLayoutInfo().getBeyondViewportPageCount());
        long totalItemsCount = ((long) getTotalItemsCount()) - 1;
        if (index > totalItemsCount) {
            index = totalItemsCount;
        }
        return (int) index;
    }

    public final PagerMeasureResult getLayoutInfo() {
        PagerMeasureResult pagerMeasureResult = this.layoutInfo;
        if (pagerMeasureResult != null) {
            return pagerMeasureResult;
        }
        aa4.j("layoutInfo");
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceEnd() {
        if (getLayoutInfo().getVisiblePagesInfo().isEmpty()) {
            return 0;
        }
        return Math.abs((getLayoutInfo().getPageSpacing() + (getLayoutInfo().getPageSize() + ((MeasuredPage) qn1.b0(getLayoutInfo().getVisiblePagesInfo())).getOffset())) - getLayoutInfo().getViewportEndOffset());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceStart() {
        if (getLayoutInfo().getVisiblePagesInfo().isEmpty()) {
            return 0;
        }
        int beforeContentPadding = getLayoutInfo().getBeforeContentPadding() + ((MeasuredPage) qn1.T(getLayoutInfo().getVisiblePagesInfo())).getOffset();
        return Math.abs(beforeContentPadding <= 0 ? beforeContentPadding : 0);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisViewportSize() {
        return PagerLayoutInfoKt.getMainAxisViewportSize(getLayoutInfo());
    }

    public final LazyLayoutPrefetchState getState() {
        LazyLayoutPrefetchState lazyLayoutPrefetchState = this.state;
        if (lazyLayoutPrefetchState != null) {
            return lazyLayoutPrefetchState;
        }
        aa4.j(RemoteConfigConstants.ResponseFieldKey.STATE);
        throw null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getTotalItemsCount() {
        return this.itemCount.invoke().intValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleItemLine(int i) {
        int size = getLayoutInfo().getExtraPagesBefore().size();
        int size2 = getLayoutInfo().getVisiblePagesInfo().size();
        if (i < size) {
            return getLayoutInfo().getExtraPagesBefore().get(i).getIndex();
        }
        if (i >= size && i < size + size2) {
            return getLayoutInfo().getVisiblePagesInfo().get(i - size).getIndex();
        }
        if (i >= size + size2) {
            return getLayoutInfo().getExtraPagesAfter().get((i - size) - size2).getIndex();
        }
        return -1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleItemSize(int i) {
        return getLayoutInfo().getPageSize();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleLineCount() {
        return getLayoutInfo().getExtraPagesAfter().size() + getLayoutInfo().getVisiblePagesInfo().size() + getLayoutInfo().getExtraPagesBefore().size();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Object getVisibleLineKey(int i) {
        int size = getLayoutInfo().getExtraPagesBefore().size();
        int size2 = getLayoutInfo().getVisiblePagesInfo().size();
        if (i < size) {
            return getLayoutInfo().getExtraPagesBefore().get(i).getKey();
        }
        if (i < size || i >= size + size2) {
            return i >= size + size2 ? getLayoutInfo().getExtraPagesAfter().get((i - size) - size2).getKey() : CachedItem.NoKey;
        }
        return getLayoutInfo().getVisiblePagesInfo().get(i - size).getKey();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public List<LazyLayoutPrefetchState.PrefetchHandle> schedulePrefetch(int i, final bm3<? super Integer, ? super Integer, j59> bm3Var) {
        return u96.h(getState().m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, getLayoutInfo().m2304getChildConstraintsmsEJaDk(), true, new nl3() { // from class: androidx.compose.foundation.pager.d
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return PagerCacheWindowScope.schedulePrefetch$lambda$0(bm3Var, this, (LazyLayoutPrefetchState.PrefetchResultScope) obj);
            }
        }));
    }

    public final void setLayoutInfo(PagerMeasureResult pagerMeasureResult) {
        this.layoutInfo = pagerMeasureResult;
    }

    public final void setState(LazyLayoutPrefetchState lazyLayoutPrefetchState) {
        this.state = lazyLayoutPrefetchState;
    }
}
