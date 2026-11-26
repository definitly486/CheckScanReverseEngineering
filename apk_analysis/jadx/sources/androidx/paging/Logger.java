package androidx.paging;

import defpackage.n1;
import defpackage.ul2;

/* JADX INFO: loaded from: classes3.dex */
@ul2
public interface Logger {
    static /* synthetic */ void log$default(Logger logger, int i, String str, Throwable th, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: log");
            return;
        }
        if ((i2 & 4) != 0) {
            th = null;
        }
        logger.log(i, str, th);
    }

    boolean isLoggable(int i);

    void log(int i, String str, Throwable th);
}
