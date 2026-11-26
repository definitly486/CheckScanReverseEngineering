package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.snapping.LazyGridSnapLayoutInfoProviderKt;
import androidx.compose.foundation.lazy.layout.CacheWindowScope;
import androidx.compose.foundation.lazy.layout.CachedItem;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.Density;
import defpackage.aa4;
import defpackage.b36;
import defpackage.bm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.pp1;
import defpackage.qn1;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
final class LazyGridCacheWindowScope implements CacheWindowScope {
    public LazyGridLayoutInfo layoutInfo;
    public LazyGridPrefetchScope prefetchScope;

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 schedulePrefetch$lambda$0(bm3 bm3Var, int i, LazyGridPrefetchResultScope lazyGridPrefetchResultScope) {
        int lineItemCount = lazyGridPrefetchResultScope.getLineItemCount();
        int iB = Integer.MIN_VALUE;
        for (int i2 = 0; i2 < lineItemCount; i2++) {
            iB = pp1.b(lazyGridPrefetchResultScope.getMainAxisSize(i2), new int[0]);
        }
        if (iB != Integer.MIN_VALUE) {
            bm3Var.invoke(Integer.valueOf(i), Integer.valueOf(iB));
        }
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Density getDensity() {
        LazyGridLayoutInfo layoutInfo = getLayoutInfo();
        LazyGridMeasureResult lazyGridMeasureResult = layoutInfo instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) layoutInfo : null;
        if (lazyGridMeasureResult != null) {
            return lazyGridMeasureResult.getDensity();
        }
        return null;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getFirstVisibleLineIndex() {
        return getLineIndex((LazyGridItemInfo) qn1.T(getLayoutInfo().getVisibleItemsInfo()));
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public boolean getHasVisibleItems() {
        return !getLayoutInfo().getVisibleItemsInfo().isEmpty();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastIndexInLine(int i) {
        LazyGridLayoutInfo layoutInfo = getLayoutInfo();
        LazyGridMeasureResult lazyGridMeasureResult = layoutInfo instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) layoutInfo : null;
        if (lazyGridMeasureResult == null) {
            return -1;
        }
        List<b36<Integer, Constraints>> listInvoke = lazyGridMeasureResult.getPrefetchInfoRetriever().invoke(Integer.valueOf(i));
        if (listInvoke.isEmpty()) {
            return -1;
        }
        return (listInvoke.size() + ((Number) ((b36) qn1.T(listInvoke)).b).intValue()) - 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastLineIndex() {
        LazyGridLayoutInfo layoutInfo = getLayoutInfo();
        LazyGridMeasureResult lazyGridMeasureResult = layoutInfo instanceof LazyGridMeasureResult ? (LazyGridMeasureResult) layoutInfo : null;
        if (lazyGridMeasureResult == null || getTotalItemsCount() == 0) {
            return -1;
        }
        return lazyGridMeasureResult.getLineIndexProvider().invoke(Integer.valueOf(getTotalItemsCount() - 1)).intValue();
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getLastVisibleLineIndex() {
        return getLineIndex((LazyGridItemInfo) qn1.b0(getLayoutInfo().getVisibleItemsInfo()));
    }

    public final LazyGridLayoutInfo getLayoutInfo() {
        LazyGridLayoutInfo lazyGridLayoutInfo = this.layoutInfo;
        if (lazyGridLayoutInfo != null) {
            return lazyGridLayoutInfo;
        }
        aa4.j("layoutInfo");
        throw null;
    }

    public final int getLineIndex(LazyGridItemInfo lazyGridItemInfo) {
        return LazyGridItemInfoKt.lineIndex(lazyGridItemInfo, getLayoutInfo().getOrientation());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceEnd() {
        LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) qn1.b0(getLayoutInfo().getVisibleItemsInfo());
        return Math.abs((getLayoutInfo().getMainAxisItemSpacing() + (LazyGridSnapLayoutInfoProviderKt.sizeOnMainAxis(lazyGridItemInfo, getLayoutInfo().getOrientation()) + LazyGridSnapLayoutInfoProviderKt.offsetOnMainAxis(lazyGridItemInfo, getLayoutInfo().getOrientation()))) - getLayoutInfo().getViewportEndOffset());
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisExtraSpaceStart() {
        int beforeContentPadding = getLayoutInfo().getBeforeContentPadding() + LazyGridSnapLayoutInfoProviderKt.offsetOnMainAxis((LazyGridItemInfo) qn1.T(getLayoutInfo().getVisibleItemsInfo()), getLayoutInfo().getOrientation());
        if (beforeContentPadding > 0) {
            beforeContentPadding = 0;
        }
        return Math.abs(beforeContentPadding);
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getMainAxisViewportSize() {
        return LazyGridLayoutInfoKt.getSingleAxisViewportSize(getLayoutInfo());
    }

    public final LazyGridPrefetchScope getPrefetchScope() {
        LazyGridPrefetchScope lazyGridPrefetchScope = this.prefetchScope;
        if (lazyGridPrefetchScope != null) {
            return lazyGridPrefetchScope;
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
        return getFirstVisibleLineIndex() + i;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleItemSize(int i) {
        int firstVisibleLineIndex = i + getFirstVisibleLineIndex();
        List<LazyGridItemInfo> visibleItemsInfo = getLayoutInfo().getVisibleItemsInfo();
        ArrayList arrayList = new ArrayList(visibleItemsInfo.size());
        int size = visibleItemsInfo.size();
        for (int i2 = 0; i2 < size; i2++) {
            LazyGridItemInfo lazyGridItemInfo = visibleItemsInfo.get(i2);
            if (getLineIndex(lazyGridItemInfo) == firstVisibleLineIndex) {
                arrayList.add(lazyGridItemInfo);
            }
        }
        int size2 = arrayList.size();
        int iMax = 0;
        for (int i3 = 0; i3 < size2; i3++) {
            iMax = Math.max(LazyGridSnapLayoutInfoProviderKt.sizeOnMainAxis((LazyGridItemInfo) arrayList.get(i3), getLayoutInfo().getOrientation()), iMax);
        }
        return iMax;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public int getVisibleLineCount() {
        return (getLastVisibleLineIndex() - getFirstVisibleLineIndex()) + 1;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public Object getVisibleLineKey(int i) {
        Object key;
        int firstVisibleLineIndex = i + getFirstVisibleLineIndex();
        List<LazyGridItemInfo> visibleItemsInfo = getLayoutInfo().getVisibleItemsInfo();
        ArrayList arrayList = new ArrayList(visibleItemsInfo.size());
        int size = visibleItemsInfo.size();
        for (int i2 = 0; i2 < size; i2++) {
            LazyGridItemInfo lazyGridItemInfo = visibleItemsInfo.get(i2);
            if (getLineIndex(lazyGridItemInfo) == firstVisibleLineIndex) {
                arrayList.add(lazyGridItemInfo);
            }
        }
        LazyGridItemInfo lazyGridItemInfo2 = (LazyGridItemInfo) qn1.V(arrayList);
        return (lazyGridItemInfo2 == null || (key = lazyGridItemInfo2.getKey()) == null) ? CachedItem.NoKey : key;
    }

    @Override // androidx.compose.foundation.lazy.layout.CacheWindowScope
    public List<LazyLayoutPrefetchState.PrefetchHandle> schedulePrefetch(final int i, final bm3<? super Integer, ? super Integer, j59> bm3Var) {
        return getPrefetchScope().scheduleLinePrefetch(i, new nl3() { // from class: androidx.compose.foundation.lazy.grid.a
            @Override // defpackage.nl3
            public final Object invoke(Object obj) {
                return LazyGridCacheWindowScope.schedulePrefetch$lambda$0(bm3Var, i, (LazyGridPrefetchResultScope) obj);
            }
        });
    }

    public final void setLayoutInfo(LazyGridLayoutInfo lazyGridLayoutInfo) {
        this.layoutInfo = lazyGridLayoutInfo;
    }

    public final void setPrefetchScope(LazyGridPrefetchScope lazyGridPrefetchScope) {
        this.prefetchScope = lazyGridPrefetchScope;
    }
}
