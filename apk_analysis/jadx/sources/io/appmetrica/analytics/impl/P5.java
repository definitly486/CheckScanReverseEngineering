package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.IReporter;
import io.appmetrica.analytics.coreapi.internal.lifecycle.ActivityEvent;

/* JADX INFO: loaded from: classes5.dex */
public final class P5 {
    public final C1138o a;
    public final IReporter b;
    public Context c;
    public final O5 d;

    public P5(C1138o c1138o, IReporter iReporter) {
        this.a = c1138o;
        this.b = iReporter;
        this.d = new O5(this);
    }

    public final synchronized void a(Context context) {
        if (this.c == null) {
            Context applicationContext = context.getApplicationContext();
            this.a.a(applicationContext);
            this.a.registerListener(this.d, ActivityEvent.RESUMED, ActivityEvent.PAUSED);
            this.c = applicationContext;
        }
    }

    public P5(C1138o c1138o) {
        this(c1138o, 0);
    }

    public /* synthetic */ P5(C1138o c1138o, int i) {
        this(c1138o, B1.a());
    }

    public final synchronized Context a() {
        return this.c;
    }
}
