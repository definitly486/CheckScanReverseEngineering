package com.google.firebase.inappmessaging.internal.injection.components;

import android.app.Application;
import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.events.Subscriber;
import com.google.firebase.inappmessaging.dagger.Component;
import com.google.firebase.inappmessaging.internal.AnalyticsEventsManager;
import com.google.firebase.inappmessaging.internal.CampaignCacheClient;
import com.google.firebase.inappmessaging.internal.DeveloperListenerManager;
import com.google.firebase.inappmessaging.internal.ImpressionStorageClient;
import com.google.firebase.inappmessaging.internal.ProgramaticContextualTriggers;
import com.google.firebase.inappmessaging.internal.ProviderInstaller;
import com.google.firebase.inappmessaging.internal.RateLimiterClient;
import com.google.firebase.inappmessaging.internal.Schedulers;
import com.google.firebase.inappmessaging.internal.injection.modules.AnalyticsEventsModule;
import com.google.firebase.inappmessaging.internal.injection.modules.AppMeasurementModule;
import com.google.firebase.inappmessaging.internal.injection.modules.ApplicationModule;
import com.google.firebase.inappmessaging.internal.injection.modules.ExecutorsModule;
import com.google.firebase.inappmessaging.internal.injection.modules.ForegroundFlowableModule;
import com.google.firebase.inappmessaging.internal.injection.modules.GrpcChannelModule;
import com.google.firebase.inappmessaging.internal.injection.modules.ProgrammaticContextualTriggerFlowableModule;
import com.google.firebase.inappmessaging.internal.injection.modules.ProtoStorageClientModule;
import com.google.firebase.inappmessaging.internal.injection.modules.RateLimitModule;
import com.google.firebase.inappmessaging.internal.injection.modules.SchedulerModule;
import com.google.firebase.inappmessaging.internal.injection.modules.SystemClockModule;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AnalyticsListener;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AppForeground;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.ProgrammaticTrigger;
import com.google.firebase.inappmessaging.internal.time.Clock;
import com.google.firebase.inappmessaging.model.ProtoMarshallerClient;
import com.google.firebase.inappmessaging.model.RateLimit;
import defpackage.kw1;
import defpackage.y81;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes4.dex */
@Component(modules = {GrpcChannelModule.class, SchedulerModule.class, ApplicationModule.class, ForegroundFlowableModule.class, ProgrammaticContextualTriggerFlowableModule.class, AnalyticsEventsModule.class, ProtoStorageClientModule.class, SystemClockModule.class, RateLimitModule.class, AppMeasurementModule.class, ExecutorsModule.class})
public interface UniversalComponent {
    AnalyticsConnector analyticsConnector();

    @AnalyticsListener
    kw1<String> analyticsEventsFlowable();

    AnalyticsEventsManager analyticsEventsManager();

    @AppForeground
    kw1<String> appForegroundEventFlowable();

    @AppForeground
    RateLimit appForegroundRateLimit();

    Application application();

    Executor blockingExecutor();

    CampaignCacheClient campaignCacheClient();

    Clock clock();

    DeveloperListenerManager developerListenerManager();

    Subscriber firebaseEventsSubscriber();

    y81 gRPCChannel();

    ImpressionStorageClient impressionStorageClient();

    Executor lightWeightExecutor();

    @ProgrammaticTrigger
    kw1<String> programmaticContextualTriggerFlowable();

    @ProgrammaticTrigger
    ProgramaticContextualTriggers programmaticContextualTriggers();

    ProtoMarshallerClient protoMarshallerClient();

    ProviderInstaller providerInstaller();

    RateLimiterClient rateLimiterClient();

    Schedulers schedulers();
}
