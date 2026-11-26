package io.appmetrica.analytics.impl;

import android.text.TextUtils;
import io.appmetrica.analytics.coreapi.internal.executors.ICommonExecutor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: loaded from: classes5.dex */
public final class Di extends C1392xn {
    public final Ci d;
    public final ICommonExecutor e;

    public Di(C0989i5 c0989i5, InterfaceC0799am interfaceC0799am, ICommonExecutor iCommonExecutor) {
        super(c0989i5, interfaceC0799am);
        this.d = new Ci(this);
        this.e = iCommonExecutor;
    }

    @Override // io.appmetrica.analytics.impl.C1392xn
    public final void a() {
        this.e.remove(this.d);
    }

    @Override // io.appmetrica.analytics.impl.C1392xn
    public final void f() {
        this.b.a();
        C1233rh c1233rh = (C1233rh) ((C0989i5) this.a).k.a();
        if (c1233rh.k.a(c1233rh.j)) {
            String str = c1233rh.m;
            if (TextUtils.isEmpty(str) || "-1".equals(str)) {
                return;
            }
            try {
                a(C0998ie.a((C0989i5) this.a));
            } catch (Throwable unused) {
            }
        }
    }

    @Override // io.appmetrica.analytics.impl.C1392xn
    public final void g() {
        this.e.executeDelayed(this.d, 1000L);
    }

    public final void h() {
        if (this.c.get()) {
            return;
        }
        this.e.remove(this.d);
        if (((C1233rh) ((C0989i5) this.a).k.a()).g > 0) {
            this.e.executeDelayed(this.d, TimeUnit.SECONDS.toMillis(((C1233rh) ((C0989i5) this.a).k.a()).g));
        }
    }
}
