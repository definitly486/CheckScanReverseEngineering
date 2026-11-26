package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import defpackage.y34;

/* JADX INFO: loaded from: classes4.dex */
public final class GrpcClient_Factory implements Factory<GrpcClient> {
    private final Provider<y34.a> stubProvider;

    private GrpcClient_Factory(Provider<y34.a> provider) {
        this.stubProvider = provider;
    }

    public static GrpcClient_Factory create(Provider<y34.a> provider) {
        return new GrpcClient_Factory(provider);
    }

    public static GrpcClient newInstance(y34.a aVar) {
        return new GrpcClient(aVar);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public GrpcClient get() {
        return newInstance((y34.a) this.stubProvider.get());
    }
}
