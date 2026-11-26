package androidx.compose.runtime.internal;

import android.util.Log;

/* JADX INFO: loaded from: classes2.dex */
public final class Utils_androidKt {
    private static final String LogTag = "ComposeInternal";

    public static final void logError(String str, Throwable th) {
        Log.e(LogTag, str, th);
    }
}
