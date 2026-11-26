package androidx.compose.foundation.lazy;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.lazy.LazyItemScope;
import androidx.compose.foundation.lazy.LazyListIntervalContent;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.foundation.lazy.layout.MutableIntervalList;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ComposerKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.media3.muxer.WebmConstants;
import defpackage.dm3;
import defpackage.en4;
import defpackage.fm3;
import defpackage.j59;
import defpackage.nl3;
import defpackage.rf0;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListIntervalContent extends LazyLayoutIntervalContent<LazyListInterval> implements LazyListScope {
    public static final int $stable = 8;
    private MutableIntList _headerIndexes;
    private final MutableIntervalList<LazyListInterval> intervals = new MutableIntervalList<>();

    public LazyListIntervalContent(nl3<? super LazyListScope, j59> nl3Var) {
        nl3Var.invoke(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$0(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Object item$lambda$1(Object obj, int i) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 item$lambda$2(dm3 dm3Var, LazyItemScope lazyItemScope, int i, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & WebmConstants.MkvEbmlElement.TRACK_TYPE) != 130, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-857469575, i2, -1, "androidx.compose.foundation.lazy.LazyListIntervalContent.item.<anonymous> (LazyListIntervalContent.kt:56)");
            }
            dm3Var.invoke(lazyItemScope, composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 stickyHeader$lambda$1(fm3 fm3Var, int i, LazyItemScope lazyItemScope, Composer composer, int i2) {
        if ((i2 & 6) == 0) {
            i2 |= composer.changed(lazyItemScope) ? 4 : 2;
        }
        if (composer.shouldExecute((i2 & 19) != 18, i2 & 1)) {
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventStart(-1588696110, i2, -1, "androidx.compose.foundation.lazy.LazyListIntervalContent.stickyHeader.<anonymous> (LazyListIntervalContent.kt:70)");
            }
            fm3Var.invoke(lazyItemScope, Integer.valueOf(i), composer, Integer.valueOf(i2 & 14));
            if (ComposerKt.isTraceInProgress()) {
                ComposerKt.traceEventEnd();
            }
        } else {
            composer.skipToGroupEnd();
        }
        return j59.a;
    }

    public final IntList getHeaderIndexes() {
        MutableIntList mutableIntList = this._headerIndexes;
        return mutableIntList != null ? mutableIntList : IntListKt.emptyIntList();
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public void item(Object obj, Object obj2, final dm3<? super LazyItemScope, ? super Composer, ? super Integer, j59> dm3Var) {
        getIntervals().addInterval(1, new LazyListInterval(obj != null ? new rf0(obj, 1) : null, new en4(obj2, 0), ComposableLambdaKt.composableLambdaInstance(-857469575, true, new fm3() { // from class: fn4
            @Override // defpackage.fm3
            public final Object invoke(Object obj3, Object obj4, Object obj5, Object obj6) {
                int iIntValue = ((Integer) obj6).intValue();
                return LazyListIntervalContent.item$lambda$2(dm3Var, (LazyItemScope) obj3, ((Integer) obj4).intValue(), (Composer) obj5, iIntValue);
            }
        })));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public void items(int i, nl3<? super Integer, ? extends Object> nl3Var, nl3<? super Integer, ? extends Object> nl3Var2, fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        getIntervals().addInterval(i, new LazyListInterval(nl3Var, nl3Var2, fm3Var));
    }

    @Override // androidx.compose.foundation.lazy.LazyListScope
    public void stickyHeader(Object obj, Object obj2, final fm3<? super LazyItemScope, ? super Integer, ? super Composer, ? super Integer, j59> fm3Var) {
        MutableIntList mutableIntList = this._headerIndexes;
        int i = 1;
        if (mutableIntList == null) {
            mutableIntList = new MutableIntList(0, i, null);
            this._headerIndexes = mutableIntList;
        }
        mutableIntList.add(getIntervals().getSize());
        final int size = getIntervals().getSize();
        item(obj, obj2, ComposableLambdaKt.composableLambdaInstance(-1588696110, true, new dm3() { // from class: gn4
            @Override // defpackage.dm3
            public final Object invoke(Object obj3, Object obj4, Object obj5) {
                int iIntValue = ((Integer) obj5).intValue();
                return LazyListIntervalContent.stickyHeader$lambda$1(fm3Var, size, (LazyItemScope) obj3, (Composer) obj4, iIntValue);
            }
        }));
    }

    @Override // androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent
    public MutableIntervalList<LazyListInterval> getIntervals() {
        return this.intervals;
    }
}
