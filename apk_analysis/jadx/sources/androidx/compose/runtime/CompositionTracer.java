package androidx.compose.runtime;

/* JADX INFO: loaded from: classes2.dex */
public interface CompositionTracer {
    boolean isTraceInProgress();

    void traceEventEnd();

    void traceEventStart(int i, int i2, int i3, String str);
}
