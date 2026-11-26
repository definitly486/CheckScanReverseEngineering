package yads;

import android.media.metrics.LogSessionId;

/* JADX INFO: loaded from: classes6.dex */
public abstract class xy3 {
    public static void a(ny3 ny3Var, rw4 rw4Var) {
        qw4 qw4Var = rw4Var.a;
        qw4Var.getClass();
        LogSessionId logSessionId = qw4Var.a;
        if (logSessionId.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
            return;
        }
        ny3Var.b.setString("log-session-id", logSessionId.getStringId());
    }
}
