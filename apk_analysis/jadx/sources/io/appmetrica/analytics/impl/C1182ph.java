package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.internal.CounterConfigurationReporterType;
import io.appmetrica.analytics.networktasks.internal.BaseRequestConfig;
import java.util.Map;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ph, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1182ph extends X5 {
    public final C0989i5 b;
    public final InterfaceC1156oh c;
    public final Q3 d;

    public C1182ph(C0989i5 c0989i5, InterfaceC1156oh interfaceC1156oh, Q3 q3) {
        super(c0989i5.getContext(), c0989i5.a().c());
        this.b = c0989i5;
        this.c = interfaceC1156oh;
        this.d = q3;
    }

    public final C1233rh a() {
        return new C1233rh(this.b);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.appmetrica.analytics.impl.X5, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader, io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.RequestConfigLoader
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] and merged with bridge method [inline-methods] and merged with bridge method [inline-methods] */
    public final C1233rh load(W5 w5) {
        C1233rh c1233rh = (C1233rh) super.load(w5);
        c1233rh.m = ((C1104mh) w5.componentArguments).a;
        c1233rh.r = this.b.t.a();
        c1233rh.w = this.b.q.a();
        C1104mh c1104mh = (C1104mh) w5.componentArguments;
        c1233rh.d = c1104mh.b;
        c1233rh.e = c1104mh.c;
        c1233rh.f = c1104mh.d;
        c1233rh.i = c1104mh.e;
        c1233rh.g = c1104mh.f;
        c1233rh.h = c1104mh.g;
        Boolean boolValueOf = Boolean.valueOf(c1104mh.h);
        InterfaceC1156oh interfaceC1156oh = this.c;
        c1233rh.j = boolValueOf;
        c1233rh.k = interfaceC1156oh;
        C1104mh c1104mh2 = (C1104mh) w5.componentArguments;
        c1233rh.v = c1104mh2.j;
        C1341vm c1341vm = w5.a;
        C1423z4 c1423z4 = c1341vm.n;
        c1233rh.n = c1423z4.a;
        He he = c1341vm.s;
        if (he != null) {
            c1233rh.s = he.a;
            c1233rh.t = he.b;
        }
        c1233rh.o = c1423z4.b;
        c1233rh.q = c1341vm.e;
        c1233rh.p = c1341vm.k;
        Q3 q3 = this.d;
        Map<String, String> map = c1104mh2.i;
        N3 n3F = Fa.I.f();
        q3.getClass();
        c1233rh.u = Q3.a(map, c1341vm, n3F);
        c1233rh.x = this.b.v.e.keySet();
        c1233rh.y = this.b.b() == CounterConfigurationReporterType.MAIN;
        return c1233rh;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.BaseRequestConfig.ComponentLoader
    public final BaseRequestConfig createBlankConfig() {
        return new C1233rh(this.b);
    }

    public C1182ph(C0989i5 c0989i5, InterfaceC1156oh interfaceC1156oh) {
        this(c0989i5, interfaceC1156oh, new Q3());
    }
}
