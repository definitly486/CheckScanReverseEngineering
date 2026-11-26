package androidx.compose.foundation.lazy.grid;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.lazy.grid.LazyGridIntervalContent;
import androidx.compose.foundation.lazy.grid.LazyGridItemScope;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.bm3;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.nl3;
import defpackage.oh0;
import defpackage.ul4;
import defpackage.vl4;
import defpackage.xl4;
import defpackage.zc2;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridIntervalContent extends LazyLayoutIntervalContent<LazyGridInterval> implements LazyGridScope {
    private MutableIntList _headerIndexes;
    private boolean hasCustomSpans;
    private static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final bm3<LazyGridItemSpanScope, Integer, GridItemSpan> DefaultSpan = new xl4(0);
    private final LazyGridSpanLayoutProvider spanLayoutProvider = new LazyGridSpanLayoutProvider(this);
    private final MutableIntervalList<LazyGridInterval> intervals = new MutableIntervalList<>();

    public LazyGridIntervalContent(nl3<? super LazyGridScope, j59> nl3Var) {
        nl3Var.invoke(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GridItemSpan DefaultSpan$lambda$0(LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
        return GridItemSpan.m2171boximpl(LazyGridSpanKt.GridItemSpan(1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$0$0(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GridItemSpan item$lambda$1$0(nl3 nl3Var, LazyGridItemSpanScope lazyGridItemSpanScope, int i) {
        return (GridItemSpan) nl3Var.invoke(lazyGridItemSpanScope);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$2(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 item$lambda$3(dm3 dm3Var, LazyGridItemScope lazyGridItemScope, int i, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyGridItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & WebmConstants.MkvEbmlElement.TRACK_TYPE) != 130, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-291643851, i2, -1, "androidx.compose.foundation.lazy.grid.LazyGridIntervalContent.item.<anonymous> (LazyGridIntervalContent.kt:55)");
            }
            dm3Var.invoke(lazyGridItemScope, composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final GridItemSpan stickyHeader$lambda$1(LazyGridItemSpanScope lazyGridItemSpanScope) {
        return GridItemSpan.m2171boximpl(LazyGridSpanKt.GridItemSpan(lazyGridItemSpanScope.getMaxLineSpan()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 stickyHeader$lambda$2(fm3 fm3Var, int i, LazyGridItemScope lazyGridItemScope, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyGridItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(46791243, i2, -1, "androidx.compose.foundation.lazy.grid.LazyGridIntervalContent.stickyHeader.<anonymous> (LazyGridIntervalContent.kt:88)");
            }
            fm3Var.invoke(lazyGridItemScope, Integer.valueOf(i), composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final boolean getHasCustomSpans$foundation() {
        return this.hasCustomSpans;
    }

    public final IntList getHeaderIndexes() {
        MutableIntList mutableIntList = this._headerIndexes;
        return mutableIntList != null ? mutableIntList : IntListKt.emptyIntList();
    }

    public final LazyGridSpanLayoutProvider getSpanLayoutProvider$foundation() {
        return this.spanLayoutProvider;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void item(Object obj, nl3<? super LazyGridItemSpanScope, GridItemSpan> nl3Var, Object obj2, final dm3<? super LazyGridItemScope, ? super Composer, ? super Integer, j59> dm3Var) {
        MutableIntervalList<LazyGridInterval> intervals = getIntervals();
        oh0 oh0Var = obj != null ? new oh0(obj, 2) : null;
        int i = 0;
        intervals.addInterval(1, new LazyGridInterval(oh0Var, nl3Var != null ? new ul4(nl3Var, i) : DefaultSpan, new vl4(obj2, i), ComposableLambdaKt.composableLambdaInstance(-291643851, true, new fm3() { // from class: wl4
            @Override // defpackage.fm3
            public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return LazyGridIntervalContent.item$lambda$3(dm3Var, (LazyGridItemScope) obj3, ((Integer) obj4).intValue(), (Composer) obj5, iIntValue);
            }
        })));
        if (nl3Var != null) {
            this.hasCustomSpans = true;
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void items(int i, nl3<? super Integer, ? extends Object> nl3Var, bm3<? super LazyGridItemSpanScope, ? super Integer, GridItemSpan> bm3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        getIntervals().addInterval(i, new LazyGridInterval(nl3Var, bm3Var == null ? DefaultSpan : bm3Var, nl3Var2, fm3Var));
        if (bm3Var != null) {
            this.hasCustomSpans = true;
        }
    }

    public final void setHasCustomSpans$foundation(boolean z) {
        this.hasCustomSpans = z;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridScope
    public void stickyHeader(Object obj, Object obj2, final fm3<? super LazyGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        MutableIntList mutableIntList = this._headerIndexes;
        int i = 1;
        if (mutableIntList == null) {
            mutableIntList = new MutableIntList(0, i, null);
            this._headerIndexes = mutableIntList;
        }
        final int size = getIntervals().getSize();
        mutableIntList.add(size);
        item(obj, new zc2(4), obj2, ComposableLambdaKt.composableLambdaInstance(46791243, true, new dm3() { // from class: tl4
            @Override // defpackage.dm3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj5).intValue();
                return LazyGridIntervalContent.stickyHeader$lambda$2(fm3Var, size, (LazyGridItemScope) obj3, (Composer) obj4, iIntValue);
            }
        }));
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        public final bm3<LazyGridItemSpanScope, Integer, GridItemSpan> getDefaultSpan() {
            return LazyGridIntervalContent.DefaultSpan;
        }

        private Companion() {
        }
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public MutableIntervalList<LazyGridInterval> getIntervals() {
        return this.intervals;
    }
}
