package io.appmetrica.analytics.impl;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import io.appmetrica.analytics.coreapi.internal.executors.IHandlerExecutor;

/* JADX INFO: loaded from: classes5.dex */
public final class P1 implements E1 {
    public final ICommonExecutor a;
    public final E1 b;
    public boolean c;

    public P1(E1 e1) {
        this(Fa.k().w().b(), e1);
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent, int i) {
        this.a.execute(new H1(this, intent, i));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void b(Intent intent) {
        this.a.execute(new L1(this, intent));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void c(Intent intent) {
        this.a.execute(new K1(this, intent));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void onConfigurationChanged(Configuration configuration) {
        this.a.execute(new F1(this, configuration));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final synchronized void onCreate() {
        this.c = true;
        this.a.execute(new G1(this));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void onDestroy() {
        this.a.removeAll();
        synchronized (this) {
            this.c = false;
        }
        this.b.onDestroy();
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void pauseUserSession(Bundle bundle) {
        this.a.execute(new O1(this, bundle));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void reportData(int i, Bundle bundle) {
        this.a.execute(new M1(this, i, bundle));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void resumeUserSession(Bundle bundle) {
        this.a.execute(new N1(this, bundle));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent, int i, int i2) {
        this.a.execute(new I1(this, intent, i, i2));
    }

    @Override // io.appmetrica.analytics.impl.E1
    public final void a(Intent intent) {
        this.a.execute(new J1(this, intent));
    }

    public P1(IHandlerExecutor iHandlerExecutor, E1 e1) {
        this.c = false;
        this.a = iHandlerExecutor;
        this.b = e1;
    }
}
