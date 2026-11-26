package io.appmetrica.analytics.impl;

import io.appmetrica.analytics.networktasks.internal.NetworkServiceLocator;

/* JADX INFO: loaded from: classes5.dex */
public final class Ea implements Bk {
    @Override // io.appmetrica.analytics.impl.Bk
    public final void onCreate() {
        NetworkServiceLocator.getInstance().onCreate();
    }

    @Override // io.appmetrica.analytics.impl.Bk
    public final void onDestroy() {
        NetworkServiceLocator.getInstance().onDestroy();
    }
}
