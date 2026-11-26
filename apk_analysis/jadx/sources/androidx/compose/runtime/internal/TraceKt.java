package androidx.compose.runtime.internal;

import defpackage.ll3;

/* JADX INFO: loaded from: classes2.dex */
public final class TraceKt {
    public static final <T> T trace(String str, ll3<? extends T> ll3Var) {
        Object objBeginSection = Trace.INSTANCE.beginSection(str);
        try {
            return ll3Var.invoke();
        } finally {
            Trace.INSTANCE.endSection(objBeginSection);
        }
    }
}
