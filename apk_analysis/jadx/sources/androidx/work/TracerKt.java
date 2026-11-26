package androidx.work;

import defpackage.ll3;

/* JADX INFO: loaded from: classes3.dex */
public final class TracerKt {
    public static final <T> T traced(Tracer tracer, String str, ll3<? extends T> ll3Var) {
        tracer.getClass();
        str.getClass();
        ll3Var.getClass();
        boolean zIsEnabled = tracer.isEnabled();
        if (zIsEnabled) {
            try {
                tracer.beginSection(str);
            } finally {
                if (zIsEnabled) {
                    tracer.endSection();
                }
            }
        }
        return ll3Var.invoke();
    }
}
