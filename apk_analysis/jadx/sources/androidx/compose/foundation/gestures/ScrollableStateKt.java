package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import defpackage.dt0;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class ScrollableStateKt {
    public static final ScrollableState ScrollableState(nl3<? super Float, Float> nl3Var) {
        return new DefaultScrollableState(nl3Var);
    }

    public static final ScrollableState rememberScrollableState(nl3<? super Float, Float> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-180460798, i, -1, "androidx.compose.foundation.gestures.rememberScrollableState (ScrollableState.kt:169)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = ScrollableState(new dt0(stateRememberUpdatedState, 1));
            composer.updateRememberedValue(objRememberedValue);
        }
        ScrollableState scrollableState = (ScrollableState) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return scrollableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final float rememberScrollableState$lambda$0$0(State state, float f) {
        return ((Number) ((nl3) state.getValue()).invoke(Float.valueOf(f))).floatValue();
    }
}
