package com.google.firebase.inappmessaging;

import com.google.protobuf.a0;
import defpackage.fx0;
import defpackage.ha5;

/* JADX INFO: loaded from: classes4.dex */
public interface CampaignAnalyticsOrBuilder extends ha5 {
    String getCampaignId();

    fx0 getCampaignIdBytes();

    ClientAppInfo getClientApp();

    long getClientTimestampMillis();

    @Override // defpackage.ha5
    /* synthetic */ a0 getDefaultInstanceForType();

    DismissType getDismissType();

    int getEngagementMetricsDeliveryRetryCount();

    CampaignAnalytics.EventCase getEventCase();

    EventType getEventType();

    FetchErrorReason getFetchErrorReason();

    String getFiamSdkVersion();

    fx0 getFiamSdkVersionBytes();

    String getProjectNumber();

    fx0 getProjectNumberBytes();

    RenderErrorReason getRenderErrorReason();

    boolean hasCampaignId();

    boolean hasClientApp();

    boolean hasClientTimestampMillis();

    boolean hasDismissType();

    boolean hasEngagementMetricsDeliveryRetryCount();

    boolean hasEventType();

    boolean hasFetchErrorReason();

    boolean hasFiamSdkVersion();

    boolean hasProjectNumber();

    boolean hasRenderErrorReason();

    @Override // defpackage.ha5
    /* synthetic */ boolean isInitialized();
}
