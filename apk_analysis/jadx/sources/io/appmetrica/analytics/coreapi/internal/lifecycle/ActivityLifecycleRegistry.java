package io.appmetrica.analytics.coreapi.internal.lifecycle;

/* JADX INFO: loaded from: classes5.dex */
public interface ActivityLifecycleRegistry {
    void registerListener(ActivityLifecycleListener activityLifecycleListener, ActivityEvent... activityEventArr);

    void unregisterListener(ActivityLifecycleListener activityLifecycleListener, ActivityEvent... activityEventArr);
}
