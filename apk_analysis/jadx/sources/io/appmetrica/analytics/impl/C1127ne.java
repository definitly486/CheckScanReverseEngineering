package io.appmetrica.analytics.impl;

import defpackage.me0;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.ne, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1127ne implements InterfaceC1310ug {
    public final String a;
    public final String b;

    public C1127ne(String str) {
        this.a = str;
        this.b = str == null ? "<unknown-package-installer>" : str;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final void a(InterfaceC1207qg interfaceC1207qg) {
        interfaceC1207qg.a(new C1360wg(me0.d(new StringBuilder("Package installer "), this.a, " is not supported"), null, 2, null));
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1310ug
    public final String a() {
        return this.b;
    }
}
