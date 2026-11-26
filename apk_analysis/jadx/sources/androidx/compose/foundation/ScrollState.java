package androidx.compose.foundation;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.gestures.ScrollExtensionsKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.gestures.ScrollableStateKt;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotIntStateKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.saveable.Saver;
import androidx.compose.runtime.saveable.SaverKt;
import androidx.compose.runtime.saveable.SaverScope;
import androidx.compose.runtime.snapshots.Snapshot;
import defpackage.a32;
import defpackage.bm3;
import defpackage.e02;
import defpackage.iz0;
import defpackage.j59;
import defpackage.jh2;
import defpackage.kx6;
import defpackage.nl3;
import defpackage.p14;
import defpackage.vy1;
import defpackage.xi7;
import defpackage.yc2;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollState implements ScrollableState {
    public static final int $stable = 0;
    public static final Companion Companion = new Companion(null);
    private static final Saver<ScrollState, ?> Saver = SaverKt.Saver(new xi7(), new yc2(5));
    private float accumulator;
    private final State canScrollBackward$delegate;
    private final State canScrollForward$delegate;
    private final MutableIntState value$delegate;
    private final MutableIntState viewportSize$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
    private final MutableIntState contentSize$delegate = SnapshotIntStateKt.mutableIntStateOf(0);
    private final MutableInteractionSource internalInteractionSource = InteractionSourceKt.MutableInteractionSource();
    private MutableIntState _maxValueState = SnapshotIntStateKt.mutableIntStateOf(Integer.MAX_VALUE);
    private final ScrollableState scrollableState = ScrollableStateKt.ScrollableState(new vy1(this, 3));
    private final ScrollState$_scrollIndicatorState$1 _scrollIndicatorState = new ScrollIndicatorState() { // from class: androidx.compose.foundation.ScrollState$_scrollIndicatorState$1
        @Override // androidx.compose.foundation.ScrollIndicatorState
        public int getContentSize() {
            return this.this$0.getContentSize$foundation();
        }

        @Override // androidx.compose.foundation.ScrollIndicatorState
        public int getScrollOffset() {
            return this.this$0.getValue();
        }

        @Override // androidx.compose.foundation.ScrollIndicatorState
        public int getViewportSize() {
            return this.this$0.getViewportSize();
        }
    };

    /* JADX WARN: Type inference failed for: r2v9, types: [androidx.compose.foundation.ScrollState$_scrollIndicatorState$1] */
    public ScrollState(int i) {
        this.value$delegate = SnapshotIntStateKt.mutableIntStateOf(i);
        int i2 = 2;
        this.canScrollForward$delegate = SnapshotStateKt.derivedStateOf(new iz0(this, i2));
        this.canScrollBackward$delegate = SnapshotStateKt.derivedStateOf(new p14(this, i2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Integer Saver$lambda$0(SaverScope saverScope, ScrollState scrollState) {
        return Integer.valueOf(scrollState.getValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final ScrollState Saver$lambda$1(int i) {
        return new ScrollState(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ Object animateScrollTo$default(ScrollState scrollState, int i, AnimationSpec animationSpec, e02 e02Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            animationSpec = new SpringSpec(0.0f, 0.0f, null, 7, null);
        }
        return scrollState.animateScrollTo(i, animationSpec, e02Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean canScrollBackward_delegate$lambda$0(ScrollState scrollState) {
        return scrollState.getValue() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean canScrollForward_delegate$lambda$0(ScrollState scrollState) {
        return scrollState.getValue() < scrollState.getMaxValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float scrollableState$lambda$0(ScrollState scrollState, float f) {
        float value = scrollState.getValue() + f + scrollState.accumulator;
        float fD = kx6.d(value, 0.0f, scrollState.getMaxValue());
        boolean z = value == fD;
        float value2 = fD - scrollState.getValue();
        int iRound = Math.round(value2);
        scrollState.setValue(scrollState.getValue() + iRound);
        scrollState.accumulator = value2 - iRound;
        return !z ? value2 : f;
    }

    private final void setValue(int i) {
        this.value$delegate.setIntValue(i);
    }

    public final Object animateScrollTo(int i, AnimationSpec<Float> animationSpec, e02<? super j59> e02Var) {
        Object objAnimateScrollBy = ScrollExtensionsKt.animateScrollBy(this, i - getValue(), animationSpec, e02Var);
        return objAnimateScrollBy == a32.COROUTINE_SUSPENDED ? objAnimateScrollBy : j59.a;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f) {
        return this.scrollableState.dispatchRawDelta(f);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
    }

    public final int getContentSize$foundation() {
        return this.contentSize$delegate.getIntValue();
    }

    public final InteractionSource getInteractionSource() {
        return this.internalInteractionSource;
    }

    public final MutableInteractionSource getInternalInteractionSource$foundation() {
        return this.internalInteractionSource;
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledBackward() {
        return this.scrollableState.getLastScrolledBackward();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledForward() {
        return this.scrollableState.getLastScrolledForward();
    }

    public final int getMaxValue() {
        return this._maxValueState.getIntValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public ScrollIndicatorState getScrollIndicatorState() {
        return this._scrollIndicatorState;
    }

    public final int getValue() {
        return this.value$delegate.getIntValue();
    }

    public final int getViewportSize() {
        return this.viewportSize$delegate.getIntValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.scrollableState.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, bm3<? super ScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        Object objScroll = this.scrollableState.scroll(mutatePriority, bm3Var, e02Var);
        return objScroll == a32.COROUTINE_SUSPENDED ? objScroll : j59.a;
    }

    public final Object scrollTo(int i, e02<? super Float> e02Var) {
        return ScrollExtensionsKt.scrollBy(this, i - getValue(), e02Var);
    }

    public final void setContentSize$foundation(int i) {
        this.contentSize$delegate.setIntValue(i);
    }

    public final void setMaxValue$foundation(int i) {
        this._maxValueState.setIntValue(i);
        Snapshot.Companion companion = Snapshot.Companion;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            if (getValue() > i) {
                setValue(i);
            }
            j59 j59Var = j59.a;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    public final void setViewportSize$foundation(int i) {
        this.viewportSize$delegate.setIntValue(i);
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final Saver<ScrollState, ?> getSaver() {
            return ScrollState.Saver;
        }

        private Companion() {
        }
    }
}
