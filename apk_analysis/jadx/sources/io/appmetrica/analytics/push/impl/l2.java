package io.appmetrica.analytics.push.impl;

import android.os.Looper;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes5.dex */
public abstract class l2 {
    public Looper a;

    public static void a(l2 l2Var, Looper looper) {
        l2Var.a = looper;
    }

    public abstract void a(CountDownLatch countDownLatch);
}
