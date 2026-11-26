package com.google.firebase.inappmessaging.internal;

import com.google.firebase.inappmessaging.dagger.internal.Factory;
import com.google.firebase.inappmessaging.dagger.internal.Provider;
import com.google.firebase.inappmessaging.internal.time.Clock;
import com.google.firebase.inappmessaging.model.RateLimit;
import com.google.firebase.installations.FirebaseInstallationsApi;
import defpackage.kw1;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
public final class InAppMessageStreamManager_Factory implements Factory<InAppMessageStreamManager> {
    private final Provider<AbtIntegrationHelper> abtIntegrationHelperProvider;
    private final Provider<AnalyticsEventsManager> analyticsEventsManagerProvider;
    private final Provider<ApiClient> apiClientProvider;
    private final Provider<kw1<String>> appForegroundEventFlowableProvider;
    private final Provider<RateLimit> appForegroundRateLimitProvider;
    private final Provider<Executor> blockingExecutorProvider;
    private final Provider<CampaignCacheClient> campaignCacheClientProvider;
    private final Provider<Clock> clockProvider;
    private final Provider<DataCollectionHelper> dataCollectionHelperProvider;
    private final Provider<FirebaseInstallationsApi> firebaseInstallationsProvider;
    private final Provider<ImpressionStorageClient> impressionStorageClientProvider;
    private final Provider<kw1<String>> programmaticTriggerEventFlowableProvider;
    private final Provider<RateLimiterClient> rateLimiterClientProvider;
    private final Provider<Schedulers> schedulersProvider;
    private final Provider<TestDeviceHelper> testDeviceHelperProvider;

    private InAppMessageStreamManager_Factory(Provider<kw1<String>> provider, Provider<kw1<String>> provider2, Provider<CampaignCacheClient> provider3, Provider<Clock> provider4, Provider<ApiClient> provider5, Provider<AnalyticsEventsManager> provider6, Provider<Schedulers> provider7, Provider<ImpressionStorageClient> provider8, Provider<RateLimiterClient> provider9, Provider<RateLimit> provider10, Provider<TestDeviceHelper> provider11, Provider<FirebaseInstallationsApi> provider12, Provider<DataCollectionHelper> provider13, Provider<AbtIntegrationHelper> provider14, Provider<Executor> provider15) {
        this.appForegroundEventFlowableProvider = provider;
        this.programmaticTriggerEventFlowableProvider = provider2;
        this.campaignCacheClientProvider = provider3;
        this.clockProvider = provider4;
        this.apiClientProvider = provider5;
        this.analyticsEventsManagerProvider = provider6;
        this.schedulersProvider = provider7;
        this.impressionStorageClientProvider = provider8;
        this.rateLimiterClientProvider = provider9;
        this.appForegroundRateLimitProvider = provider10;
        this.testDeviceHelperProvider = provider11;
        this.firebaseInstallationsProvider = provider12;
        this.dataCollectionHelperProvider = provider13;
        this.abtIntegrationHelperProvider = provider14;
        this.blockingExecutorProvider = provider15;
    }

    public static InAppMessageStreamManager_Factory create(Provider<kw1<String>> provider, Provider<kw1<String>> provider2, Provider<CampaignCacheClient> provider3, Provider<Clock> provider4, Provider<ApiClient> provider5, Provider<AnalyticsEventsManager> provider6, Provider<Schedulers> provider7, Provider<ImpressionStorageClient> provider8, Provider<RateLimiterClient> provider9, Provider<RateLimit> provider10, Provider<TestDeviceHelper> provider11, Provider<FirebaseInstallationsApi> provider12, Provider<DataCollectionHelper> provider13, Provider<AbtIntegrationHelper> provider14, Provider<Executor> provider15) {
        return new InAppMessageStreamManager_Factory(provider, provider2, provider3, provider4, provider5, provider6, provider7, provider8, provider9, provider10, provider11, provider12, provider13, provider14, provider15);
    }

    public static InAppMessageStreamManager newInstance(kw1<String> kw1Var, kw1<String> kw1Var2, CampaignCacheClient campaignCacheClient, Clock clock, ApiClient apiClient, AnalyticsEventsManager analyticsEventsManager, Schedulers schedulers, ImpressionStorageClient impressionStorageClient, RateLimiterClient rateLimiterClient, RateLimit rateLimit, TestDeviceHelper testDeviceHelper, FirebaseInstallationsApi firebaseInstallationsApi, DataCollectionHelper dataCollectionHelper, AbtIntegrationHelper abtIntegrationHelper, Executor executor) {
        return new InAppMessageStreamManager(kw1Var, kw1Var2, campaignCacheClient, clock, apiClient, analyticsEventsManager, schedulers, impressionStorageClient, rateLimiterClient, rateLimit, testDeviceHelper, firebaseInstallationsApi, dataCollectionHelper, abtIntegrationHelper, executor);
    }

    @Override // com.google.firebase.inappmessaging.dagger.internal.Factory, com.google.firebase.inappmessaging.dagger.internal.Provider, defpackage.ws6
    public InAppMessageStreamManager get() {
        return newInstance((kw1) this.appForegroundEventFlowableProvider.get(), (kw1) this.programmaticTriggerEventFlowableProvider.get(), (CampaignCacheClient) this.campaignCacheClientProvider.get(), (Clock) this.clockProvider.get(), (ApiClient) this.apiClientProvider.get(), (AnalyticsEventsManager) this.analyticsEventsManagerProvider.get(), (Schedulers) this.schedulersProvider.get(), (ImpressionStorageClient) this.impressionStorageClientProvider.get(), (RateLimiterClient) this.rateLimiterClientProvider.get(), (RateLimit) this.appForegroundRateLimitProvider.get(), (TestDeviceHelper) this.testDeviceHelperProvider.get(), (FirebaseInstallationsApi) this.firebaseInstallationsProvider.get(), (DataCollectionHelper) this.dataCollectionHelperProvider.get(), (AbtIntegrationHelper) this.abtIntegrationHelperProvider.get(), (Executor) this.blockingExecutorProvider.get());
    }
}
