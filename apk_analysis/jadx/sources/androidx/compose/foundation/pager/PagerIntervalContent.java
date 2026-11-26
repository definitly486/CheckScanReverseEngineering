package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.Composer;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class PagerIntervalContent implements LazyLayoutIntervalContent.Interval {
    public static final int $stable = 0;
    private final fm3<PagerScope, Integer, Composer, Integer, j59> item;
    private final nl3<Integer, Object> key;

    /* JADX WARN: Multi-variable type inference failed */
    public PagerIntervalContent(nl3<? super Integer, ? extends Object> nl3Var, fm3<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        this.key = nl3Var;
        this.item = fm3Var;
    }

    public final fm3<PagerScope, Integer, Composer, Integer, j59> getItem() {
        return this.item;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval
    public nl3<Integer, Object> getKey() {
        return this.key;
    }
}
