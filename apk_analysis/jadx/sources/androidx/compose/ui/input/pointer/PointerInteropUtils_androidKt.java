package androidx.compose.ui.input.pointer;

import android.os.SystemClock;
import android.view.MotionEvent;
import androidx.media3.muxer.MuxerUtil;
import defpackage.fg;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes2.dex */
public final class PointerInteropUtils_androidKt {
    public static final void emptyCancelMotionEventScope(long j, nl3<? super MotionEvent, j59> nl3Var) {
        MotionEvent motionEventObtain = MotionEvent.obtain(j, j, 3, 0.0f, 0.0f, 0);
        motionEventObtain.setSource(0);
        nl3Var.invoke(motionEventObtain);
        motionEventObtain.recycle();
    }

    public static /* synthetic */ void emptyCancelMotionEventScope$default(long j, nl3 nl3Var, int i, Object obj) {
        if ((i & 1) != 0) {
            j = SystemClock.uptimeMillis();
        }
        emptyCancelMotionEventScope(j, nl3Var);
    }

    /* JADX INFO: renamed from: toCancelMotionEventScope-d-4ec7I, reason: not valid java name */
    public static final void m7629toCancelMotionEventScoped4ec7I(PointerEvent pointerEvent, long j, nl3<? super MotionEvent, j59> nl3Var) {
        m7631toMotionEventScopeubNVwUQ(pointerEvent, j, nl3Var, true);
    }

    /* JADX INFO: renamed from: toMotionEventScope-d-4ec7I, reason: not valid java name */
    public static final void m7630toMotionEventScoped4ec7I(PointerEvent pointerEvent, long j, nl3<? super MotionEvent, j59> nl3Var) {
        m7631toMotionEventScopeubNVwUQ(pointerEvent, j, nl3Var, false);
    }

    /* JADX INFO: renamed from: toMotionEventScope-ubNVwUQ, reason: not valid java name */
    private static final void m7631toMotionEventScopeubNVwUQ(PointerEvent pointerEvent, long j, nl3<? super MotionEvent, j59> nl3Var, boolean z) {
        MotionEvent motionEvent = pointerEvent.getMotionEvent();
        if (motionEvent == null) {
            fg.c("The PointerEvent receiver cannot have a null MotionEvent.");
            return;
        }
        int action = motionEvent.getAction();
        if (z) {
            motionEvent.setAction(3);
        }
        int i = (int) (j >> 32);
        float f = -Float.intBitsToFloat(i);
        int i2 = (int) (j & MuxerUtil.UNSIGNED_INT_MAX_VALUE);
        motionEvent.offsetLocation(f, -Float.intBitsToFloat(i2));
        nl3Var.invoke(motionEvent);
        motionEvent.offsetLocation(Float.intBitsToFloat(i), Float.intBitsToFloat(i2));
        motionEvent.setAction(action);
    }
}
