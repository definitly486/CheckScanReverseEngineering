package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class UnregisterListenerMethod<A extends Api.AnyClient, L> {
    public final ListenerHolder.ListenerKey a;

    public UnregisterListenerMethod(ListenerHolder.ListenerKey<L> listenerKey) {
        this.a = listenerKey;
    }

    public abstract void a(Api.Client client, TaskCompletionSource taskCompletionSource);

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.a;
    }
}
