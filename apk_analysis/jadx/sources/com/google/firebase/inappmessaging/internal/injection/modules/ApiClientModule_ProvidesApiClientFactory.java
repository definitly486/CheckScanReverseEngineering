package com.google.firebase.inappmessaging.internal.injection.modules;

import android.app.Application;
import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Preconditions;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import com.google.firebase.inappmessaging.internal.ApiClient;
import com.google.firebase.inappmessaging.internal.GrpcClient;
import com.google.firebase.inappmessaging.internal.ProviderInstaller;
import defpackage.ws6;

/* JADX INFO: loaded from: classes4.dex */
public final class ApiClientModule_ProvidesApiClientFactory implements Factory<ApiClient> {
    private final Provider<Application> applicationProvider;
    private final Provider<GrpcClient> grpcClientProvider;
    private final ApiClientModule module;
    private final Provider<ProviderInstaller> providerInstallerProvider;

    private ApiClientModule_ProvidesApiClientFactory(ApiClientModule apiClientModule, Provider<GrpcClient> provider, Provider<Application> provider2, Provider<ProviderInstaller> provider3) {
        this.module = apiClientModule;
        this.grpcClientProvider = provider;
        this.applicationProvider = provider2;
        this.providerInstallerProvider = provider3;
    }

    public static ApiClientModule_ProvidesApiClientFactory create(ApiClientModule apiClientModule, Provider<GrpcClient> provider, Provider<Application> provider2, Provider<ProviderInstaller> provider3) {
        return new ApiClientModule_ProvidesApiClientFactory(apiClientModule, provider, provider2, provider3);
    }

    public static ApiClient providesApiClient(ApiClientModule apiClientModule, ws6<GrpcClient> ws6Var, Application application, ProviderInstaller providerInstaller) {
        return (ApiClient) Preconditions.checkNotNullFromProvides(apiClientModule.providesApiClient(ws6Var, application, providerInstaller));
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public ApiClient get() {
        return providesApiClient(this.module, this.grpcClientProvider, (Application) this.applicationProvider.get(), (ProviderInstaller) this.providerInstallerProvider.get());
    }
}
