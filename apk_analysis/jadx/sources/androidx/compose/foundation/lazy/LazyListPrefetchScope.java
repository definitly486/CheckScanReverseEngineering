package androidx.compose.foundation.lazy;

import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public interface LazyListPrefetchScope {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch$default(LazyListPrefetchScope lazyListPrefetchScope, int i, nl3 nl3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: schedulePrefetch");
            return null;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        return lazyListPrefetchScope.schedulePrefetch(i, nl3Var);
    }

    LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch(int i, nl3<? super LazyListPrefetchResultScope, j59> nl3Var);
}
