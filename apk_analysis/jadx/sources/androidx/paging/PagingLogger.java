package androidx.paging;

import android.os.Build;
import android.util.Log;
import defpackage.fg;
import defpackage.kv2;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingLogger {
    public static final PagingLogger INSTANCE = new PagingLogger();

    private PagingLogger() {
    }

    public static /* synthetic */ void log$default(PagingLogger pagingLogger, int i, String str, Throwable th, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            th = null;
        }
        pagingLogger.log(i, str, th);
    }

    public final boolean isLoggable(int i) {
        return Build.ID != null && Log.isLoggable(PagingLoggerKt.LOG_TAG, i);
    }

    public final void log(int i, String str, Throwable th) {
        str.getClass();
        if (i == 2) {
            Log.v(PagingLoggerKt.LOG_TAG, str, th);
        } else if (i == 3) {
            Log.d(PagingLoggerKt.LOG_TAG, str, th);
        } else {
            fg.c(kv2.b(i, "debug level ", " is requested but Paging only supports default logging for level 2 (VERBOSE) or level 3 (DEBUG)"));
        }
    }
}
