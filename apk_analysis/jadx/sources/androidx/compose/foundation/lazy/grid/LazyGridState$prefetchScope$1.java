package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.lazy.grid.LazyGridState$prefetchScope$1;
import androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.unit.Constraints;
import androidx.media3.muxer.MuxerUtil;
import defpackage.b36;
import defpackage.j59;
import defpackage.nl3;
import defpackage.p07;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyGridState$prefetchScope$1 implements LazyGridPrefetchScope {
    final /* synthetic */ LazyGridState this$0;

    public LazyGridState$prefetchScope$1(LazyGridState lazyGridState) {
        this.this$0 = lazyGridState;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 scheduleLinePrefetch$lambda$0$0$0$0(List list, p07 p07Var, List list2, nl3 nl3Var, int i, LazyGridMeasureResult lazyGridMeasureResult, LazyLayoutPrefetchState.PrefetchResultScope prefetchResultScope) {
        int placeablesCount = prefetchResultScope.getPlaceablesCount();
        int iMo2230getSizeYEO4UFw = 0;
        for (int i2 = 0; i2 < placeablesCount; i2++) {
            iMo2230getSizeYEO4UFw += (int) (lazyGridMeasureResult.getOrientation() == Orientation.Vertical ? prefetchResultScope.mo2230getSizeYEO4UFw(i2) & MuxerUtil.UNSIGNED_INT_MAX_VALUE : prefetchResultScope.mo2230getSizeYEO4UFw(i2) >> 32);
        }
        if (list != null) {
            list.add(Integer.valueOf(iMo2230getSizeYEO4UFw));
        }
        if (p07Var.b != list2.size()) {
            p07Var.b++;
        } else if (nl3Var != null && list != null) {
            nl3Var.invoke(new LazyGridPrefetchResultScopeImpl(i, list));
        }
        return j59.a;
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchScope
    public List<LazyLayoutPrefetchState.PrefetchHandle> scheduleLinePrefetch(final int i, final nl3<? super LazyGridPrefetchResultScope, j59> nl3Var) {
        ArrayList arrayList = new ArrayList();
        final ArrayList arrayList2 = nl3Var == null ? null : new ArrayList();
        Snapshot.Companion companion = Snapshot.Companion;
        LazyGridState lazyGridState = this.this$0;
        Snapshot currentThreadSnapshot = companion.getCurrentThreadSnapshot();
        nl3<Object, j59> readObserver = currentThreadSnapshot != null ? currentThreadSnapshot.getReadObserver() : null;
        Snapshot snapshotMakeCurrentNonObservable = companion.makeCurrentNonObservable(currentThreadSnapshot);
        try {
            final LazyGridMeasureResult approachLayoutInfo$foundation = lazyGridState.getHasLookaheadOccurred$foundation() ? lazyGridState.getApproachLayoutInfo$foundation() : (LazyGridMeasureResult) lazyGridState.layoutInfoState.getValue();
            if (approachLayoutInfo$foundation != null) {
                final p07 p07Var = new p07();
                p07Var.b = 1;
                final List<b36<Integer, Constraints>> listInvoke = approachLayoutInfo$foundation.getPrefetchInfoRetriever().invoke(Integer.valueOf(i));
                int size = listInvoke.size();
                for (int i2 = 0; i2 < size; i2++) {
                    b36<Integer, Constraints> b36Var = listInvoke.get(i2);
                    arrayList.add(lazyGridState.getPrefetchState$foundation().m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(b36Var.b.intValue(), b36Var.c.m9001unboximpl(), lazyGridState.executeRequestsInHighPriorityMode, new nl3() { // from class: hm4
                        @Override // defpackage.nl3
                        public final Object invoke(Object obj) {
                            return LazyGridState$prefetchScope$1.scheduleLinePrefetch$lambda$0$0$0$0(arrayList2, p07Var, listInvoke, nl3Var, i, approachLayoutInfo$foundation, (LazyLayoutPrefetchState.PrefetchResultScope) obj);
                        }
                    }));
                }
                j59 j59Var = j59.a;
            }
            return arrayList;
        } finally {
            companion.restoreNonObservable(currentThreadSnapshot, snapshotMakeCurrentNonObservable, readObserver);
        }
    }

    @Override // androidx.compose.foundation.lazy.grid.LazyGridPrefetchScope
    public List<LazyLayoutPrefetchState.PrefetchHandle> scheduleLinePrefetch(int i) {
        return scheduleLinePrefetch(i, null);
    }
}
