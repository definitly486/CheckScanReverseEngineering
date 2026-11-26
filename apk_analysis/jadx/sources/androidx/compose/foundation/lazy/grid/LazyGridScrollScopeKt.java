package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import androidx.compose.ui.unit.IntOffset;
import defpackage.qn1;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridScrollScopeKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.grid.LazyGridScrollScopeKt$LazyLayoutScrollScope$1, reason: invalid class name */
    public static final class AnonymousClass1 implements LazyLayoutScrollScope, ScrollScope {
        private final /* synthetic */ ScrollScope $$delegate_0;
        final /* synthetic */ LazyGridState $state;

        public AnonymousClass1(ScrollScope scrollScope, LazyGridState lazyGridState) {
            this.$state = lazyGridState;
            this.$$delegate_0 = scrollScope;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int calculateDistanceTo(int i, int i2) {
            Integer numValueOf;
            LazyGridItemInfo lazyGridItemInfo;
            LazyGridLayoutInfo layoutInfo = this.$state.getLayoutInfo();
            int firstVisibleItemIndex = 0;
            if (layoutInfo.getVisibleItemsInfo().isEmpty()) {
                return 0;
            }
            int firstVisibleItemIndex2 = getFirstVisibleItemIndex();
            if (i > getLastVisibleItemIndex() || firstVisibleItemIndex2 > i) {
                int slotsPerLine$foundation = this.$state.getSlotsPerLine$foundation();
                firstVisibleItemIndex = (((((slotsPerLine$foundation - 1) * ((i < getFirstVisibleItemIndex() ? 1 : 0) != 0 ? -1 : 1)) + (i - getFirstVisibleItemIndex())) / slotsPerLine$foundation) * LazyGridLayoutInfoKt.visibleLinesAverageMainAxisSize(layoutInfo)) - getFirstVisibleItemScrollOffset();
            } else {
                List<LazyGridItemInfo> visibleItemsInfo = layoutInfo.getVisibleItemsInfo();
                int size = visibleItemsInfo.size();
                int i3 = 0;
                while (true) {
                    numValueOf = null;
                    if (i3 >= size) {
                        lazyGridItemInfo = null;
                        break;
                    }
                    lazyGridItemInfo = visibleItemsInfo.get(i3);
                    if (lazyGridItemInfo.getIndex() == i) {
                        break;
                    }
                    i3++;
                }
                LazyGridItemInfo lazyGridItemInfo2 = lazyGridItemInfo;
                if (layoutInfo.getOrientation() == Orientation.Vertical) {
                    if (lazyGridItemInfo2 != null) {
                        numValueOf = Integer.valueOf(IntOffset.m9171getYimpl(lazyGridItemInfo2.mo2184getOffsetnOccac()));
                    }
                } else if (lazyGridItemInfo2 != null) {
                    numValueOf = Integer.valueOf(IntOffset.m9170getXimpl(lazyGridItemInfo2.mo2184getOffsetnOccac()));
                }
                if (numValueOf != null) {
                    firstVisibleItemIndex = numValueOf.intValue();
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
            LazyGridItemInfo lazyGridItemInfo = (LazyGridItemInfo) qn1.c0(this.$state.getLayoutInfo().getVisibleItemsInfo());
            if (lazyGridItemInfo != null) {
                return lazyGridItemInfo.getIndex();
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

    public static final LazyLayoutScrollScope LazyLayoutScrollScope(LazyGridState lazyGridState, ScrollScope scrollScope) {
        return new AnonymousClass1(scrollScope, lazyGridState);
    }
}
