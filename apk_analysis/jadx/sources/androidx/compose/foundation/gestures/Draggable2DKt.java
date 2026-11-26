package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import defpackage.j59;
import defpackage.nl3;
import defpackage.vr2;
import defpackage.wr2;
import defpackage.xr2;

/* JADX INFO: loaded from: classes.dex */
public final class Draggable2DKt {
    private static final nl3<Offset, j59> NoOpOnDragStart;
    private static final nl3<Velocity, j59> NoOpOnDragStop;

    static {
        int i = 0;
        NoOpOnDragStart = new wr2(i);
        NoOpOnDragStop = new xr2(i);
    }

    public static final Draggable2DState Draggable2DState(nl3<? super Offset, j59> nl3Var) {
        return new DefaultDraggable2DState(nl3Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NoOpOnDragStart$lambda$0(Offset offset) {
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 NoOpOnDragStop$lambda$0(Velocity velocity) {
        return j59.a;
    }

    public static final Modifier draggable2D(Modifier modifier, Draggable2DState draggable2DState, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, nl3<? super Offset, j59> nl3Var, nl3<? super Velocity, j59> nl3Var2, boolean z3) {
        return modifier.then(new Draggable2DElement(draggable2DState, z, mutableInteractionSource, z2, nl3Var, nl3Var2, z3));
    }

    public static final Draggable2DState rememberDraggable2DState(nl3<? super Offset, j59> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-1150277615, i, -1, "androidx.compose.foundation.gestures.rememberDraggable2DState (Draggable2D.kt:106)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = Draggable2DState(new vr2(stateRememberUpdatedState, 0));
            composer.updateRememberedValue(objRememberedValue);
        }
        Draggable2DState draggable2DState = (Draggable2DState) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return draggable2DState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberDraggable2DState$lambda$0$0(State state, Offset offset) {
        ((nl3) state.getValue()).invoke(offset);
        return j59.a;
    }
}
