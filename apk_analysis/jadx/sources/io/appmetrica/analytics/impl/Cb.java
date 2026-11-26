package io.appmetrica.analytics.impl;

import android.os.Handler;
import android.os.SystemClock;
import io.appmetrica.analytics.coreutils.internal.WrapUtils;

/* JADX INFO: loaded from: classes5.dex */
public final class Cb {
    public final Handler a;
    public final W2 b;
    public final Db c;

    public Cb(Handler handler, W2 w2) {
        this.a = handler;
        this.b = w2;
        this.c = new Db(handler, w2);
    }

    public static void a(Handler handler, W2 w2, Runnable runnable) {
        handler.removeCallbacks(runnable, w2.b.b.getApiKey());
        handler.postAtTime(runnable, w2.b.b.getApiKey(), SystemClock.uptimeMillis() + ((long) (((Integer) WrapUtils.getOrDefault(w2.b.b.getSessionTimeout(), 10)).intValue() * 500)));
    }
}
