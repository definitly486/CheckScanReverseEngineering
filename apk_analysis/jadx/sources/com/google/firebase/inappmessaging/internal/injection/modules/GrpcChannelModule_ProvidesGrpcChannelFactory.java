package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import defpackage.y81;

/* JADX INFO: loaded from: classes4.dex */
public final class GrpcChannelModule_ProvidesGrpcChannelFactory implements Factory<y81> {
    private final Provider<String> hostProvider;
    private final GrpcChannelModule module;

    private GrpcChannelModule_ProvidesGrpcChannelFactory(GrpcChannelModule grpcChannelModule, Provider<String> provider) {
        this.module = grpcChannelModule;
        this.hostProvider = provider;
    }

    public static GrpcChannelModule_ProvidesGrpcChannelFactory create(GrpcChannelModule grpcChannelModule, Provider<String> provider) {
        return new GrpcChannelModule_ProvidesGrpcChannelFactory(grpcChannelModule, provider);
    }

    public static y81 providesGrpcChannel(GrpcChannelModule grpcChannelModule, String str) {
        return (y81) Preconditions.checkNotNullFromProvides(grpcChannelModule.providesGrpcChannel(str));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public y81 get() {
        return providesGrpcChannel(this.module, (String) this.hostProvider.get());
    }
}
