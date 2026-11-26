package io.appmetrica.analytics.impl;

import android.content.Context;
import android.content.pm.ServiceInfo;
import defpackage.aa4;
import defpackage.j59;
import defpackage.jh2;
import io.appmetrica.analytics.coreutils.internal.services.PackageManagerUtils;
import io.appmetrica.analytics.internal.AppMetricaService;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.n6, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1119n6 extends Sg {
    public final Context f;
    public final Ch g;
    public final boolean h;
    public final E6 i;
    public final Z1 j;
    public final C1425z6 k;

    public C1119n6(Context context, C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl, Ch ch, boolean z) {
        super(c1242s0, interfaceC1263sl, ch);
        this.f = context;
        this.g = ch;
        this.h = z;
        this.i = C1169p4.l().i();
        this.j = C1169p4.l().f();
        this.k = new C1425z6(context);
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final synchronized void a() {
        try {
            if (this.c) {
                return;
            }
            this.c = true;
            String strA = this.i.a.a();
            Z1 z1 = this.j;
            Context context = this.f;
            z1.getClass();
            ServiceInfo serviceInfo = PackageManagerUtils.getServiceInfo(context, AppMetricaService.class);
            String str = serviceInfo != null ? serviceInfo.processName : null;
            if (this.h || !aa4.e(strA, str)) {
                this.a.d();
                this.c = false;
                super.a();
            } else {
                this.k.a(this.g);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // io.appmetrica.analytics.impl.Eh
    public final boolean c() {
        this.k.a(this.g);
        return false;
    }

    @Override // io.appmetrica.analytics.impl.Eh, java.util.concurrent.Callable
    public final /* bridge */ /* synthetic */ Object call() {
        a();
        return j59.a;
    }

    public /* synthetic */ C1119n6(Context context, C1242s0 c1242s0, InterfaceC1263sl interfaceC1263sl, Ch ch, boolean z, int i, jh2 jh2Var) {
        this(context, c1242s0, interfaceC1263sl, ch, (i & 16) != 0 ? false : z);
    }
}
