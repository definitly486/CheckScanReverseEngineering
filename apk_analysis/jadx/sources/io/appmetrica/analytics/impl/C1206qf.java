package io.appmetrica.analytics.impl;

import java.util.List;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.qf, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1206qf implements InterfaceC0837c8 {
    public final Df a;
    public final List<C1180pf> b;

    public C1206qf(Df df, List<C1180pf> list) {
        this.a = df;
        this.b = list;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0837c8
    public final List<C1180pf> a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0837c8
    public final Object b() {
        return this.a;
    }

    public final Df c() {
        return this.a;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PreloadInfoData{chosenPreloadInfo=");
        sb.append(this.a);
        sb.append(", candidates=");
        return defpackage.qg.f(sb, this.b, '}');
    }
}
