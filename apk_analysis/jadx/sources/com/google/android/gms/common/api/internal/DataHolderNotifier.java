package com.google.android.gms.common.api.internal;

/* JADX INFO: loaded from: classes4.dex */
public abstract class DataHolderNotifier<L> implements ListenerHolder.Notifier<L> {
    public abstract void a();

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public final void notifyListener(L l) {
        a();
    }

    @Override // com.google.android.gms.common.api.internal.ListenerHolder.Notifier
    public void onNotifyListenerFailed() {
    }
}
