package androidx.core.os;

import android.os.Bundle;

/* JADX INFO: loaded from: classes2.dex */
public final class SystemTraceRequestBuilder extends ProfilingRequestBuilder<SystemTraceRequestBuilder> {
    private final Bundle mParams = new Bundle();

    @Override // androidx.core.os.ProfilingRequestBuilder
    public Bundle getParams() {
        return this.mParams;
    }

    @Override // androidx.core.os.ProfilingRequestBuilder
    public int getProfilingType() {
        return 4;
    }

    public final SystemTraceRequestBuilder setBufferFillPolicy(BufferFillPolicy bufferFillPolicy) {
        bufferFillPolicy.getClass();
        this.mParams.putInt("KEY_BUFFER_FILL_POLICY", bufferFillPolicy.getValue$core());
        return this;
    }

    public final SystemTraceRequestBuilder setBufferSizeKb(int i) {
        this.mParams.putInt("KEY_SIZE_KB", i);
        return this;
    }

    public final SystemTraceRequestBuilder setDurationMs(int i) {
        this.mParams.putInt("KEY_DURATION_MS", i);
        return this;
    }

    @Override // androidx.core.os.ProfilingRequestBuilder
    public SystemTraceRequestBuilder getThis() {
        return this;
    }
}
