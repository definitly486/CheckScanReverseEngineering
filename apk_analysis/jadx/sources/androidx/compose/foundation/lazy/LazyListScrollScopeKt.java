package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListScrollScopeKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyListScrollScopeKt$LazyLayoutScrollScope$1, reason: invalid class name */
    public static final class AnonymousClass1 implements LazyLayoutScrollScope, ScrollScope {
        private final /* synthetic */ ScrollScope $$delegate_0;
        final /* synthetic */ LazyListState $state;

        public AnonymousClass1(ScrollScope scrollScope, LazyListState lazyListState) {
            this.$state = lazyListState;
            this.$$delegate_0 = scrollScope;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int calculateDistanceTo(int i, int i2) {
            LazyListItemInfo lazyListItemInfo;
            LazyListLayoutInfo layoutInfo = this.$state.getLayoutInfo();
            int firstVisibleItemIndex = 0;
            if (layoutInfo.getVisibleItemsInfo().isEmpty()) {
                return 0;
            }
            int firstVisibleItemIndex2 = getFirstVisibleItemIndex();
            if (i > getLastVisibleItemIndex() || firstVisibleItemIndex2 > i) {
                firstVisibleItemIndex = ((i - getFirstVisibleItemIndex()) * LazyListLayoutInfoKt.visibleItemsAverageSize(layoutInfo)) - getFirstVisibleItemScrollOffset();
            } else {
                List<LazyListItemInfo> visibleItemsInfo = layoutInfo.getVisibleItemsInfo();
                int size = visibleItemsInfo.size();
                int i3 = 0;
                while (true) {
                    if (i3 >= size) {
                        lazyListItemInfo = null;
                        break;
                    }
                    lazyListItemInfo = visibleItemsInfo.get(i3);
                    if (lazyListItemInfo.getIndex() == i) {
                        break;
                    }
                    i3++;
                }
                LazyListItemInfo lazyListItemInfo2 = lazyListItemInfo;
                if (lazyListItemInfo2 != null) {
                    firstVisibleItemIndex = lazyListItemInfo2.getOffset();
                }
            }
            return firstVisibleItemIndex + i2;
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
            LazyListItemInfo lazyListItemInfo = (LazyListItemInfo) qn1.c0(this.$state.getLayoutInfo().getVisibleItemsInfo());
            if (lazyListItemInfo != null) {
                return lazyListItemInfo.getIndex();
            }
            return 0;
        }

        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f) {
            return this.$$delegate_0.scrollBy(f);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public void snapToItem(int i, int i2) {
            this.$state.snapToItemIndexInternal$foundation(i, i2, true);
        }
    }

    public static final LazyLayoutScrollScope LazyLayoutScrollScope(LazyListState lazyListState, ScrollScope scrollScope) {
        return new AnonymousClass1(scrollScope, lazyListState);
    }
}
