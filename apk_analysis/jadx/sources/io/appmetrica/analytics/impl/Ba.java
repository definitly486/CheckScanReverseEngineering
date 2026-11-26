package io.appmetrica.analytics.impl;

import android.os.IBinder;

/* JADX INFO: loaded from: classes5.dex */
public final class Ba implements Da {
    public final IBinder a;

    public Ba(IBinder iBinder) {
        this.a = iBinder;
    }

    @Override // android.os.IInterface
    public final IBinder asBinder() {
        return this.a;
    }
}
