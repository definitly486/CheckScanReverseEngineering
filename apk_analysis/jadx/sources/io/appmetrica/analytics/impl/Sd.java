package io.appmetrica.analytics.impl;

import android.os.Process;

/* JADX INFO: loaded from: classes5.dex */
public final class Sd implements InterfaceC1289tl {
    public final int a;

    public Sd(int i) {
        this.a = i;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC1289tl
    public final boolean a(String str) {
        return this.a != Process.myPid();
    }
}
