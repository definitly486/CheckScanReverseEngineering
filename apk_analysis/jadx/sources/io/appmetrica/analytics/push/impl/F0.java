package io.appmetrica.analytics.push.impl;

import android.os.Handler;
import android.os.HandlerThread;

/* JADX INFO: loaded from: classes5.dex */
public final class F0 {
    public static volatile F0 c;
    public static final Object d = new Object();
    public final Object a = new Object();
    public volatile E0 b;

    public static F0 b() {
        if (c == null) {
            synchronized (d) {
                try {
                    if (c == null) {
                        c = new F0();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c;
    }

    public final E0 a() {
        if (this.b == null) {
            synchronized (this.a) {
                try {
                    if (this.b == null) {
                        HandlerThread handlerThread = new HandlerThread("AppMetricaPushCommon");
                        handlerThread.start();
                        this.b = new E0(handlerThread, new Handler(handlerThread.getLooper()));
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return this.b;
    }
}
