package io.appmetrica.analytics.impl;

import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.c5, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C0834c5 {
    public final CopyOnWriteArrayList a = new CopyOnWriteArrayList();

    public final void a(InterfaceC1272t4 interfaceC1272t4) {
        this.a.add(interfaceC1272t4);
    }

    public final void b(InterfaceC1272t4 interfaceC1272t4) {
        this.a.remove(interfaceC1272t4);
    }

    public final List<InterfaceC1272t4> a() {
        return this.a;
    }
}
