package androidx.compose.foundation.lazy.layout;

/* JADX INFO: loaded from: classes.dex */
public interface PriorityPrefetchScheduler extends PrefetchScheduler {
    void scheduleHighPriorityPrefetch(PrefetchRequest prefetchRequest);

    void scheduleLowPriorityPrefetch(PrefetchRequest prefetchRequest);

    @Override // androidx.compose.foundation.lazy.layout.PrefetchScheduler
    default void schedulePrefetch(PrefetchRequest prefetchRequest) {
        scheduleHighPriorityPrefetch(prefetchRequest);
    }
}
