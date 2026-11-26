package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.ui.unit.IntOffset;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridScrollScopeKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScrollScopeKt$LazyLayoutScrollScope$1, reason: invalid class name */
    public static final class AnonymousClass1 implements LazyLayoutScrollScope, ScrollScope {
        private final /* synthetic */ ScrollScope $$delegate_0;
        final /* synthetic */ LazyStaggeredGridState $state;

        public AnonymousClass1(ScrollScope scrollScope, LazyStaggeredGridState lazyStaggeredGridState) {
            this.$state = lazyStaggeredGridState;
            this.$$delegate_0 = scrollScope;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int calculateDistanceTo(int i, int i2) {
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo;
            int iM9171getYimpl;
            LazyStaggeredGridLayoutInfo layoutInfo = this.$state.getLayoutInfo();
            int i3 = 0;
            if (layoutInfo.getVisibleItemsInfo().isEmpty()) {
                return 0;
            }
            List<LazyStaggeredGridItemInfo> visibleItemsInfo = layoutInfo.getVisibleItemsInfo();
            int size = visibleItemsInfo.size();
            while (true) {
                if (i3 >= size) {
                    lazyStaggeredGridItemInfo = null;
                    break;
                }
                lazyStaggeredGridItemInfo = visibleItemsInfo.get(i3);
                if (lazyStaggeredGridItemInfo.getIndex() == i) {
                    break;
                }
                i3++;
            }
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo2 = lazyStaggeredGridItemInfo;
            if (lazyStaggeredGridItemInfo2 == null) {
                int iVisibleItemsAverageSize = LazyStaggeredGridMeasureResultKt.visibleItemsAverageSize(layoutInfo);
                int laneCount$foundation = this.$state.getLaneCount$foundation();
                iM9171getYimpl = (((i / laneCount$foundation) - (getFirstVisibleItemIndex() / laneCount$foundation)) * iVisibleItemsAverageSize) - getFirstVisibleItemScrollOffset();
            } else {
                iM9171getYimpl = layoutInfo.getOrientation() == Orientation.Vertical ? IntOffset.m9171getYimpl(lazyStaggeredGridItemInfo2.mo2257getOffsetnOccac()) : IntOffset.m9170getXimpl(lazyStaggeredGridItemInfo2.mo2257getOffsetnOccac());
            }
            return iM9171getYimpl + i2;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getFirstVisibleItemIndex() {
            return this.$state.getFirstVisibleItemIndex();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getFirstVisibleItemScrollOffset() {
            return this.$state.getFirstVisibleItemScrollOffset();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getItemCount() {
            return this.$state.getLayoutInfo().getTotalItemsCount();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getLastVisibleItemIndex() {
            LazyStaggeredGridItemInfo lazyStaggeredGridItemInfo = (LazyStaggeredGridItemInfo) qn1.c0(this.$state.getLayoutInfo().getVisibleItemsInfo());
            if (lazyStaggeredGridItemInfo != null) {
                return lazyStaggeredGridItemInfo.getIndex();
            }
            return 0;
        }

        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f) {
            return this.$$delegate_0.scrollBy(f);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public void snapToItem(int i, int i2) {
            this.$state.snapToItemInternal$foundation(i, i2, true);
        }
    }

    public static final LazyLayoutScrollScope LazyLayoutScrollScope(LazyStaggeredGridState lazyStaggeredGridState, ScrollScope scrollScope) {
        return new AnonymousClass1(scrollScope, lazyStaggeredGridState);
    }
}
