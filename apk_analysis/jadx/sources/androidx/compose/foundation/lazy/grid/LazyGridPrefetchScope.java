package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import defpackage.j59;
import defpackage.nl3;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public interface LazyGridPrefetchScope {
    List<LazyLayoutPrefetchState.PrefetchHandle> scheduleLinePrefetch(int i);

    default List<LazyLayoutPrefetchState.PrefetchHandle> scheduleLinePrefetch(int i, nl3<? super LazyGridPrefetchResultScope, j59> nl3Var) {
        return scheduleLinePrefetch(i);
    }
}
