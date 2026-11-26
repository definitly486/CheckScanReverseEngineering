package androidx.paging;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class PagingLoggerKt {
    public static final int DEBUG = 3;
    public static final String LOG_TAG = "Paging";
    public static final int VERBOSE = 2;

    public static final void log(int i, Throwable th, ll3<String> ll3Var) {
        ll3Var.getClass();
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(i)) {
            pagingLogger.log(i, ll3Var.invoke(), th);
        }
    }

    public static /* synthetic */ void log$default(int i, Throwable th, ll3 ll3Var, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            th = null;
        }
        ll3Var.getClass();
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(i)) {
            pagingLogger.log(i, (String) ll3Var.invoke(), th);
        }
    }
}
