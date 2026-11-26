package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.Composer;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridInterval implements LazyLayoutIntervalContent.Interval {
    public static final int $stable = 0;
    private final fm3<LazyStaggeredGridItemScope, Integer, Composer, Integer, j59> item;
    private final nl3<Integer, Object> key;
    private final nl3<Integer, StaggeredGridItemSpan> span;
    private final nl3<Integer, Object> type;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyStaggeredGridInterval(nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, nl3<? super Integer, StaggeredGridItemSpan> nl3Var3, fm3<? super LazyStaggeredGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        this.key = nl3Var;
        this.type = nl3Var2;
        this.span = nl3Var3;
        this.item = fm3Var;
    }

    public final fm3<LazyStaggeredGridItemScope, Integer, Composer, Integer, j59> getItem() {
        return this.item;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public nl3<Integer, Object> getKey() {
        return this.key;
    }

    public final nl3<Integer, StaggeredGridItemSpan> getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public nl3<Integer, Object> getType() {
        return this.type;
    }
}
