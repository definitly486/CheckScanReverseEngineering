package androidx.compose.foundation.lazy.grid;

import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
@LazyGridScopeMarker
public interface LazyGridScope {
    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void item$default(LazyGridScope lazyGridScope, Object obj, nl3 nl3Var, Object obj2, dm3 dm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: item");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            nl3Var = null;
        }
        if ((i & 4) != 0) {
            obj2 = null;
        }
        lazyGridScope.item(obj, nl3Var, obj2, dm3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void items$default(LazyGridScope lazyGridScope, int i, nl3 nl3Var, bm3 bm3Var, nl3 nl3Var2, fm3 fm3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: items");
            return;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        if ((i2 & 4) != 0) {
            bm3Var = null;
        }
        if ((i2 & 8) != 0) {
            nl3Var2 = new nl3() { // from class: androidx.compose.foundation.lazy.grid.LazyGridScope.items.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }

                public final Void invoke(int i3) {
                    return null;
                }
            };
        }
        lazyGridScope.items(i, nl3Var, bm3Var, nl3Var2, fm3Var);
    }

    static /* synthetic */ void stickyHeader$default(LazyGridScope lazyGridScope, Object obj, Object obj2, fm3 fm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: stickyHeader");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        lazyGridScope.stickyHeader(obj, obj2, fm3Var);
    }

    void item(Object obj, nl3<? super LazyGridItemSpanScope, GridItemSpan> nl3Var, Object obj2, dm3<? super LazyGridItemScope, ? super Composer, ? super Integer, j59> dm3Var);

    void items(int i, nl3<? super Integer, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> bm3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var);

    void stickyHeader(Object obj, Object obj2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var);
}
