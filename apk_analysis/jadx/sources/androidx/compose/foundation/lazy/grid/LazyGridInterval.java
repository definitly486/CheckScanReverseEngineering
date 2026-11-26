package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.Composer;
import defpackage.bm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridInterval implements LazyLayoutIntervalContent.Interval {
    public static final int $stable = 0;
    private final fm3<LazyGridItemScope, Integer, Composer, Integer, j59> item;
    private final nl3<Integer, Object> key;
    private final bm3<LazyGridItemSpanScope, Integer, GridItemSpan> span;
    private final nl3<Integer, Object> type;

    /* JADX WARN: Multi-variable type inference failed */
    public LazyGridInterval(nl3<? super Integer, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> bm3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        this.key = nl3Var;
        this.span = bm3Var;
        this.type = nl3Var2;
        this.item = fm3Var;
    }

    public final fm3<LazyGridItemScope, Integer, Composer, Integer, j59> getItem() {
        return this.item;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public nl3<Integer, Object> getKey() {
        return this.key;
    }

    public final bm3<LazyGridItemSpanScope, Integer, GridItemSpan> getSpan() {
        return this.span;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public nl3<Integer, Object> getType() {
        return this.type;
    }
}
