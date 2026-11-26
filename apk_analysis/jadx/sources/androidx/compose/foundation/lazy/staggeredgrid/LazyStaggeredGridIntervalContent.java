package androidx.compose.foundation.lazy.staggeredgrid;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent;
import androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridItemScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.bz0;
import defpackage.cz0;
import defpackage.dm3;
import defpackage.fm3;
import defpackage.fo4;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyStaggeredGridIntervalContent extends LazyLayoutIntervalContent<LazyStaggeredGridInterval> implements LazyStaggeredGridScope {
    public static final int $stable = 8;
    private final MutableIntervalList<LazyStaggeredGridInterval> intervals = new MutableIntervalList<>();
    private final LazyStaggeredGridSpanProvider spanProvider = new LazyStaggeredGridSpanProvider(getIntervals());

    public LazyStaggeredGridIntervalContent(nl3<? super LazyStaggeredGridScope, j59> nl3Var) {
        nl3Var.invoke(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$0$0(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$1(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final StaggeredGridItemSpan item$lambda$2$0(StaggeredGridItemSpan staggeredGridItemSpan, int i) {
        return staggeredGridItemSpan;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 item$lambda$3(dm3 dm3Var, LazyStaggeredGridItemScope lazyStaggeredGridItemScope, int i, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyStaggeredGridItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & WebmConstants.MkvEbmlElement.TRACK_TYPE) != 130, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(1062451479, i2, -1, "androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridIntervalContent.item.<anonymous> (LazyStaggeredGridIntervalContent.kt:44)");
            }
            dm3Var.invoke(lazyStaggeredGridItemScope, composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final LazyStaggeredGridSpanProvider getSpanProvider() {
        return this.spanProvider;
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope
    public void item(Object obj, Object obj2, StaggeredGridItemSpan staggeredGridItemSpan, final dm3<? super LazyStaggeredGridItemScope, ? super Composer, ? super Integer, j59> dm3Var) {
        items(1, obj != null ? new fo4(obj, 0) : null, new bz0(obj2, 2), staggeredGridItemSpan != null ? new cz0(staggeredGridItemSpan, 3) : null, ComposableLambdaKt.composableLambdaInstance(1062451479, true, new fm3() { // from class: go4
            @Override // defpackage.fm3
            public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return LazyStaggeredGridIntervalContent.item$lambda$3(dm3Var, (LazyStaggeredGridItemScope) obj3, ((Integer) obj4).intValue(), (Composer) obj5, iIntValue);
            }
        }));
    }

    @Override // androidx.compose.foundation.lazy.staggeredgrid.LazyStaggeredGridScope
    public void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, nl3<? super Integer, StaggeredGridItemSpan> nl3Var3, fm3<? super LazyStaggeredGridItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        getIntervals().addInterval(i, new LazyStaggeredGridInterval(nl3Var, nl3Var2, nl3Var3, fm3Var));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public MutableIntervalList<LazyStaggeredGridInterval> getIntervals() {
        return this.intervals;
    }
}
