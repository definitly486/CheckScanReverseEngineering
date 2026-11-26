package androidx.compose.foundation.lazy.grid;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridPrefetchStrategyKt {
    private static final int UnsetItemCount = -1;

    public static final LazyGridPrefetchStrategy LazyGridPrefetchStrategy(int i) {
        return new DefaultLazyGridPrefetchStrategy(i);
    }

    public static /* synthetic */ LazyGridPrefetchStrategy LazyGridPrefetchStrategy$default(int i, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 2;
        }
        return LazyGridPrefetchStrategy(i);
    }
}
