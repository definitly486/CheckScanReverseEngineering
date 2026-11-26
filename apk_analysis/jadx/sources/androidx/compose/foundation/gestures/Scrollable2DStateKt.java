package androidx.compose.foundation.gestures;

import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Offset;
import defpackage.nl3;
import defpackage.oh0;

/* JADX INFO: loaded from: classes.dex */
public final class Scrollable2DStateKt {
    public static final Scrollable2DState Scrollable2DState(nl3<? super Offset, Offset> nl3Var) {
        return new DefaultScrollable2DState(nl3Var);
    }

    public static final Scrollable2DState rememberScrollable2DState(nl3<? super Offset, Offset> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(1315827064, i, -1, "androidx.compose.foundation.gestures.rememberScrollable2DState (Scrollable2DState.kt:122)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = Scrollable2DState(new oh0(stateRememberUpdatedState, 3));
            composer.updateRememberedValue(objRememberedValue);
        }
        Scrollable2DState scrollable2DState = (Scrollable2DState) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return scrollable2DState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Offset rememberScrollable2DState$lambda$0$0(State state, Offset offset) {
        return (Offset) ((nl3) state.getValue()).invoke(offset);
    }
}
