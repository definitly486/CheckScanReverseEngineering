package androidx.compose.runtime.internal;

/* JADX INFO: loaded from: classes2.dex */
public final class Trace {
    public static final int $stable = 0;
    public static final Trace INSTANCE = new Trace();

    private Trace() {
    }

    public final Object beginSection(String str) {
        android.os.Trace.beginSection(str);
        return null;
    }

    public final void endSection(Object obj) {
        android.os.Trace.endSection();
    }
}
