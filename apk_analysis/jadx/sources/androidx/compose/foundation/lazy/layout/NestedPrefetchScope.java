package androidx.compose.foundation.lazy.layout;

import defpackage.ul2;

/* JADX INFO: loaded from: classes.dex */
public interface NestedPrefetchScope {
    default int getNestedPrefetchItemCount() {
        return -1;
    }

    void schedulePrecomposition(int i);

    /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-0kLqBqw */
    void mo2229schedulePrecompositionAndPremeasure0kLqBqw(int i, long j);

    @ul2
    default void schedulePrefetch(int i) {
        schedulePrecomposition(i);
    }

    @ul2
    /* JADX INFO: renamed from: schedulePrefetch-0kLqBqw, reason: not valid java name */
    default void m2231schedulePrefetch0kLqBqw(int i, long j) {
        mo2229schedulePrecompositionAndPremeasure0kLqBqw(i, j);
    }
}
