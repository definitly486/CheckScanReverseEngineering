package androidx.compose.foundation.gestures;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.ScrollIndicatorState;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.n1;

/* JADX INFO: loaded from: classes.dex */
public interface ScrollableState {

    public static final class DefaultImpls {
        @Deprecated
        public static boolean getCanScrollBackward(ScrollableState scrollableState) {
            return ScrollableState.super.getCanScrollBackward();
        }

        @Deprecated
        public static boolean getCanScrollForward(ScrollableState scrollableState) {
            return ScrollableState.super.getCanScrollForward();
        }

        @Deprecated
        public static boolean getLastScrolledBackward(ScrollableState scrollableState) {
            return ScrollableState.super.getLastScrolledBackward();
        }

        @Deprecated
        public static boolean getLastScrolledForward(ScrollableState scrollableState) {
            return ScrollableState.super.getLastScrolledForward();
        }

        @Deprecated
        public static ScrollIndicatorState getScrollIndicatorState(ScrollableState scrollableState) {
            return ScrollableState.super.getScrollIndicatorState();
        }
    }

    static /* synthetic */ Object scroll$default(ScrollableState scrollableState, MutatePriority mutatePriority, bm3 bm3Var, e02 e02Var, int i, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: scroll");
            return null;
        }
        if ((i & 1) != 0) {
            mutatePriority = MutatePriority.Default;
        }
        return scrollableState.scroll(mutatePriority, bm3Var, e02Var);
    }

    float dispatchRawDelta(float f);

    default boolean getCanScrollBackward() {
        return true;
    }

    default boolean getCanScrollForward() {
        return true;
    }

    default boolean getLastScrolledBackward() {
        return false;
    }

    default boolean getLastScrolledForward() {
        return false;
    }

    default ScrollIndicatorState getScrollIndicatorState() {
        return null;
    }

    boolean isScrollInProgress();

    Object scroll(MutatePriority mutatePriority, bm3<? super ScrollScope, ? super e02<? super j59>, ? extends Object> bm3Var, e02<? super j59> e02Var);
}
