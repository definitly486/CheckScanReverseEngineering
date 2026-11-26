package io.appmetrica.analytics.impl;

import android.os.Process;

/* JADX INFO: loaded from: classes5.dex */
public final class Ab implements InterfaceC1289tl {
    @Override // io.appmetrica.analytics.impl.InterfaceC1289tl
    public final boolean a(C1380xb c1380xb) {
        Integer num = c1380xb.f;
        return num == null || num.intValue() != Process.myPid();
    }
}
