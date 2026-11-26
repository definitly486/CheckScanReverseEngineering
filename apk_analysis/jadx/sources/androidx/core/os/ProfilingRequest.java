package androidx.core.os;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public final class ProfilingRequest {
    private final android.os.CancellationSignal cancellationSignal;
    private final Bundle params;
    private final int profilingType;
    private final String tag;

    public ProfilingRequest(int i, Bundle bundle, String str, android.os.CancellationSignal cancellationSignal) {
        bundle.getClass();
        this.profilingType = i;
        this.params = bundle;
        this.tag = str;
        this.cancellationSignal = cancellationSignal;
    }

    public final android.os.CancellationSignal getCancellationSignal() {
        return this.cancellationSignal;
    }

    public final Bundle getParams() {
        return this.params;
    }

    public final int getProfilingType() {
        return this.profilingType;
    }

    public final String getTag() {
        return this.tag;
    }
}
