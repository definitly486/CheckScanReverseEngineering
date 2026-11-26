package androidx.tracing;

/* JADX INFO: loaded from: classes3.dex */
public final class TraceApi29Impl {
    public static final TraceApi29Impl INSTANCE = new TraceApi29Impl();

    private TraceApi29Impl() {
    }

    public final void beginAsyncSection(String str, int i) {
        str.getClass();
        android.os.Trace.beginAsyncSection(str, i);
    }

    public final void endAsyncSection(String str, int i) {
        str.getClass();
        android.os.Trace.endAsyncSection(str, i);
    }

    public final boolean isEnabled() {
        return android.os.Trace.isEnabled();
    }

    public final void setCounter(String str, int i) {
        str.getClass();
        android.os.Trace.setCounter(str, i);
    }
}
