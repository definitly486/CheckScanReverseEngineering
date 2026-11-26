package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.LazyListState$prefetchScope$1;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.media3.muxer.MuxerUtil;
import defpackage.j59;
import defpackage.nl3;

/* JADX INFO: loaded from: classes.dex */
public final class LazyListState$prefetchScope$1 implements LazyListPrefetchScope {
    final /* synthetic */ LazyListState this$0;

    public LazyListState$prefetchScope$1(LazyListState lazyListState) {
        this.this$0 = lazyListState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 schedulePrefetch$lambda$1(nl3 nl3Var, int i, LazyListMeasureResult lazyListMeasureResult, LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope) {
        if (nl3Var != null) {
            int placeablesCount = prefetchResultScope.getPlaceablesCount();
            int iMo2230getSizeYEO4UFw = 0;
            for (int i2 = 0; i2 < placeablesCount; i2++) {
                iMo2230getSizeYEO4UFw += (int) (lazyListMeasureResult.getOrientation() == Orientation.Vertical ? prefetchResultScope.mo2230getSizeYEO4UFw(i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE : prefetchResultScope.mo2230getSizeYEO4UFw(i2) >> 32);
            }
            nl3Var.invoke(new LazyListPrefetchResultScopeImpl(i, iMo2230getSizeYEO4UFw));
        }
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.LazyListPrefetchScope
    public LazyLayoutPrefetchState.PrefetchHandle schedulePrefetch(final int i, final nl3<? super LazyListPrefetchResultScope, j59> nl3Var) {
        Snapshot.Companion companion = Snapshot.Companion;
        LazyListState lazyListState = this.this$0;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            final LazyListMeasureResult lazyListMeasureResult = (LazyListMeasureResult) lazyListState.layoutInfoState.getValue();
            return this.this$0.getPrefetchState$foundation().m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, lazyListMeasureResult.m2160getChildConstraintsmsEJaDk(), this.this$0.executeRequestsInHighPriorityMode, new nl3() { // from class: sn4
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return LazyListState$prefetchScope$1.schedulePrefetch$lambda$1(nl3Var, i, lazyListMeasureResult, (LazyLayoutPrefetchState.PrefetchResultScope) obj);
                }
            });
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }
}
