package defpackage;

import androidx.compose.foundation.lazy.LazyListCacheWindowScope;
import androidx.compose.foundation.lazy.LazyListPrefetchResultScope;
import yads.jk1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class dn4 implements nl3 {
    public final /* synthetic */ int b;
    public final /* synthetic */ bm3 c;

    public /* synthetic */ dn4(int i, bm3 bm3Var) {
        this.b = i;
        this.c = bm3Var;
    }

    @Override // defpackage.nl3
    public final Object invoke(Object obj) {
        int i = this.b;
        bm3 bm3Var = this.c;
        switch (i) {
            case 0:
                return LazyListCacheWindowScope.schedulePrefetch$lambda$0(bm3Var, (LazyListPrefetchResultScope) obj);
            default:
                return jk1.c(bm3Var, (Exception) obj);
        }
    }
}
