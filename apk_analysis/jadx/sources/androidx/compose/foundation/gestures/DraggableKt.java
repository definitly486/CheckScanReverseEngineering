package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.unit.Velocity;
import androidx.compose.ui.unit.VelocityKt;
import androidx.media3.muxer.MuxerUtil;
import defpackage.dm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.nl3;
import defpackage.y22;

/* JADX INFO: loaded from: classes.dex */
public final class DraggableKt {
    private static final dm3<y22, Offset, e02<? super j59>, Object> NoOpOnDragStarted = new DraggableKt$NoOpOnDragStarted$1(null);
    private static final dm3<y22, Float, e02<? super j59>, Object> NoOpOnDragStopped = new DraggableKt$NoOpOnDragStopped$1(null);

    public static final DraggableState DraggableState(nl3<? super Float, j59> nl3Var) {
        return new DefaultDraggableState(nl3Var);
    }

    public static final Modifier draggable(Modifier modifier, DraggableState draggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, dm3<? super y22, ? super Offset, ? super e02<? super j59>, ? extends Object> dm3Var, dm3<? super y22, ? super Float, ? super e02<? super j59>, ? extends Object> dm3Var2, boolean z3) {
        return modifier.then(new DraggableElement(draggableState, orientation, z, mutableInteractionSource, z2, dm3Var, dm3Var2, z3));
    }

    public static /* synthetic */ Modifier draggable$default(Modifier modifier, DraggableState draggableState, Orientation orientation, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, dm3 dm3Var, dm3 dm3Var2, boolean z3, int i, Object obj) {
        if ((i & 4) != 0) {
            z = true;
        }
        boolean z4 = z;
        if ((i & 8) != 0) {
            mutableInteractionSource = null;
        }
        return draggable(modifier, draggableState, orientation, z4, mutableInteractionSource, (i & 16) != 0 ? false : z2, (i & 32) != 0 ? NoOpOnDragStarted : dm3Var, (i & 64) != 0 ? NoOpOnDragStopped : dm3Var2, (i & 128) != 0 ? false : z3);
    }

    public static final DraggableState rememberDraggableState(nl3<? super Float, j59> nl3Var, Composer composer, int i) {
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventStart(-183245213, i, -1, "androidx.compose.foundation.gestures.rememberDraggableState (Draggable.kt:150)");
        }
        State stateRememberUpdatedState = SnapshotStateKt.rememberUpdatedState(nl3Var, composer, i & 14);
        Object objRememberedValue = composer.rememberedValue();
        if (objRememberedValue == Composer.Companion.getEmpty()) {
            objRememberedValue = DraggableState(new defpackage.u(stateRememberUpdatedState, 1));
            composer.updateRememberedValue(objRememberedValue);
        }
        DraggableState draggableState = (DraggableState) objRememberedValue;
        if (ComposerKt.isTraceInProgress()) {
            ComposerKt.traceEventEnd();
        }
        return draggableState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 rememberDraggableState$lambda$0$0(State state, float f) {
        ((nl3) state.getValue()).invoke(Float.valueOf(f));
        return j59.a;
    }

    /* JADX INFO: renamed from: toFloat-3MmeM6k, reason: not valid java name */
    public static final float m1518toFloat3MmeM6k(long j, Orientation orientation) {
        return Float.intBitsToFloat((int) (orientation == Orientation.Vertical ? j & MuxerUtil.UNSIGNED_INT_MAX_VALUE : j >> 32));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: toFloat-sF-c-tU, reason: not valid java name */
    public static final float m1519toFloatsFctU(long j, Orientation orientation) {
        return orientation == Orientation.Vertical ? Velocity.m9281getYimpl(j) : Velocity.m9280getXimpl(j);
    }

    /* JADX INFO: renamed from: toValidVelocity-TH1AsA0, reason: not valid java name */
    public static final long m1520toValidVelocityTH1AsA0(long j) {
        return VelocityKt.Velocity(Float.isNaN(Velocity.m9280getXimpl(j)) ? 0.0f : Velocity.m9280getXimpl(j), Float.isNaN(Velocity.m9281getYimpl(j)) ? 0.0f : Velocity.m9281getYimpl(j));
    }
}
