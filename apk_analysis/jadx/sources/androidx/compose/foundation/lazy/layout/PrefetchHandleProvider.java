package androidx.compose.foundation.lazy.layout;

import android.os.Trace;
import androidx.compose.foundation.ComposeFoundationFlags;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.ShouldPauseCallback;
import androidx.compose.ui.layout.SubcomposeLayoutState;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.util.AndroidTrace_androidKt;
import defpackage.aa4;
import defpackage.bm3;
import defpackage.dd5;
import defpackage.dh;
import defpackage.fg;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ng;
import defpackage.nl3;
import defpackage.qv8;
import defpackage.r07;
import defpackage.u96;
import defpackage.wt2;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public final class PrefetchHandleProvider {
    public static final int $stable = 8;
    private final PrefetchScheduler executor;
    private boolean isStateActive = true;
    private final LazyLayoutItemContentFactory itemContentFactory;
    private boolean shouldPauseBetweenPrecompositionAndPremeasure;
    private final SubcomposeLayoutState subcomposeLayoutState;

    public PrefetchHandleProvider(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeLayoutState subcomposeLayoutState, PrefetchScheduler prefetchScheduler) {
        this.itemContentFactory = lazyLayoutItemContentFactory;
        this.subcomposeLayoutState = subcomposeLayoutState;
        this.executor = prefetchScheduler;
    }

    public static /* synthetic */ void getShouldPauseBetweenPrecompositionAndPremeasure$foundation$annotations() {
    }

    public final PrefetchRequest createNestedPrefetchRequest(int i, PrefetchMetrics prefetchMetrics) {
        PrefetchScheduler prefetchScheduler = this.executor;
        return new HandleAndRequestImpl(i, prefetchMetrics, prefetchScheduler instanceof PriorityPrefetchScheduler ? (PriorityPrefetchScheduler) prefetchScheduler : null, null);
    }

    /* JADX INFO: renamed from: createNestedPrefetchRequest-VKLhPVY, reason: not valid java name */
    public final PrefetchRequest m2242createNestedPrefetchRequestVKLhPVY(int i, long j, PrefetchMetrics prefetchMetrics) {
        PrefetchScheduler prefetchScheduler = this.executor;
        return new HandleAndRequestImpl(this, i, j, prefetchMetrics, prefetchScheduler instanceof PriorityPrefetchScheduler ? (PriorityPrefetchScheduler) prefetchScheduler : null, null, null);
    }

    public final void executeWithPriority(PrefetchScheduler prefetchScheduler, PrefetchRequest prefetchRequest, boolean z) {
        if (!(prefetchScheduler instanceof PriorityPrefetchScheduler)) {
            prefetchScheduler.schedulePrefetch(prefetchRequest);
        } else if (z) {
            ((PriorityPrefetchScheduler) prefetchScheduler).scheduleHighPriorityPrefetch(prefetchRequest);
        } else {
            ((PriorityPrefetchScheduler) prefetchScheduler).scheduleLowPriorityPrefetch(prefetchRequest);
        }
    }

    public final boolean getShouldPauseBetweenPrecompositionAndPremeasure$foundation() {
        return this.shouldPauseBetweenPrecompositionAndPremeasure;
    }

    public final void onDisposed() {
        this.isStateActive = false;
    }

    public final LazyLayoutPrefetchState.PrefetchHandle schedulePrecomposition(int i, boolean z, PrefetchMetrics prefetchMetrics) {
        PrefetchScheduler prefetchScheduler = this.executor;
        HandleAndRequestImpl handleAndRequestImpl = new HandleAndRequestImpl(i, prefetchMetrics, prefetchScheduler instanceof PriorityPrefetchScheduler ? (PriorityPrefetchScheduler) prefetchScheduler : null, null);
        executeWithPriority(this.executor, handleAndRequestImpl, z);
        AndroidTrace_androidKt.traceValue("compose:lazy:schedule_prefetch:index", i);
        return handleAndRequestImpl;
    }

    /* JADX INFO: renamed from: schedulePremeasure-m8Kt_7k, reason: not valid java name */
    public final LazyLayoutPrefetchState.PrefetchHandle m2243schedulePremeasurem8Kt_7k(int i, long j, PrefetchMetrics prefetchMetrics, boolean z, nl3<? super LazyLayoutPrefetchState.PrefetchResultScope, j59> nl3Var) {
        PrefetchScheduler prefetchScheduler = this.executor;
        HandleAndRequestImpl handleAndRequestImpl = new HandleAndRequestImpl(this, i, j, prefetchMetrics, prefetchScheduler instanceof PriorityPrefetchScheduler ? (PriorityPrefetchScheduler) prefetchScheduler : null, nl3Var, null);
        executeWithPriority(this.executor, handleAndRequestImpl, z);
        AndroidTrace_androidKt.traceValue("compose:lazy:schedule_prefetch:index", i);
        return handleAndRequestImpl;
    }

    public final void setShouldPauseBetweenPrecompositionAndPremeasure$foundation(boolean z) {
        this.shouldPauseBetweenPrecompositionAndPremeasure = z;
    }

    public final class HandleAndRequestImpl implements LazyLayoutPrefetchState.PrefetchHandle, PrefetchRequest, LazyLayoutPrefetchState.PrefetchResultScope {
        private long availableTimeNanos;
        private long elapsedTimeNanos;
        private boolean hasResolvedNestedPrefetches;
        private final int index;
        private boolean isApplied;
        private boolean isCanceled;
        private boolean isMeasured;
        private boolean isUrgent;
        private Object keyUsedForComposition;
        private NestedPrefetchController nestedPrefetchController;
        private final nl3<LazyLayoutPrefetchState.PrefetchResultScope, j59> onItemPremeasured;
        private boolean pauseRequested;
        private SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition;
        private SubcomposeLayoutState.PrecomposedSlotHandle precomposeHandle;
        private final PrefetchMetrics prefetchMetrics;
        private Constraints premeasureConstraints;
        private final PriorityPrefetchScheduler priorityPrefetchScheduler;
        private long startTime;

        public final class NestedPrefetchController {
            private boolean executedNestedPrefetch;
            private int requestIndex;
            private final List<PrefetchRequest>[] requestsByState;
            private int stateIndex;
            private final List<LazyLayoutPrefetchState> states;

            public NestedPrefetchController(List<LazyLayoutPrefetchState> list) {
                this.states = list;
                this.requestsByState = new List[list.size()];
                if (list.isEmpty()) {
                    InlineClassHelperKt.throwIllegalArgumentException("NestedPrefetchController shouldn't be created with no states");
                }
            }

            public final int collectIdealNestedPrefetchCount() {
                List<LazyLayoutPrefetchState> list = this.states;
                int size = list.size();
                int iMin = Integer.MAX_VALUE;
                for (int i = 0; i < size; i++) {
                    iMin = Math.min(iMin, list.get(i).getIdealNestedPrefetchCount$foundation());
                }
                if (iMin == Integer.MAX_VALUE) {
                    return 0;
                }
                return iMin;
            }

            public final int collectNestedPrefetchedItemsCount() {
                List<LazyLayoutPrefetchState> list = this.states;
                int size = list.size();
                int iMin = Integer.MAX_VALUE;
                for (int i = 0; i < size; i++) {
                    iMin = Math.min(iMin, list.get(i).getLastNumberOfNestedPrefetchItems$foundation());
                }
                if (iMin == Integer.MAX_VALUE) {
                    return 0;
                }
                return iMin;
            }

            public final boolean executeNestedPrefetches(PrefetchRequestScope prefetchRequestScope, int i, boolean z) {
                if (this.stateIndex >= this.states.size()) {
                    return false;
                }
                if (HandleAndRequestImpl.this.isCanceled) {
                    InlineClassHelperKt.throwIllegalStateException("Should not execute nested prefetch on canceled request");
                }
                Trace.beginSection("compose:lazy:prefetch:update_nested_prefetch_count");
                try {
                    List<LazyLayoutPrefetchState> list = this.states;
                    int size = list.size();
                    for (int i2 = 0; i2 < size; i2++) {
                        list.get(i2).setRealizedNestedPrefetchCount$foundation(i);
                    }
                    j59 j59Var = j59.a;
                    Trace.endSection();
                    Trace.beginSection("compose:lazy:prefetch:nested");
                    while (this.stateIndex < this.states.size()) {
                        try {
                            if (this.requestsByState[this.stateIndex] == null) {
                                if (prefetchRequestScope.availableTimeNanos() <= 0) {
                                    Trace.endSection();
                                    return true;
                                }
                                List<PrefetchRequest>[] listArr = this.requestsByState;
                                int i3 = this.stateIndex;
                                listArr[i3] = this.states.get(i3).collectNestedPrefetchRequests$foundation();
                            }
                            List<PrefetchRequest> list2 = this.requestsByState[this.stateIndex];
                            list2.getClass();
                            while (this.requestIndex < list2.size()) {
                                PrefetchRequest prefetchRequest = list2.get(this.requestIndex);
                                if (z) {
                                    HandleAndRequestImpl handleAndRequestImpl = prefetchRequest instanceof HandleAndRequestImpl ? (HandleAndRequestImpl) prefetchRequest : null;
                                    if (handleAndRequestImpl != null) {
                                        handleAndRequestImpl.markAsUrgent();
                                    }
                                }
                                this.executedNestedPrefetch = true;
                                if (prefetchRequest.execute(prefetchRequestScope)) {
                                    Trace.endSection();
                                    return true;
                                }
                                this.requestIndex++;
                            }
                            this.requestIndex = 0;
                            this.stateIndex++;
                        } catch (Throwable th) {
                            Trace.endSection();
                            throw th;
                        }
                    }
                    j59 j59Var2 = j59.a;
                    Trace.endSection();
                    return false;
                } catch (Throwable th2) {
                    Trace.endSection();
                    throw th2;
                }
            }

            public final boolean getExecutedNestedPrefetch() {
                return this.executedNestedPrefetch;
            }

            public final void setExecutedNestedPrefetch(boolean z) {
                this.executedNestedPrefetch = z;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public HandleAndRequestImpl(int i, PrefetchMetrics prefetchMetrics, PriorityPrefetchScheduler priorityPrefetchScheduler, nl3<? super LazyLayoutPrefetchState.PrefetchResultScope, j59> nl3Var) {
            this.index = i;
            this.prefetchMetrics = prefetchMetrics;
            this.priorityPrefetchScheduler = priorityPrefetchScheduler;
            this.onItemPremeasured = nl3Var;
            this.startTime = dd5.b();
        }

        private final void cleanUp() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.pausedPrecomposition;
            if (pausedPrecomposition != null) {
                pausedPrecomposition.cancel();
            }
            this.pausedPrecomposition = null;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle != null) {
                precomposedSlotHandle.dispose();
            }
            this.precomposeHandle = null;
            this.nestedPrefetchController = null;
        }

        private final boolean executeRequest(PrefetchRequestScope prefetchRequestScope) {
            AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:execute:item", getIndex());
            LazyLayoutItemProvider lazyLayoutItemProviderInvoke = PrefetchHandleProvider.this.itemContentFactory.getItemProvider().invoke();
            if (!this.isCanceled) {
                int itemCount = lazyLayoutItemProviderInvoke.getItemCount();
                int index = getIndex();
                if (index >= 0 && index < itemCount) {
                    Object key = lazyLayoutItemProviderInvoke.getKey(getIndex());
                    Object obj = this.keyUsedForComposition;
                    if (obj != null && !aa4.e(key, obj)) {
                        cleanUp();
                        return false;
                    }
                    Object contentType = lazyLayoutItemProviderInvoke.getContentType(getIndex());
                    Averages average = this.prefetchMetrics.getAverage(contentType);
                    boolean zIsComposed = isComposed();
                    resetAvailableTimeTo(prefetchRequestScope.availableTimeNanos());
                    if (!isComposed()) {
                        boolean z = ComposeFoundationFlags.isPausableCompositionInPrefetchEnabled;
                        long j = this.availableTimeNanos;
                        if (z) {
                            if (shouldExecute(j, average.getResumeTimeNanos() + average.getPauseTimeNanos())) {
                                Trace.beginSection("compose:lazy:prefetch:compose");
                                try {
                                    performPausableComposition(prefetchRequestScope, key, contentType, average);
                                    j59 j59Var = j59.a;
                                    Trace.endSection();
                                } catch (Throwable th) {
                                    Trace.endSection();
                                    throw th;
                                }
                            }
                        } else if (shouldExecute(j, average.getCompositionTimeNanos())) {
                            Trace.beginSection("compose:lazy:prefetch:compose");
                            try {
                                performFullComposition(key, contentType);
                                j59 j59Var2 = j59.a;
                                Trace.endSection();
                                updateElapsedAndAvailableTime();
                                average.saveCompositionTimeNanos(this.elapsedTimeNanos);
                            } catch (Throwable th2) {
                                Trace.endSection();
                                throw th2;
                            }
                        }
                        if (!isComposed()) {
                            return true;
                        }
                    }
                    if (this.pausedPrecomposition != null) {
                        if (!shouldExecute(this.availableTimeNanos, average.getApplyTimeNanos())) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:apply");
                        try {
                            performApply();
                            j59 j59Var3 = j59.a;
                            Trace.endSection();
                            updateElapsedAndAvailableTime();
                            average.saveApplyTimeNanos(this.elapsedTimeNanos);
                        } catch (Throwable th3) {
                            Trace.endSection();
                            throw th3;
                        }
                    }
                    if (!this.hasResolvedNestedPrefetches) {
                        if (this.availableTimeNanos <= 0) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:resolve-nested");
                        try {
                            this.nestedPrefetchController = resolveNestedPrefetchStates();
                            this.hasResolvedNestedPrefetches = true;
                            j59 j59Var4 = j59.a;
                            Trace.endSection();
                        } catch (Throwable th4) {
                            Trace.endSection();
                            throw th4;
                        }
                    }
                    NestedPrefetchController nestedPrefetchController = this.nestedPrefetchController;
                    if (nestedPrefetchController != null ? nestedPrefetchController.executeNestedPrefetches(prefetchRequestScope, average.getNestedPrefetchCount(), this.isUrgent) : false) {
                        return true;
                    }
                    NestedPrefetchController nestedPrefetchController2 = this.nestedPrefetchController;
                    if (nestedPrefetchController2 != null && nestedPrefetchController2.getExecutedNestedPrefetch()) {
                        updateElapsedAndAvailableTime();
                        AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:execute:item", getIndex());
                        NestedPrefetchController nestedPrefetchController3 = this.nestedPrefetchController;
                        if (nestedPrefetchController3 != null) {
                            nestedPrefetchController3.setExecutedNestedPrefetch(false);
                        }
                    }
                    Constraints constraints = this.premeasureConstraints;
                    if (!this.isMeasured && constraints != null) {
                        if ((PrefetchHandleProvider.this.getShouldPauseBetweenPrecompositionAndPremeasure$foundation() && !zIsComposed) || !shouldExecute(this.availableTimeNanos, average.getMeasureTimeNanos())) {
                            return true;
                        }
                        Trace.beginSection("compose:lazy:prefetch:measure");
                        try {
                            m2244performMeasureBRTryo0(constraints.m9001unboximpl());
                            j59 j59Var5 = j59.a;
                            Trace.endSection();
                            updateElapsedAndAvailableTime();
                            average.saveMeasureTimeNanos(this.elapsedTimeNanos);
                            nl3<LazyLayoutPrefetchState.PrefetchResultScope, j59> nl3Var = this.onItemPremeasured;
                            if (nl3Var != null) {
                                nl3Var.invoke(this);
                            }
                        } catch (Throwable th5) {
                            Trace.endSection();
                            throw th5;
                        }
                    }
                    NestedPrefetchController nestedPrefetchController4 = this.nestedPrefetchController;
                    if (this.isMeasured && this.hasResolvedNestedPrefetches && nestedPrefetchController4 != null) {
                        int iCollectIdealNestedPrefetchCount = nestedPrefetchController4.collectIdealNestedPrefetchCount();
                        average.saveNestedPrefetchCount(iCollectIdealNestedPrefetchCount);
                        if (nestedPrefetchController4.collectNestedPrefetchedItemsCount() < iCollectIdealNestedPrefetchCount) {
                            average.clearMeasureTime();
                        }
                    }
                    return false;
                }
            }
            cleanUp();
            return false;
        }

        private final boolean isComposed() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition;
            return this.isApplied || ((pausedPrecomposition = this.pausedPrecomposition) != null && pausedPrecomposition.isComplete());
        }

        private final void performApply() {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecomposition = this.pausedPrecomposition;
            if (pausedPrecomposition == null) {
                fg.c("Nothing to apply!");
                return;
            }
            this.precomposeHandle = pausedPrecomposition.apply();
            this.pausedPrecomposition = null;
            this.isApplied = true;
        }

        private final void performFullComposition(Object obj, Object obj2) {
            if (!(this.precomposeHandle == null)) {
                InlineClassHelperKt.throwIllegalArgumentException("Request was already composed!");
            }
            bm3<Composer, Integer, j59> content = PrefetchHandleProvider.this.itemContentFactory.getContent(getIndex(), obj, obj2);
            this.keyUsedForComposition = obj;
            this.precomposeHandle = PrefetchHandleProvider.this.subcomposeLayoutState.precompose(obj, content);
            this.isApplied = true;
        }

        /* JADX INFO: renamed from: performMeasure-BRTryo0, reason: not valid java name */
        private final void m2244performMeasureBRTryo0(long j) {
            if (this.isCanceled) {
                InlineClassHelperKt.throwIllegalArgumentException("Callers should check whether the request is still valid before calling performMeasure()");
            }
            if (this.isMeasured) {
                InlineClassHelperKt.throwIllegalArgumentException("Request was already measured!");
            }
            this.isMeasured = true;
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle == null) {
                throw ng.f("performComposition() must be called before performMeasure()");
            }
            int placeablesCount = precomposedSlotHandle.getPlaceablesCount();
            for (int i = 0; i < placeablesCount; i++) {
                precomposedSlotHandle.mo7730premeasure0kLqBqw(i, j);
            }
        }

        private final void performPausableComposition(PrefetchRequestScope prefetchRequestScope, Object obj, Object obj2, final Averages averages) {
            SubcomposeLayoutState.PausedPrecomposition pausedPrecompositionCreatePausedPrecomposition = this.pausedPrecomposition;
            if (pausedPrecompositionCreatePausedPrecomposition == null) {
                PrefetchHandleProvider prefetchHandleProvider = PrefetchHandleProvider.this;
                pausedPrecompositionCreatePausedPrecomposition = prefetchHandleProvider.subcomposeLayoutState.createPausedPrecomposition(obj, prefetchHandleProvider.itemContentFactory.getContent(getIndex(), obj, obj2));
                this.pausedPrecomposition = pausedPrecompositionCreatePausedPrecomposition;
                this.keyUsedForComposition = obj;
            }
            this.pauseRequested = false;
            while (!pausedPrecompositionCreatePausedPrecomposition.isComplete() && !this.pauseRequested) {
                pausedPrecompositionCreatePausedPrecomposition.resume(new ShouldPauseCallback() { // from class: androidx.compose.foundation.lazy.layout.s
                    @Override // androidx.compose.runtime.ShouldPauseCallback
                    public final boolean shouldPause() {
                        return PrefetchHandleProvider.HandleAndRequestImpl.performPausableComposition$lambda$1(this.b, averages);
                    }
                });
            }
            updateElapsedAndAvailableTime();
            boolean z = this.pauseRequested;
            long j = this.elapsedTimeNanos;
            if (z) {
                averages.savePauseTimeNanos(j);
            } else {
                averages.saveResumeTimeNanos(j);
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final boolean performPausableComposition$lambda$1(HandleAndRequestImpl handleAndRequestImpl, Averages averages) {
            boolean z = handleAndRequestImpl.pauseRequested;
            if (z) {
                return z;
            }
            handleAndRequestImpl.updateElapsedAndAvailableTime();
            averages.saveResumeTimeNanos(handleAndRequestImpl.elapsedTimeNanos);
            boolean z2 = !handleAndRequestImpl.shouldExecute(handleAndRequestImpl.availableTimeNanos, averages.getPauseTimeNanos() + averages.getResumeTimeNanos());
            handleAndRequestImpl.pauseRequested = z2;
            return z2;
        }

        private final void resetAvailableTimeTo(long j) {
            this.availableTimeNanos = j;
            this.startTime = dd5.b();
            this.elapsedTimeNanos = 0L;
            AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:available_time_nanos", j);
        }

        private final NestedPrefetchController resolveNestedPrefetchStates() {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle == null) {
                throw ng.f("Should precompose before resolving nested prefetch states");
            }
            final r07 r07Var = new r07();
            precomposedSlotHandle.traverseDescendants("androidx.compose.foundation.lazy.layout.TraversablePrefetchStateNode", new nl3() { // from class: androidx.compose.foundation.lazy.layout.r
                @Override // defpackage.nl3
                public final Object invoke(Object obj) {
                    return PrefetchHandleProvider.HandleAndRequestImpl.resolveNestedPrefetchStates$lambda$1(r07Var, (TraversableNode) obj);
                }
            });
            List list = (List) r07Var.b;
            if (list != null) {
                return new NestedPrefetchController(list);
            }
            return null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Multi-variable type inference failed */
        public static final TraversableNode.Companion.TraverseDescendantsAction resolveNestedPrefetchStates$lambda$1(r07 r07Var, TraversableNode traversableNode) {
            T tK;
            traversableNode.getClass();
            LazyLayoutPrefetchState prefetchState = ((TraversablePrefetchStateNode) traversableNode).getPrefetchState();
            List list = (List) r07Var.b;
            if (list != null) {
                list.add(prefetchState);
                tK = list;
            } else {
                tK = u96.k(prefetchState);
            }
            r07Var.b = tK;
            return TraversableNode.Companion.TraverseDescendantsAction.SkipSubtreeAndContinueTraversal;
        }

        private final boolean shouldExecute(long j, long j2) {
            if (this.isUrgent) {
                j2 = 0;
            }
            return j > j2;
        }

        private final void updateElapsedAndAvailableTime() {
            long jB = dd5.b();
            long jF = wt2.f(qv8.a.C0320a.c(jB, this.startTime));
            this.elapsedTimeNanos = jF;
            long j = this.availableTimeNanos - jF;
            this.availableTimeNanos = j;
            this.startTime = jB;
            AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:available_time_nanos", j);
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public void cancel() {
            if (this.isCanceled) {
                return;
            }
            this.isCanceled = true;
            cleanUp();
        }

        @Override // androidx.compose.foundation.lazy.layout.PrefetchRequest
        public boolean execute(PrefetchRequestScope prefetchRequestScope) {
            boolean zExecuteRequest;
            if (!PrefetchHandleProvider.this.isStateActive) {
                return false;
            }
            if (this.isUrgent) {
                Trace.beginSection("compose:lazy:prefetch:execute:urgent");
                try {
                    zExecuteRequest = executeRequest(prefetchRequestScope);
                    Trace.endSection();
                } catch (Throwable th) {
                    Trace.endSection();
                    throw th;
                }
            } else {
                zExecuteRequest = executeRequest(prefetchRequestScope);
            }
            AndroidTrace_androidKt.traceValue("compose:lazy:prefetch:execute:item", -1L);
            return zExecuteRequest;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public int getIndex() {
            return this.index;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        public int getPlaceablesCount() {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            if (precomposedSlotHandle != null) {
                return precomposedSlotHandle.getPlaceablesCount();
            }
            return 0;
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchResultScope
        /* JADX INFO: renamed from: getSize-YEO4UFw */
        public long mo2230getSizeYEO4UFw(int i) {
            SubcomposeLayoutState.PrecomposedSlotHandle precomposedSlotHandle = this.precomposeHandle;
            return precomposedSlotHandle != null ? precomposedSlotHandle.mo7729getSizeYEO4UFw(i) : IntSize.Companion.m9218getZeroYbymL2g();
        }

        @Override // androidx.compose.foundation.lazy.layout.LazyLayoutPrefetchState.PrefetchHandle
        public void markAsUrgent() {
            this.isUrgent = true;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder("HandleAndRequestImpl { index = ");
            sb.append(getIndex());
            sb.append(", constraints = ");
            sb.append(this.premeasureConstraints);
            sb.append(", isComposed = ");
            sb.append(isComposed());
            sb.append(", isMeasured = ");
            sb.append(this.isMeasured);
            sb.append(", isCanceled = ");
            return dh.e(sb, this.isCanceled, " }");
        }

        public /* synthetic */ HandleAndRequestImpl(PrefetchHandleProvider prefetchHandleProvider, int i, long j, PrefetchMetrics prefetchMetrics, PriorityPrefetchScheduler priorityPrefetchScheduler, nl3 nl3Var, jh2 jh2Var) {
            this(prefetchHandleProvider, i, j, prefetchMetrics, priorityPrefetchScheduler, nl3Var);
        }

        private HandleAndRequestImpl(PrefetchHandleProvider prefetchHandleProvider, int i, long j, PrefetchMetrics prefetchMetrics, PriorityPrefetchScheduler priorityPrefetchScheduler, nl3<? super LazyLayoutPrefetchState.PrefetchResultScope, j59> nl3Var) {
            this(i, prefetchMetrics, priorityPrefetchScheduler, nl3Var);
            this.premeasureConstraints = Constraints.m8982boximpl(j);
        }
    }
}
