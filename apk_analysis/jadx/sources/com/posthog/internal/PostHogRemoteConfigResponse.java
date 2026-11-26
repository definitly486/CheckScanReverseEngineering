package com.posthog.internal;

import defpackage.jh2;

/* JADX INFO: loaded from: classes4.dex */
public class PostHogRemoteConfigResponse {
    private final Object capturePerformance;
    private final Object errorTracking;
    private final Boolean hasFeatureFlags;
    private final Object sessionRecording;
    private final Object surveys;

    public /* synthetic */ PostHogRemoteConfigResponse(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? Boolean.FALSE : obj, (i & 2) != 0 ? Boolean.FALSE : obj2, (i & 4) != 0 ? Boolean.FALSE : bool, (i & 8) != 0 ? Boolean.FALSE : obj3, (i & 16) != 0 ? Boolean.FALSE : obj4);
    }

    public final Object getCapturePerformance() {
        return this.capturePerformance;
    }

    public final Object getErrorTracking() {
        return this.errorTracking;
    }

    public final Boolean getHasFeatureFlags() {
        return this.hasFeatureFlags;
    }

    public final Object getSessionRecording() {
        return this.sessionRecording;
    }

    public final Object getSurveys() {
        return this.surveys;
    }

    public PostHogRemoteConfigResponse(Object obj, Object obj2, Boolean bool, Object obj3, Object obj4) {
        this.sessionRecording = obj;
        this.surveys = obj2;
        this.hasFeatureFlags = bool;
        this.errorTracking = obj3;
        this.capturePerformance = obj4;
    }

    public PostHogRemoteConfigResponse() {
        this(null, null, null, null, null, 31, null);
    }
}
