package io.appmetrica.analytics.push.impl;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import defpackage.kc2;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class G implements C {
    public final C a;
    public final E b;
    public final CountDownLatch c = new CountDownLatch(1);
    public final Handler d = new Handler(Looper.getMainLooper());

    public G(C c, E e) {
        this.a = c;
        this.b = e;
    }

    @Override // io.appmetrica.analytics.push.impl.C
    public final void a(Context context, Bundle bundle) {
        long jA = this.b.a(context, bundle);
        Handler handler = this.d;
        kc2 kc2Var = new kc2(this, 3);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        handler.postDelayed(kc2Var, timeUnit.toMillis(jA));
        this.a.a(context, bundle);
        try {
            this.c.await(jA, timeUnit);
        } catch (Throwable unused) {
        }
    }

    public static final void a(G g) {
        g.c.countDown();
    }
}
