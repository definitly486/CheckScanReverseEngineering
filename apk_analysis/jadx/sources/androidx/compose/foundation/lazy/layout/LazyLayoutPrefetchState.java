package androidx.compose.foundation.lazy.layout;

import defpackage.j59;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.nl3;
import defpackage.ul2;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class LazyLayoutPrefetchState {
    public static final int $stable = 0;
    private int idealNestedPrefetchCount;
    private int lastNumberOfNestedPrefetchItems;
    private nl3<? super NestedPrefetchScope, j59> onNestedPrefetch;
    private PrefetchHandleProvider prefetchHandleProvider;
    private final PrefetchMetrics prefetchMetrics;
    private PrefetchScheduler prefetchScheduler;
    private int realizedNestedPrefetchCount;

    public final class NestedPrefetchScopeImpl implements NestedPrefetchScope {
        private final List<PrefetchRequest> _requests = new ArrayList();
        private final int nestedPrefetchItemCount;

        public NestedPrefetchScopeImpl(int i) {
            this.nestedPrefetchItemCount = i;
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public int getNestedPrefetchItemCount() {
            return this.nestedPrefetchItemCount;
        }

        public final List<PrefetchRequest> getRequests() {
            return this._requests;
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        public void schedulePrecomposition(int i) {
            PrefetchHandleProvider prefetchHandleProvider$foundation = LazyLayoutPrefetchState.this.getPrefetchHandleProvider$foundation();
            if (prefetchHandleProvider$foundation == null) {
                return;
            }
            this._requests.add(prefetchHandleProvider$foundation.createNestedPrefetchRequest(i, LazyLayoutPrefetchState.this.prefetchMetrics));
        }

        @Override // androidx.compose.foundation.lazy.layout.NestedPrefetchScope
        /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-0kLqBqw, reason: not valid java name */
        public void mo2229schedulePrecompositionAndPremeasure0kLqBqw(int i, long j) {
            PrefetchHandleProvider prefetchHandleProvider$foundation = LazyLayoutPrefetchState.this.getPrefetchHandleProvider$foundation();
            if (prefetchHandleProvider$foundation == null) {
                return;
            }
            this._requests.add(prefetchHandleProvider$foundation.m2242createNestedPrefetchRequestVKLhPVY(i, j, LazyLayoutPrefetchState.this.prefetchMetrics));
        }
    }

    public interface PrefetchHandle {
        void cancel();

        void markAsUrgent();
    }

    public interface PrefetchResultScope {
        int getIndex();

        int getPlaceablesCount();

        /* JADX INFO: renamed from: getSize-YEO4UFw, reason: not valid java name */
        long mo2230getSizeYEO4UFw(int i);
    }

    public LazyLayoutPrefetchState() {
        this.prefetchMetrics = new PrefetchMetrics();
        this.realizedNestedPrefetchCount = -1;
        this.idealNestedPrefetchCount = -1;
    }

    private static /* synthetic */ void getOnNestedPrefetch$annotations() {
    }

    public static /* synthetic */ void getPrefetchHandleProvider$foundation$annotations() {
    }

    public static /* synthetic */ void getPrefetchScheduler$foundation$annotations() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-VKLhPVY$default, reason: not valid java name */
    public static /* synthetic */ PrefetchHandle m2225schedulePrecompositionAndPremeasureVKLhPVY$default(LazyLayoutPrefetchState lazyLayoutPrefetchState, int i, long j, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            nl3Var = null;
        }
        return lazyLayoutPrefetchState.m2227schedulePrecompositionAndPremeasureVKLhPVY(i, j, nl3Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-_EkL_-Y$foundation$default, reason: not valid java name */
    public static /* synthetic */ PrefetchHandle m2226schedulePrecompositionAndPremeasure_EkL_Y$foundation$default(LazyLayoutPrefetchState lazyLayoutPrefetchState, int i, long j, boolean z, nl3 nl3Var, int i2, Object obj) {
        if ((i2 & 8) != 0) {
            nl3Var = null;
        }
        return lazyLayoutPrefetchState.m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, j, z, nl3Var);
    }

    public final List<PrefetchRequest> collectNestedPrefetchRequests$foundation() {
        nl3<? super NestedPrefetchScope, j59> nl3Var = this.onNestedPrefetch;
        if (nl3Var == null) {
            return kx2.b;
        }
        NestedPrefetchScopeImpl nestedPrefetchScopeImpl = new NestedPrefetchScopeImpl(this.realizedNestedPrefetchCount);
        nl3Var.invoke(nestedPrefetchScopeImpl);
        List<PrefetchRequest> requests = nestedPrefetchScopeImpl.getRequests();
        this.lastNumberOfNestedPrefetchItems = requests.size();
        return requests;
    }

    public final int getIdealNestedPrefetchCount$foundation() {
        return this.idealNestedPrefetchCount;
    }

    public final int getLastNumberOfNestedPrefetchItems$foundation() {
        return this.lastNumberOfNestedPrefetchItems;
    }

    public final PrefetchHandleProvider getPrefetchHandleProvider$foundation() {
        return this.prefetchHandleProvider;
    }

    public final PrefetchScheduler getPrefetchScheduler$foundation() {
        return this.prefetchScheduler;
    }

    public final int getRealizedNestedPrefetchCount$foundation() {
        return this.realizedNestedPrefetchCount;
    }

    public final PrefetchHandle schedulePrecomposition(int i) {
        return schedulePrecomposition$foundation(i, true);
    }

    public final PrefetchHandle schedulePrecomposition$foundation(int i, boolean z) {
        PrefetchHandle prefetchHandleSchedulePrecomposition;
        PrefetchHandleProvider prefetchHandleProvider = this.prefetchHandleProvider;
        return (prefetchHandleProvider == null || (prefetchHandleSchedulePrecomposition = prefetchHandleProvider.schedulePrecomposition(i, z, this.prefetchMetrics)) == null) ? DummyHandle.INSTANCE : prefetchHandleSchedulePrecomposition;
    }

    /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-VKLhPVY, reason: not valid java name */
    public final PrefetchHandle m2227schedulePrecompositionAndPremeasureVKLhPVY(int i, long j, nl3<? super PrefetchResultScope, j59> nl3Var) {
        return m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(i, j, true, nl3Var);
    }

    /* JADX INFO: renamed from: schedulePrecompositionAndPremeasure-_EkL_-Y$foundation, reason: not valid java name */
    public final PrefetchHandle m2228schedulePrecompositionAndPremeasure_EkL_Y$foundation(int i, long j, boolean z, nl3<? super PrefetchResultScope, j59> nl3Var) {
        PrefetchHandle prefetchHandleM2243schedulePremeasurem8Kt_7k;
        PrefetchHandleProvider prefetchHandleProvider = this.prefetchHandleProvider;
        return (prefetchHandleProvider == null || (prefetchHandleM2243schedulePremeasurem8Kt_7k = prefetchHandleProvider.m2243schedulePremeasurem8Kt_7k(i, j, this.prefetchMetrics, z, nl3Var)) == null) ? DummyHandle.INSTANCE : prefetchHandleM2243schedulePremeasurem8Kt_7k;
    }

    public final void setIdealNestedPrefetchCount$foundation(int i) {
        this.idealNestedPrefetchCount = i;
    }

    public final void setLastNumberOfNestedPrefetchItems$foundation(int i) {
        this.lastNumberOfNestedPrefetchItems = i;
    }

    public final void setPrefetchHandleProvider$foundation(PrefetchHandleProvider prefetchHandleProvider) {
        this.prefetchHandleProvider = prefetchHandleProvider;
    }

    public final void setPrefetchScheduler$foundation(PrefetchScheduler prefetchScheduler) {
        this.prefetchScheduler = prefetchScheduler;
    }

    public final void setRealizedNestedPrefetchCount$foundation(int i) {
        this.realizedNestedPrefetchCount = i;
    }

    public /* synthetic */ LazyLayoutPrefetchState(PrefetchScheduler prefetchScheduler, nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : prefetchScheduler, (i & 2) != 0 ? null : nl3Var);
    }

    @ul2
    public LazyLayoutPrefetchState(PrefetchScheduler prefetchScheduler, nl3<? super NestedPrefetchScope, j59> nl3Var) {
        this();
        this.prefetchScheduler = prefetchScheduler;
        this.onNestedPrefetch = nl3Var;
    }

    public LazyLayoutPrefetchState(nl3<? super NestedPrefetchScope, j59> nl3Var) {
        this();
        this.onNestedPrefetch = nl3Var;
    }

    public /* synthetic */ LazyLayoutPrefetchState(nl3 nl3Var, int i, jh2 jh2Var) {
        this((i & 1) != 0 ? null : nl3Var);
    }
}
