package io.appmetrica.analytics.impl;

import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public final class S4 implements InterfaceC1042k7 {
    public final String a;
    public final String b;

    public S4(C0808b5 c0808b5) {
        this.a = String.format("component_%s.db", Arrays.copyOf(new Object[]{c0808b5.d() ? "main" : c0808b5.b()}, 1));
        this.b = "db_metrica_" + c0808b5;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1042k7
    public final String a() {
        return this.b;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1042k7
    public final String b() {
        return this.a;
    }
}
