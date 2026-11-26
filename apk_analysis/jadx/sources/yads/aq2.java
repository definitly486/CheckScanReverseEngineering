package yads;

import android.content.Context;
import android.media.metrics.LogSessionId;
import android.media.metrics.MediaMetricsManager;

/* JADX INFO: loaded from: classes6.dex */
public abstract class aq2 {
    public static rw4 a(Context context, eq2 eq2Var, boolean z) {
        MediaMetricsManager mediaMetricsManagerB = defpackage.ln.b(context.getSystemService("media_metrics"));
        w04 w04Var = mediaMetricsManagerB == null ? null : new w04(context, mediaMetricsManagerB.createPlaybackSession());
        if (w04Var == null) {
            sv3.d("ExoPlayerImpl", "MediaMetricsService unavailable.");
            return new rw4(LogSessionId.LOG_SESSION_ID_NONE);
        }
        if (z) {
            eq2Var.getClass();
            cj0 cj0Var = (cj0) eq2Var.p;
            cj0Var.getClass();
            wt3 wt3Var = cj0Var.f;
            if (!wt3Var.g) {
                wt3Var.d.add(new vt3(w04Var));
            }
        }
        return new rw4(w04Var.c.getSessionId());
    }
}
