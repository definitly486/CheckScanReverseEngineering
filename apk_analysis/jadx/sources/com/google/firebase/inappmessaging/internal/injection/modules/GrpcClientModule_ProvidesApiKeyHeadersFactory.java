package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import defpackage.la5;

/* JADX INFO: loaded from: classes4.dex */
public final class GrpcClientModule_ProvidesApiKeyHeadersFactory implements Factory<la5> {
    private final GrpcClientModule module;

    private GrpcClientModule_ProvidesApiKeyHeadersFactory(GrpcClientModule grpcClientModule) {
        this.module = grpcClientModule;
    }

    public static GrpcClientModule_ProvidesApiKeyHeadersFactory create(GrpcClientModule grpcClientModule) {
        return new GrpcClientModule_ProvidesApiKeyHeadersFactory(grpcClientModule);
    }

    public static la5 providesApiKeyHeaders(GrpcClientModule grpcClientModule) {
        return (la5) Preconditions.checkNotNullFromProvides(grpcClientModule.providesApiKeyHeaders());
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public la5 get() {
        return providesApiKeyHeaders(this.module);
    }
}
