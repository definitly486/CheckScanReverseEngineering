package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public abstract class RegisterListenerMethod<A extends Api.AnyClient, L> {
    public final ListenerHolder a;
    public final Feature[] b;
    public final boolean c;
    public final int d;

    public RegisterListenerMethod(ListenerHolder<L> listenerHolder, Feature[] featureArr, boolean z, int i) {
        this.a = listenerHolder;
        this.b = featureArr;
        this.c = z;
        this.d = i;
    }

    public abstract void a(A a, TaskCompletionSource<Void> taskCompletionSource);

    public void clearListener() {
        this.a.clear();
    }

    public ListenerHolder.ListenerKey<L> getListenerKey() {
        return this.a.getListenerKey();
    }

    public Feature[] getRequiredFeatures() {
        return this.b;
    }

    public final boolean zaa() {
        return this.c;
    }

    public final int zab() {
        return this.d;
    }
}
