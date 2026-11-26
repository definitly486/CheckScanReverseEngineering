package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.runtime.Composer;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.n1;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
@LazyStaggeredGridScopeMarker
public interface LazyStaggeredGridScope {
    static /* synthetic */ void item$default(LazyStaggeredGridScope lazyStaggeredGridScope, Object obj, Object obj2, StaggeredGridItemSpan staggeredGridItemSpan, dm3 dm3Var, int i, Object obj3) {
        if (obj3 != null) {
            n1.e("Super calls with default arguments not supported in this target, function: item");
            return;
        }
        if ((i & 1) != 0) {
            obj = null;
        }
        if ((i & 2) != 0) {
            obj2 = null;
        }
        if ((i & 4) != 0) {
            staggeredGridItemSpan = null;
        }
        lazyStaggeredGridScope.item(obj, obj2, staggeredGridItemSpan, dm3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void items$default(LazyStaggeredGridScope lazyStaggeredGridScope, int i, nl3 nl3Var, nl3 nl3Var2, nl3 nl3Var3, fm3 fm3Var, int i2, Object obj) {
        if (obj != null) {
            n1.e("Super calls with default arguments not supported in this target, function: items");
            return;
        }
        if ((i2 & 2) != 0) {
            nl3Var = null;
        }
        if ((i2 & 4) != 0) {
            nl3Var2 = new nl3() { // from class: androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope.items.1
                @Override // defpackage.nl3
                public /* bridge */ /* synthetic */ Object invoke(Object obj2) {
                    return invoke(((Number) obj2).intValue());
                }

                public final Void invoke(int i3) {
                    return null;
                }
            };
        }
        if ((i2 & 8) != 0) {
            nl3Var3 = null;
        }
        lazyStaggeredGridScope.items(i, nl3Var, nl3Var2, nl3Var3, fm3Var);
    }

    void item(Object obj, Object obj2, StaggeredGridItemSpan staggeredGridItemSpan, dm3<? super LazyStaggeredGridItemScope, ? super Composer, ? super Integer, j59> dm3Var);

    void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, nl3<? super Integer, StaggeredGridItemSpan> nl3Var3, fm3<? super LazyStaggeredGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var);
}
