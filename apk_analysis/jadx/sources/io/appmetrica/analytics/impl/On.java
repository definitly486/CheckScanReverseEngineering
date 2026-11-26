package io.appmetrica.analytics.impl;

import android.os.Looper;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class On implements Qn {
    @Override // io.appmetrica.analytics.impl.Qn
    public final Thread a() {
        return Looper.getMainLooper().getThread();
    }

    @Override // io.appmetrica.analytics.impl.Qn
    public final StackTraceElement[] b() {
        return null;
    }

    @Override // io.appmetrica.analytics.impl.Qn
    public final Map c() {
        return Thread.getAllStackTraces();
    }
}
