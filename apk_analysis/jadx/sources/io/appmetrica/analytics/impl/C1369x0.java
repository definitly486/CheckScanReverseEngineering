package io.appmetrica.analytics.impl;

import android.app.Service;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.x0, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public final class C1369x0 implements D1 {
    public final Service a;

    public C1369x0(Service service) {
        this.a = service;
    }

    public final void a(int i) {
        this.a.stopSelf(i);
    }
}
