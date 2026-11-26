package yads;

import android.transition.Fade;
import android.transition.Transition;
import android.transition.TransitionSet;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rb2 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [android.transition.Fade] */
    /* JADX WARN: Type inference failed for: r0v5, types: [android.transition.Transition] */
    /* JADX WARN: Type inference failed for: r0v6, types: [yads.w16] */
    /* JADX WARN: Type inference failed for: r0v7, types: [yads.pc5] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9, types: [android.transition.TransitionSet] */
    public static final Transition a(k11 k11Var, pb2 pb2Var, boolean z, fs2 fs2Var) {
        ?? fade;
        Transition duration;
        int iOrdinal = ((j11) k11Var.e.a(fs2Var)).ordinal();
        if (iOrdinal == 0) {
            fade = new Fade();
        } else if (iOrdinal == 1) {
            as2 as2Var = z ? k11Var.h : k11Var.b;
            fade = new w16(pb2Var, as2Var != null ? Float.valueOf((float) ((Number) as2Var.a(fs2Var)).doubleValue()) : null);
        } else if (iOrdinal == 2) {
            as2 as2Var2 = z ? k11Var.h : k11Var.b;
            fade = new pc5(as2Var2 != null ? (float) ((Number) as2Var2.a(fs2Var)).doubleValue() : 1.0f);
        } else if (iOrdinal == 3) {
            fade = 0;
        } else if (iOrdinal != 4) {
            if (iOrdinal != 5) {
                defpackage.me0.e();
                return null;
            }
            fade = 0;
        } else {
            fade = new TransitionSet();
            List list = k11Var.d;
            if (list != null) {
                Iterator it = list.iterator();
                while (it.hasNext()) {
                    fade.addTransition(a((k11) it.next(), pb2Var, z, fs2Var));
                }
            }
        }
        if (fade == 0 || (duration = fade.setDuration(((Number) k11Var.a.a(fs2Var)).longValue())) == null) {
            return null;
        }
        return duration.setInterpolator(jf2.a((o11) k11Var.c.a(fs2Var)));
    }

    public static final void a(gc5 gc5Var) {
        gc5Var.setEnterTransition(null);
        gc5Var.setExitTransition(null);
    }
}
