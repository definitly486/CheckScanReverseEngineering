package androidx.core.os;

import android.os.Bundle;
import androidx.core.os.ProfilingRequestBuilder;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ProfilingRequestBuilder<T extends ProfilingRequestBuilder<T>> {
    private android.os.CancellationSignal mCancellationSignal;
    private String mTag;

    public final ProfilingRequest build() {
        return new ProfilingRequest(getProfilingType(), getParams(), this.mTag, this.mCancellationSignal);
    }

    public abstract Bundle getParams();

    public abstract int getProfilingType();

    public abstract T getThis();

    public final T setCancellationSignal(android.os.CancellationSignal cancellationSignal) {
        cancellationSignal.getClass();
        this.mCancellationSignal = cancellationSignal;
        return (T) getThis();
    }

    public final T setTag(String str) {
        str.getClass();
        this.mTag = str;
        return (T) getThis();
    }
}
