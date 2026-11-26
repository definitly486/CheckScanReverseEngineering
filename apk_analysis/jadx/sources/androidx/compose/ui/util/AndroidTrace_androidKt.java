package androidx.compose.ui.util;

import android.os.Build;
import android.os.Trace;
import defpackage.ll3;

/* JADX INFO: loaded from: classes.dex */
public final class AndroidTrace_androidKt {
    public static final <T> T trace(String str, ll3<? extends T> ll3Var) {
        Trace.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }

    public static final void traceValue(String str, long j) {
        if (Build.VERSION.SDK_INT >= 29) {
            Trace.setCounter(str, j);
        }
    }
}
