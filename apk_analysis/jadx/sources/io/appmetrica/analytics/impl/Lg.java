package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;
import io.appmetrica.analytics.networktasks.internal.NetworkTask;

/* JADX INFO: loaded from: classes5.dex */
public final class Lg implements InterfaceC0799am {
    public final Qm a;

    public Lg(Qm qm) {
        this.a = qm;
    }

    @Override // io.appmetrica.analytics.impl.InterfaceC0799am
    public final void a() {
        NetworkTask networkTaskC = this.a.c();
        if (networkTaskC != null) {
            Fa.I.getClass();
            NetworkServiceLocator.getInstance().getNetworkCore().startTask(networkTaskC);
        }
    }
}
