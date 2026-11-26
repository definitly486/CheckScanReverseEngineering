package io.appmetrica.analytics.push.impl;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes5.dex */
public final class E0 {
    public final HandlerThread a;
    public final Handler b;

    public E0(HandlerThread handlerThread, Handler handler) {
        this.a = handlerThread;
        this.b = handler;
    }

    public final Looper a() {
        return this.a.getLooper();
    }
}
