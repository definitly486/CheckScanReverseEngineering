package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope;
import defpackage.kx6;
import defpackage.qn1;
import defpackage.w65;

/* JADX INFO: loaded from: classes.dex */
public final class PagerScrollScopeKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.pager.PagerScrollScopeKt$LazyLayoutScrollScope$1, reason: invalid class name */
    public static final class AnonymousClass1 implements LazyLayoutScrollScope, ScrollScope {
        private final /* synthetic */ ScrollScope $$delegate_0;
        final /* synthetic */ PagerState $state;

        public AnonymousClass1(ScrollScope scrollScope, PagerState pagerState) {
            this.$state = pagerState;
            this.$$delegate_0 = scrollScope;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int calculateDistanceTo(int i, int i2) {
            return (int) (kx6.h(PagerScrollPositionKt.currentAbsoluteScrollOffset(this.$state) + ((long) w65.b(((this.$state.getPageSizeWithSpacing$foundation() * (i - this.$state.getCurrentPage())) - (this.$state.getCurrentPageOffsetFraction() * this.$state.getPageSizeWithSpacing$foundation())) + i2)), this.$state.getMinScrollOffset$foundation(), this.$state.getMaxScrollOffset$foundation()) - PagerScrollPositionKt.currentAbsoluteScrollOffset(this.$state));
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getFirstVisibleItemIndex() {
            return this.$state.getFirstVisiblePage$foundation();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getFirstVisibleItemScrollOffset() {
            return this.$state.getFirstVisiblePageOffset$foundation();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getItemCount() {
            return this.$state.getPageCount();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public int getLastVisibleItemIndex() {
            return ((PageInfo) qn1.b0(this.$state.getLayoutInfo().getVisiblePagesInfo())).getIndex();
        }

        @Override // androidx.compose.foundation.gestures.ScrollScope
        public float scrollBy(float f) {
            return this.$$delegate_0.scrollBy(f);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutScrollScope
        public void snapToItem(int i, int i2) {
            float pageSizeWithSpacing$foundation = this.$state.getPageSizeWithSpacing$foundation();
            this.$state.snapToItem$foundation(i, pageSizeWithSpacing$foundation != 0.0f ? i2 / pageSizeWithSpacing$foundation : 0.0f, true);
        }
    }

    public static final LazyLayoutScrollScope LazyLayoutScrollScope(PagerState pagerState, ScrollScope scrollScope) {
        return new AnonymousClass1(scrollScope, pagerState);
    }
}
