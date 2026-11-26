package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.IntervalList;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: loaded from: classes.dex */
public final class PagerLayoutIntervalContent extends LazyLayoutIntervalContent<PagerIntervalContent> {
    private final IntervalList<PagerIntervalContent> intervals;
    private final nl3<Integer, Object> key;
    private final fm3<PagerScope, Integer, Composer, Integer, j59> pageContent;
    private final int pageCount;

    /* JADX WARN: Multi-variable type inference failed */
    public PagerLayoutIntervalContent(fm3<? super PagerScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var, nl3<? super Integer, ? extends Object> nl3Var, int i) {
        this.pageContent = fm3Var;
        this.key = nl3Var;
        this.pageCount = i;
        MutableIntervalList mutableIntervalList = new MutableIntervalList();
        mutableIntervalList.addInterval(i, new PagerIntervalContent(nl3Var, fm3Var));
        this.intervals = mutableIntervalList;
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public IntervalList<PagerIntervalContent> getIntervals() {
        return this.intervals;
    }

    public final nl3<Integer, Object> getKey() {
        return this.key;
    }

    public final fm3<PagerScope, Integer, Composer, Integer, j59> getPageContent() {
        return this.pageContent;
    }

    public final int getPageCount() {
        return this.pageCount;
    }
}
