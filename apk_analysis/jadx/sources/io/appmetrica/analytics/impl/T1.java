package io.appmetrica.analytics.impl;

import android.os.Bundle;

/* JADX INFO: loaded from: classes5.dex */
public final class T1 implements InterfaceC1288tk {
    public static final S1 b = new S1();
    public static final int c = 1;
    public final InterfaceC1319v0 a;

    public T1(InterfaceC1319v0 interfaceC1319v0) {
        this.a = interfaceC1319v0;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1288tk
    public final void reportData(int i, Bundle bundle) {
        ((Q1) this.a).a(bundle);
    }
}
