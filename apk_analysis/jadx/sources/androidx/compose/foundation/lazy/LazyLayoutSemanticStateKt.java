package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState;
import androidx.compose.foundation.lazy.layout.LazyLayoutSemanticsKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.semantics.CollectionInfo;
import androidx.media3.muxer.MuxerUtil;
import defpackage.a32;
import defpackage.e02;
import defpackage.ef;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutSemanticStateKt {

    /* JADX INFO: renamed from: androidx.compose.foundation.lazy.LazyLayoutSemanticStateKt$LazyLayoutSemanticState$1, reason: invalid class name */
    public static final class AnonymousClass1 implements LazyLayoutSemanticState {
        final /* synthetic */ boolean $isVertical;
        final /* synthetic */ LazyListState $state;
        private final State totalItemsCount$delegate;

        public AnonymousClass1(LazyListState lazyListState, boolean z) {
            this.$state = lazyListState;
            this.$isVertical = z;
            this.totalItemsCount$delegate = SnapshotStateKt.derivedStateOf(new ef(lazyListState, 2));
        }

        private final int getTotalItemsCount() {
            return ((Number) this.totalItemsCount$delegate.getValue()).intValue();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final int totalItemsCount_delegate$lambda$0(LazyListState lazyListState) {
            return lazyListState.getLayoutInfo().getTotalItemsCount();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public CollectionInfo collectionInfo() {
            return this.$isVertical ? new CollectionInfo(getTotalItemsCount(), 1) : new CollectionInfo(1, getTotalItemsCount());
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public int getContentPadding() {
            return this.$state.getLayoutInfo().getAfterContentPadding() + this.$state.getLayoutInfo().getBeforeContentPadding();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public float getMaxScrollOffset() {
            return LazyLayoutSemanticsKt.estimatedLazyMaxScrollOffset(this.$state.getFirstVisibleItemIndex(), this.$state.getFirstVisibleItemScrollOffset(), this.$state.getCanScrollForward());
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public float getScrollOffset() {
            return LazyLayoutSemanticsKt.estimatedLazyScrollOffset(this.$state.getFirstVisibleItemIndex(), this.$state.getFirstVisibleItemScrollOffset());
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public int getViewport() {
            Orientation orientation = this.$state.getLayoutInfo().getOrientation();
            Orientation orientation2 = Orientation.Vertical;
            LazyListState lazyListState = this.$state;
            return (int) (orientation == orientation2 ? lazyListState.getLayoutInfo().mo2157getViewportSizeYbymL2g() & MuxerUtil.UNSIGNED_INT_MAX_VALUE : lazyListState.getLayoutInfo().mo2157getViewportSizeYbymL2g() >> 32);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutSemanticState
        public Object scrollToItem(int i, e02<? super j59> e02Var) {
            Object objScrollToItem$default = LazyListState.scrollToItem$default(this.$state, i, 0, e02Var, 2, null);
            return objScrollToItem$default == a32.COROUTINE_SUSPENDED ? objScrollToItem$default : j59.a;
        }
    }

    public static final LazyLayoutSemanticState LazyLayoutSemanticState(LazyListState lazyListState, boolean z) {
        return new AnonymousClass1(lazyListState, z);
    }
}
