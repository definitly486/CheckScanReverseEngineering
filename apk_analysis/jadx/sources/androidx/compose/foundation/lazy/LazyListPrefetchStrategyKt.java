package androidx.compose.foundation.lazy;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListPrefetchStrategyKt {
    private static final int UnsetItemCount = -1;

    public static final LazyListPrefetchStrategy LazyListPrefetchStrategy(int i) {
        return new DefaultLazyListPrefetchStrategy(i);
    }

    public static /* synthetic */ LazyListPrefetchStrategy LazyListPrefetchStrategy$default(int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return LazyListPrefetchStrategy(i);
    }
}
