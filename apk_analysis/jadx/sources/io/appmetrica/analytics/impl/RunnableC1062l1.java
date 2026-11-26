package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.StartupParamsCallback;
import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.l1, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class RunnableC1062l1 implements Runnable {
    public final /* synthetic */ Context a;
    public final /* synthetic */ StartupParamsCallback b;
    public final /* synthetic */ List c;
    public final /* synthetic */ C1370x1 d;

    public RunnableC1062l1(C1370x1 c1370x1, Context context, StartupParamsCallback startupParamsCallback, List list) {
        this.d = c1370x1;
        this.a = context;
        this.b = startupParamsCallback;
        this.c = list;
    }

    @Override // java.lang.Runnable
    public final void run() {
        C0 c0 = this.d.a;
        Context applicationContext = this.a.getApplicationContext();
        c0.getClass();
        B0 b0A = B0.a(applicationContext);
        b0A.f().a(this.b, this.c);
    }
}
