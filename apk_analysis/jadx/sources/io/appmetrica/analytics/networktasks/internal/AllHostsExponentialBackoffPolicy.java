package io.appmetrica.analytics.networktasks.internal;

/* JADX INFO: loaded from: classes5.dex */
public final class AllHostsExponentialBackoffPolicy implements ExponentialBackoffPolicy {
    private final ExponentialBackoffDataHolder a;

    public AllHostsExponentialBackoffPolicy(ExponentialBackoffDataHolder exponentialBackoffDataHolder) {
        this.a = exponentialBackoffDataHolder;
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public boolean canBeExecuted(RetryPolicyConfig retryPolicyConfig) {
        return this.a.wasLastAttemptLongAgoEnough(retryPolicyConfig);
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public void onAllHostsAttemptsFinished(boolean z) {
        ExponentialBackoffDataHolder exponentialBackoffDataHolder = this.a;
        if (z) {
            exponentialBackoffDataHolder.reset();
        } else {
            exponentialBackoffDataHolder.updateLastAttemptInfo();
        }
    }

    @Override // io.appmetrica.analytics.networktasks.internal.ExponentialBackoffPolicy
    public void onHostAttemptFinished(boolean z) {
    }
}
