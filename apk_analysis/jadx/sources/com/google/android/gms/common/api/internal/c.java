package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class c extends RegisterListenerMethod {
    public final /* synthetic */ RegistrationMethods.Builder e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public c(RegistrationMethods.Builder builder, ListenerHolder listenerHolder, Feature[] featureArr, boolean z, int i) {
        super(listenerHolder, featureArr, z, i);
        this.e = builder;
    }

    @Override // com.google.android.gms.common.api.internal.RegisterListenerMethod
    public final void a(Api.AnyClient anyClient, TaskCompletionSource<Void> taskCompletionSource) {
        this.e.a.accept(anyClient, taskCompletionSource);
    }
}
