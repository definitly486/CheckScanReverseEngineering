package io.appmetrica.analytics.impl;

import android.content.Context;
import io.appmetrica.analytics.coreutils.internal.services.SafePackageManager;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qm, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1213qm extends X5 {
    public final N3 b;

    public C1213qm(Context context, String str) {
        this(context, str, new SafePackageManager(), Fa.k().f());
    }

    public final C1238rm a() {
        return new C1238rm();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.appmetrica.analytics.impl.X5, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final C1238rm load(W5 w5) {
        C1238rm c1238rm = (C1238rm) super.load(w5);
        C1341vm c1341vm = w5.a;
        c1238rm.d = c1341vm.f;
        c1238rm.e = c1341vm.g;
        C1187pm c1187pm = (C1187pm) w5.componentArguments;
        String str = c1187pm.a;
        if (str != null) {
            c1238rm.f = str;
            c1238rm.g = c1187pm.b;
        }
        Map<String, String> map = c1187pm.c;
        c1238rm.h = map;
        c1238rm.i = (F3) this.b.a(new F3(map, EnumC0914f8.d));
        C1187pm c1187pm2 = (C1187pm) w5.componentArguments;
        c1238rm.k = c1187pm2.d;
        c1238rm.j = c1187pm2.e;
        C1341vm c1341vm2 = w5.a;
        c1238rm.l = c1341vm2.p;
        c1238rm.m = c1341vm2.r;
        long j = c1341vm2.v;
        if (c1238rm.n == 0) {
            c1238rm.n = j;
        }
        return c1238rm;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader
    public final BaseRequestConfig createBlankConfig() {
        return new C1238rm();
    }

    public C1213qm(Context context, String str, SafePackageManager safePackageManager, N3 n3) {
        super(context, str, safePackageManager);
        this.b = n3;
    }
}
