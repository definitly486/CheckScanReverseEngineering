package androidx.compose.foundation.text;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ScrollIndicatorState;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.bm3;
import defpackage.e02;
import defpackage.eh0;
import defpackage.fz0;
import defpackage.j59;

/* JADX INFO: loaded from: classes.dex */
public final class TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1 implements ScrollableState {
    private final /* synthetic */ ScrollableState $$delegate_0;
    private final State canScrollBackward$delegate;
    private final State canScrollForward$delegate;

    public TextFieldScrollKt$textFieldScrollable$2$wrappedScrollableState$1$1(ScrollableState scrollableState, TextFieldScrollerPosition textFieldScrollerPosition) {
        this.$$delegate_0 = scrollableState;
        this.canScrollForward$delegate = SnapshotStateKt.derivedStateOf(new eh0(textFieldScrollerPosition, 5));
        this.canScrollBackward$delegate = SnapshotStateKt.derivedStateOf(new fz0(textFieldScrollerPosition, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean canScrollBackward_delegate$lambda$1(TextFieldScrollerPosition textFieldScrollerPosition) {
        return textFieldScrollerPosition.getOffset() > 0.0f;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final boolean canScrollForward_delegate$lambda$0(TextFieldScrollerPosition textFieldScrollerPosition) {
        return textFieldScrollerPosition.getOffset() < textFieldScrollerPosition.getMaximum();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public float dispatchRawDelta(float f) {
        return this.$$delegate_0.dispatchRawDelta(f);
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollBackward() {
        return ((Boolean) this.canScrollBackward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getCanScrollForward() {
        return ((Boolean) this.canScrollForward$delegate.getValue()).booleanValue();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledBackward() {
        return this.$$delegate_0.getLastScrolledBackward();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean getLastScrolledForward() {
        return this.$$delegate_0.getLastScrolledForward();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public ScrollIndicatorState getScrollIndicatorState() {
        return this.$$delegate_0.getScrollIndicatorState();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public boolean isScrollInProgress() {
        return this.$$delegate_0.isScrollInProgress();
    }

    @Override // androidx.compose.foundation.gestures.ScrollableState
    public Object scroll(MutatePriority mutatePriority, bm3<? super ScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var) {
        return this.$$delegate_0.scroll(mutatePriority, bm3Var, e02Var);
    }
}
