package androidx.camera.camera2.pipe.core;

import defpackage.ll3;
import defpackage.qn1;
import defpackage.yr;

/* JADX INFO: loaded from: classes.dex */
public final class Log {
    private static final int LOG_LEVEL = 1;
    private static final int LOG_LEVEL_DEBUG = 1;
    private static final int LOG_LEVEL_ERROR = 4;
    private static final int LOG_LEVEL_INFO = 2;
    private static final int LOG_LEVEL_WARN = 3;
    public static final String TAG = "CXCP";
    public static final Log INSTANCE = new Log();
    private static final boolean DEBUG_LOGGABLE = true;
    private static final boolean INFO_LOGGABLE = true;
    private static final boolean WARN_LOGGABLE = true;
    private static final boolean ERROR_LOGGABLE = true;

    public static final class MonitoredLogMessages {
        public static final MonitoredLogMessages INSTANCE = new MonitoredLogMessages();
        public static final String REPEATING_REQUEST_STARTED_TIMEOUT = "awaitStarted on last repeating request timed out";

        private MonitoredLogMessages() {
        }
    }

    private Log() {
    }

    public static /* synthetic */ String readStackTrace$default(Log log, int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 4;
        }
        return log.readStackTrace(i);
    }

    public final void debug(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (getDEBUG_LOGGABLE()) {
            android.util.Log.d(TAG, ll3Var.invoke(), th);
        }
    }

    public final void error(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (getERROR_LOGGABLE()) {
            android.util.Log.e(TAG, ll3Var.invoke(), th);
        }
    }

    public final boolean getDEBUG_LOGGABLE() {
        return DEBUG_LOGGABLE;
    }

    public final boolean getERROR_LOGGABLE() {
        return ERROR_LOGGABLE;
    }

    public final boolean getINFO_LOGGABLE() {
        return INFO_LOGGABLE;
    }

    public final boolean getWARN_LOGGABLE() {
        return WARN_LOGGABLE;
    }

    public final void info(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (getINFO_LOGGABLE()) {
            android.util.Log.i(TAG, ll3Var.invoke(), th);
        }
    }

    public final String readStackTrace(int i) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        stackTrace.getClass();
        return qn1.a0(yr.F(3, stackTrace), "\t", "\n\t", null, i, null, 52);
    }

    public final <T> T rethrowExceptionAfterLogging(String str, ll3<? extends T> ll3Var) throws Exception {
        str.getClass();
        ll3Var.getClass();
        try {
            return ll3Var.invoke();
        } catch (Exception e) {
            if (getERROR_LOGGABLE()) {
                android.util.Log.e(TAG, str, e);
            }
            throw e;
        }
    }

    public final void warn(Throwable th, ll3<String> ll3Var) {
        th.getClass();
        ll3Var.getClass();
        if (getWARN_LOGGABLE()) {
            android.util.Log.w(TAG, ll3Var.invoke(), th);
        }
    }

    public final void debug(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (getDEBUG_LOGGABLE()) {
            android.util.Log.d(TAG, ll3Var.invoke());
        }
    }

    public final void error(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (getERROR_LOGGABLE()) {
            android.util.Log.e(TAG, ll3Var.invoke());
        }
    }

    public final void info(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (getINFO_LOGGABLE()) {
            android.util.Log.i(TAG, ll3Var.invoke());
        }
    }

    public final void warn(ll3<String> ll3Var) {
        ll3Var.getClass();
        if (getWARN_LOGGABLE()) {
            android.util.Log.w(TAG, ll3Var.invoke());
        }
    }
}
