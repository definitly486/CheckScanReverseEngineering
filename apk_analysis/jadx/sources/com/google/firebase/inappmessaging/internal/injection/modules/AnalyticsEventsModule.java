package com.google.firebase.inappmessaging.internal.injection.modules;

import com.google.firebase.analytics.connector.AnalyticsConnector;
import com.google.firebase.inappmessaging.dagger.Module;
import com.google.firebase.inappmessaging.dagger.Provides;
import com.google.firebase.inappmessaging.internal.AnalyticsEventsManager;
import com.google.firebase.inappmessaging.internal.injection.qualifiers.AnalyticsListener;
import defpackage.kw1;

/* JADX INFO: loaded from: classes4.dex */
@Module
public class AnalyticsEventsModule {
    @Provides
    @AnalyticsListener
    public kw1<String> providesAnalyticsConnectorEvents(AnalyticsEventsManager analyticsEventsManager) {
        return analyticsEventsManager.getAnalyticsEventsFlowable();
    }

    @Provides
    public AnalyticsEventsManager providesAnalyticsEventsManager(AnalyticsConnector analyticsConnector) {
        return new AnalyticsEventsManager(analyticsConnector);
    }
}
