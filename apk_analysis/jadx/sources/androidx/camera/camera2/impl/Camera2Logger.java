package androidx.camera.camera2.impl;

import android.util.Log;
import androidx.camera.core.Logger;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class Camera2Logger {
    public static final Camera2Logger INSTANCE;
    private static final int MAX_TAG_LENGTH = 23;
    private static final String TAG = "CXCP";
    private static final String TRUNCATED_TAG;

    static {
        Camera2Logger camera2Logger = new Camera2Logger();
        INSTANCE = camera2Logger;
        TRUNCATED_TAG = camera2Logger.truncateTag("CXCP");
    }

    private Camera2Logger() {
    }

    private final String truncateTag(String str) {
        return str;
    }

    public final void debug(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(TRUNCATED_TAG, ll3Var.invoke(), th);
        }
    }

    public final void error(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (Logger.isErrorEnabled("CXCP")) {
            Log.e(TRUNCATED_TAG, ll3Var.invoke(), th);
        }
    }

    public final void info(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (Logger.isInfoEnabled("CXCP")) {
            Log.i(TRUNCATED_TAG, ll3Var.invoke(), th);
        }
    }

    public final void verbose(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (Logger.isVerboseEnabled("CXCP")) {
            Log.v(TRUNCATED_TAG, ll3Var.invoke(), th);
        }
    }

    public final void warn(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(TRUNCATED_TAG, ll3Var.invoke(), th);
        }
    }

    public final void debug(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (Logger.isDebugEnabled("CXCP")) {
            Log.d(TRUNCATED_TAG, ll3Var.invoke());
        }
    }

    public final void error(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (Logger.isErrorEnabled("CXCP")) {
            Log.e(TRUNCATED_TAG, ll3Var.invoke());
        }
    }

    public final void info(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (Logger.isInfoEnabled("CXCP")) {
            Log.i(TRUNCATED_TAG, ll3Var.invoke());
        }
    }

    public final void verbose(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (Logger.isVerboseEnabled("CXCP")) {
            Log.v(TRUNCATED_TAG, ll3Var.invoke());
        }
    }

    public final void warn(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (Logger.isWarnEnabled("CXCP")) {
            Log.w(TRUNCATED_TAG, ll3Var.invoke());
        }
    }
}
