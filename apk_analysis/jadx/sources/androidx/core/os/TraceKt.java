package androidx.core.os;

import android.os.Trace;
import defpackage.ll3;
import defpackage.ul2;

/* JADX INFO: loaded from: classes2.dex */
public final class TraceKt {
    @ul2
    public static final <T> T trace(String str, ll3<? extends T> ll3Var) {
        Trace.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.endSection();
        }
    }
}
