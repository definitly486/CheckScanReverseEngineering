package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import defpackage.la5;
import defpackage.y34;
import defpackage.y81;

/* JADX INFO: loaded from: classes4.dex */
public final class GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory implements Factory<y34.a> {
    private final Provider<y81> channelProvider;
    private final Provider<la5> metadataProvider;
    private final GrpcClientModule module;

    private GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory(GrpcClientModule grpcClientModule, Provider<y81> provider, Provider<la5> provider2) {
        this.module = grpcClientModule;
        this.channelProvider = provider;
        this.metadataProvider = provider2;
    }

    public static GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory create(GrpcClientModule grpcClientModule, Provider<y81> provider, Provider<la5> provider2) {
        return new GrpcClientModule_ProvidesInAppMessagingSdkServingStubFactory(grpcClientModule, provider, provider2);
    }

    public static y34.a providesInAppMessagingSdkServingStub(GrpcClientModule grpcClientModule, y81 y81Var, la5 la5Var) {
        return (y34.a) Preconditions.checkNotNullFromProvides(grpcClientModule.providesInAppMessagingSdkServingStub(y81Var, la5Var));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public y34.a get() {
        return providesInAppMessagingSdkServingStub(this.module, (y81) this.channelProvider.get(), (la5) this.metadataProvider.get());
    }
}
