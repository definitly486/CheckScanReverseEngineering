package androidx.compose.runtime;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectList;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScatterSetWrapperKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.ExtensionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.Trace;
import androidx.compose.runtime.internal.Utils_androidKt;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.ObserverHandle;
import androidx.compose.runtime.snapshots.ReaderKind;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot;
import androidx.compose.runtime.snapshots.TransparentObserverSnapshot;
import androidx.compose.runtime.tooling.ComposeStackTraceMode;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionObserverHandle;
import androidx.compose.runtime.tooling.CompositionObserverKt;
import androidx.compose.runtime.tooling.CompositionRegistrationObserver;
import androidx.compose.runtime.tooling.ObservableComposition;
import defpackage.a31;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.b36;
import defpackage.b80;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.c31;
import defpackage.dm3;
import defpackage.e02;
import defpackage.g03;
import defpackage.h03;
import defpackage.hd3;
import defpackage.hq1;
import defpackage.j59;
import defpackage.jf;
import defpackage.jh2;
import defpackage.kx2;
import defpackage.ll3;
import defpackage.lo5;
import defpackage.mb4;
import defpackage.nb4;
import defpackage.nl3;
import defpackage.nn1;
import defpackage.o22;
import defpackage.pe3;
import defpackage.pg8;
import defpackage.pib;
import defpackage.px;
import defpackage.qb4;
import defpackage.qn1;
import defpackage.qq5;
import defpackage.r57;
import defpackage.rf0;
import defpackage.sj0;
import defpackage.sz6;
import defpackage.ue3;
import defpackage.ul2;
import defpackage.vf0;
import defpackage.x26;
import defpackage.xg5;
import defpackage.y22;
import defpackage.y68;
import defpackage.z22;
import defpackage.zya;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes2.dex */
public final class Recomposer extends CompositionContext {
    private final List<ControlledComposition> _knownCompositions;
    private List<? extends ControlledComposition> _knownCompositionsCache;
    private final xg5<State> _state;
    private final BroadcastFrameClock broadcastFrameClock;
    private long changeCount;
    private Throwable closeCause;
    private final MutableVector<ControlledComposition> compositionInvalidations;
    private final List<ControlledComposition> compositionsAwaitingApply;
    private MutableScatterSet<ControlledComposition> compositionsRemoved;
    private int concurrentCompositionsOutstanding;
    private final o22 effectCoroutineContext;
    private final hq1 effectJob;
    private xg5<RecomposerErrorState> errorState;
    private List<ControlledComposition> failedCompositions;
    private boolean frameClockPaused;
    private boolean isClosed;
    private final List<MovableContentStateReference> movableContentAwaitingInsert;
    private final MutableScatterMap<Object, Object> movableContentNestedExtractionsPending;
    private final NestedContentMap movableContentNestedStatesAvailable;
    private final MutableScatterMap<Object, Object> movableContentRemoved;
    private final MutableScatterMap<MovableContentStateReference, MovableContentState> movableContentStatesAvailable;
    private final NextFrameEndCallbackQueue nextFrameEndCallbackQueue;
    private final SnapshotThreadLocal<MutableScatterSet<RecomposeScopeImpl>> pausedScopes;
    private final RecomposerInfoImpl recomposerInfo;
    private MutableObjectList<CompositionRegistrationObserver> registrationObservers;
    private mb4 runnerJob;
    private MutableScatterSet<Object> snapshotInvalidations;
    private final Object stateLock;
    private a31<? super j59> workContinuation;
    public static final Companion Companion = new Companion(null);
    public static final int $stable = 8;
    private static final xg5<PersistentSet<RecomposerInfoImpl>> _runningRecomposers = px.a(ExtensionsKt.persistentSetOf());
    private static final AtomicReference<Boolean> _hotReloadEnabled = new AtomicReference<>(Boolean.FALSE);

    public static final class HotReloadable {
        private bm3<? super Composer, ? super Integer, j59> composable;
        private final CompositionImpl composition;

        public HotReloadable(CompositionImpl compositionImpl) {
            this.composition = compositionImpl;
            this.composable = compositionImpl.getComposable();
        }

        public final void clearContent() {
            if (this.composition.isRoot()) {
                this.composition.setContent(ComposableSingletons$RecomposerKt.INSTANCE.m5313getLambda$1091980426$runtime());
            }
        }

        public final void recompose() {
            if (this.composition.isRoot()) {
                this.composition.setContent(this.composable);
            }
        }

        public final void resetContent() {
            this.composition.setComposable(this.composable);
        }
    }

    public static final class RecomposerErrorState implements RecomposerErrorInfo, RecomposerErrorInformation {
        private final Throwable cause;
        private final boolean isRecoverable;

        public RecomposerErrorState(Throwable th, boolean z) {
            this.cause = th;
            this.isRecoverable = z;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo, androidx.compose.runtime.RecomposerErrorInformation
        public Throwable getCause() {
            return this.cause;
        }

        @Override // androidx.compose.runtime.RecomposerErrorInfo
        public boolean getRecoverable() {
            return isRecoverable();
        }

        @Override // androidx.compose.runtime.RecomposerErrorInformation
        public boolean isRecoverable() {
            return this.isRecoverable;
        }
    }

    public final class RecomposerInfoImpl implements RecomposerInfo {
        public RecomposerInfoImpl() {
        }

        public static /* synthetic */ void getCurrentError$annotations() {
        }

        public static /* synthetic */ void getErrorState$annotations() {
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public long getChangeCount() {
            return Recomposer.this.getChangeCount();
        }

        public final RecomposerErrorInformation getCurrentError() {
            RecomposerErrorState recomposerErrorState;
            Object obj = Recomposer.this.stateLock;
            Recomposer recomposer = Recomposer.this;
            synchronized (obj) {
                recomposerErrorState = (RecomposerErrorState) recomposer.errorState.getValue();
            }
            return recomposerErrorState;
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public y68<RecomposerErrorInformation> getErrorState() {
            return Recomposer.this.errorState;
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public boolean getHasPendingWork() {
            return Recomposer.this.getHasPendingWork();
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public hd3<State> getState() {
            return Recomposer.this.getCurrentState();
        }

        public final void invalidateGroupsWithKey(int i) {
            List listKnownCompositions = Recomposer.this.knownCompositions();
            ArrayList arrayList = new ArrayList(listKnownCompositions.size());
            int size = listKnownCompositions.size();
            for (int i2 = 0; i2 < size; i2++) {
                ControlledComposition controlledComposition = (ControlledComposition) listKnownCompositions.get(i2);
                CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            int size2 = arrayList.size();
            for (int i3 = 0; i3 < size2; i3++) {
                ((CompositionImpl) arrayList.get(i3)).invalidateGroupsWithKey(i);
            }
        }

        @Override // androidx.compose.runtime.RecomposerInfo
        public CompositionObserverHandle observe(CompositionRegistrationObserver compositionRegistrationObserver) {
            return CompositionObserverKt.observe(Recomposer.this, compositionRegistrationObserver);
        }

        public final RecomposerErrorState resetErrorState() {
            return Recomposer.this.resetErrorState();
        }

        public final void retryFailedCompositions() {
            Recomposer.this.retryFailedCompositions();
        }

        public final List<HotReloadable> saveStateAndDisposeForHotReload() {
            List listKnownCompositions = Recomposer.this.knownCompositions();
            ArrayList arrayList = new ArrayList(listKnownCompositions.size());
            int size = listKnownCompositions.size();
            for (int i = 0; i < size; i++) {
                ControlledComposition controlledComposition = (ControlledComposition) listKnownCompositions.get(i);
                CompositionImpl compositionImpl = controlledComposition instanceof CompositionImpl ? (CompositionImpl) controlledComposition : null;
                if (compositionImpl != null) {
                    arrayList.add(compositionImpl);
                }
            }
            ArrayList arrayList2 = new ArrayList(arrayList.size());
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                HotReloadable hotReloadable = new HotReloadable((CompositionImpl) arrayList.get(i2));
                hotReloadable.clearContent();
                arrayList2.add(hotReloadable);
            }
            return arrayList2;
        }
    }

    public enum State {
        ShutDown,
        ShuttingDown,
        Inactive,
        InactivePendingWork,
        Idle,
        PendingWork;

        private static final /* synthetic */ g03 $ENTRIES = h03.a(values());

        public static g03<State> getEntries() {
            return $ENTRIES;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$awaitIdle$2, reason: invalid class name */
    @bd2(c = "androidx.compose.runtime.Recomposer$awaitIdle$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<State, e02<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = obj;
            return anonymousClass2;
        }

        @Override // defpackage.bm3
        public final Object invoke(State state, e02<? super Boolean> e02Var) {
            return ((AnonymousClass2) create(state, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(((State) this.L$0).compareTo(State.Idle) > 0);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$join$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.runtime.Recomposer$join$2", f = "Recomposer.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class C06182 extends pg8 implements bm3<State, e02<? super Boolean>, Object> {
        /* synthetic */ Object L$0;
        int label;

        public C06182(e02<? super C06182> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06182 c06182 = new C06182(e02Var);
            c06182.L$0 = obj;
            return c06182;
        }

        @Override // defpackage.bm3
        public final Object invoke(State state, e02<? super Boolean> e02Var) {
            return ((C06182) create(state, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label == 0) {
                r57.b(obj);
                return Boolean.valueOf(((State) this.L$0) == State.ShutDown);
            }
            ah.f("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
    public static final class C06192 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ dm3<y22, MonotonicFrameClock, e02<? super j59>, Object> $block;
        final /* synthetic */ MonotonicFrameClock $parentFrameClock;
        private /* synthetic */ Object L$0;
        Object L$1;
        int label;

        /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$recompositionRunner$2$2, reason: invalid class name and collision with other inner class name */
        @bd2(c = "androidx.compose.runtime.Recomposer$recompositionRunner$2$2", f = "Recomposer.kt", l = {1081}, m = "invokeSuspend", v = 1)
        public static final class C00812 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
            final /* synthetic */ dm3<y22, MonotonicFrameClock, e02<? super j59>, Object> $block;
            final /* synthetic */ MonotonicFrameClock $parentFrameClock;
            private /* synthetic */ Object L$0;
            int label;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            public C00812(dm3<? super y22, ? super MonotonicFrameClock, ? super e02<? super j59>, ? extends Object> dm3Var, MonotonicFrameClock monotonicFrameClock, e02<? super C00812> e02Var) {
                super(2, e02Var);
                this.$block = dm3Var;
                this.$parentFrameClock = monotonicFrameClock;
            }

            @Override // defpackage.cd0
            public final e02<j59> create(Object obj, e02<?> e02Var) {
                C00812 c00812 = new C00812(this.$block, this.$parentFrameClock, e02Var);
                c00812.L$0 = obj;
                return c00812;
            }

            @Override // defpackage.bm3
            public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                return ((C00812) create(y22Var, e02Var)).invokeSuspend(j59.a);
            }

            @Override // defpackage.cd0
            public final Object invokeSuspend(Object obj) {
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i = this.label;
                if (i == 0) {
                    r57.b(obj);
                    y22 y22Var = (y22) this.L$0;
                    dm3<y22, MonotonicFrameClock, e02<? super j59>, Object> dm3Var = this.$block;
                    MonotonicFrameClock monotonicFrameClock = this.$parentFrameClock;
                    this.label = 1;
                    if (dm3Var.invoke(y22Var, monotonicFrameClock, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                return j59.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public C06192(dm3<? super y22, ? super MonotonicFrameClock, ? super e02<? super j59>, ? extends Object> dm3Var, MonotonicFrameClock monotonicFrameClock, e02<? super C06192> e02Var) {
            super(2, e02Var);
            this.$block = dm3Var;
            this.$parentFrameClock = monotonicFrameClock;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:27:0x007a A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:28:0x007c A[Catch: all -> 0x006f, LOOP:0: B:11:0x0033->B:28:0x007c, LOOP_END, TryCatch #0 {all -> 0x006f, blocks: (B:4:0x0007, B:6:0x0019, B:8:0x0022, B:11:0x0033, B:13:0x0043, B:15:0x004f, B:17:0x0058, B:19:0x0061, B:24:0x0071, B:25:0x0074, B:28:0x007c, B:38:0x00a5, B:29:0x007f, B:30:0x0085, B:32:0x008b, B:34:0x0093, B:37:0x00a1), top: B:48:0x0007 }] */
        /* JADX WARN: Code duplicated, block: B:51:0x00a5 A[EDGE_INSN: B:51:0x00a5->B:38:0x00a5 BREAK  A[LOOP:0: B:11:0x0033->B:28:0x007c], SYNTHETIC] */
        public static final j59 invokeSuspend$lambda$0(Recomposer recomposer, Set set, Snapshot snapshot) {
            a31 a31VarDeriveStateLocked;
            synchronized (recomposer.stateLock) {
                try {
                    if (((State) recomposer._state.getValue()).compareTo(State.Idle) >= 0) {
                        MutableScatterSet mutableScatterSet = recomposer.snapshotInvalidations;
                        if (set instanceof ScatterSetWrapper) {
                            ScatterSet set$runtime = ((ScatterSetWrapper) set).getSet$runtime();
                            Object[] objArr = set$runtime.elements;
                            long[] jArr = set$runtime.metadata;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i = 0;
                                while (true) {
                                    long j = jArr[i];
                                    if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                                        if (i != length) {
                                            break;
                                            break;
                                        }
                                        i++;
                                    } else {
                                        int i2 = 8 - ((~(i - length)) >>> 31);
                                        for (int i3 = 0; i3 < i2; i3++) {
                                            if ((255 & j) < 128) {
                                                Object obj = objArr[(i << 3) + i3];
                                                if (!(obj instanceof StateObjectImpl) || ((StateObjectImpl) obj).m5642isReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(1))) {
                                                    mutableScatterSet.add(obj);
                                                }
                                            }
                                            j >>= 8;
                                        }
                                        if (i2 != 8) {
                                            break;
                                        }
                                        if (i != length) {
                                            break;
                                        }
                                        i++;
                                    }
                                }
                            }
                        } else {
                            for (Object obj2 : set) {
                                if (!(obj2 instanceof StateObjectImpl) || ((StateObjectImpl) obj2).m5642isReadInh_f27i8$runtime(ReaderKind.m5631constructorimpl(1))) {
                                    mutableScatterSet.add(obj2);
                                }
                            }
                        }
                        a31VarDeriveStateLocked = recomposer.deriveStateLocked();
                    } else {
                        a31VarDeriveStateLocked = null;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (a31VarDeriveStateLocked != null) {
                a31VarDeriveStateLocked.resumeWith(j59.a);
            }
            return j59.a;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06192 c06192 = Recomposer.this.new C06192(this.$block, this.$parentFrameClock, e02Var);
            c06192.L$0 = obj;
            return c06192;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06192) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:26:0x0095 A[Catch: all -> 0x0099, TryCatch #2 {all -> 0x0099, blocks: (B:24:0x008f, B:26:0x0095, B:29:0x009b, B:31:0x00a1, B:32:0x00a6), top: B:58:0x008f }] */
        /* JADX WARN: Code duplicated, block: B:31:0x00a1 A[Catch: all -> 0x0099, TryCatch #2 {all -> 0x0099, blocks: (B:24:0x008f, B:26:0x0095, B:29:0x009b, B:31:0x00a1, B:32:0x00a6), top: B:58:0x008f }] */
        /* JADX WARN: Code duplicated, block: B:42:0x00cb A[Catch: all -> 0x00cf, TryCatch #3 {all -> 0x00cf, blocks: (B:40:0x00c5, B:42:0x00cb, B:45:0x00d1, B:47:0x00d7, B:48:0x00dc), top: B:60:0x00c5 }] */
        /* JADX WARN: Code duplicated, block: B:47:0x00d7 A[Catch: all -> 0x00cf, TryCatch #3 {all -> 0x00cf, blocks: (B:40:0x00c5, B:42:0x00cb, B:45:0x00d1, B:47:0x00d7, B:48:0x00dc), top: B:60:0x00c5 }] */
        /* JADX WARN: Code duplicated, block: B:58:0x008f A[EXC_TOP_SPLITTER, SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:60:0x00c5 A[EXC_TOP_SPLITTER, SYNTHETIC] */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
            mb4 mb4VarF;
            ObserverHandle observerHandle;
            Throwable th;
            Object obj2;
            Recomposer recomposer;
            Object obj3;
            Recomposer recomposer2;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                observerHandle = (ObserverHandle) this.L$1;
                mb4VarF = (mb4) this.L$0;
                try {
                    r57.b(obj);
                    observerHandle.dispose();
                    obj3 = Recomposer.this.stateLock;
                    recomposer2 = Recomposer.this;
                    synchronized (obj3) {
                        try {
                            if (recomposer2.runnerJob == mb4VarF) {
                                recomposer2.runnerJob = null;
                            }
                            if (recomposer2.deriveStateLocked() != null) {
                                ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
                            }
                            j59 j59Var = j59.a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                    Recomposer.Companion.removeRunning(Recomposer.this.recomposerInfo);
                    return j59.a;
                } catch (Throwable th3) {
                    th = th3;
                    observerHandle.dispose();
                    obj2 = Recomposer.this.stateLock;
                    recomposer = Recomposer.this;
                    synchronized (obj2) {
                        try {
                            if (recomposer.runnerJob == mb4VarF) {
                                recomposer.runnerJob = null;
                            }
                            if (recomposer.deriveStateLocked() != null) {
                                ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
                            }
                            j59 j59Var2 = j59.a;
                        } catch (Throwable th4) {
                            throw th4;
                        }
                    }
                    Recomposer.Companion.removeRunning(Recomposer.this.recomposerInfo);
                    throw th;
                }
            }
            r57.b(obj);
            mb4VarF = qb4.f(((y22) this.L$0).getCoroutineContext());
            Recomposer.this.registerRunnerJob(mb4VarF);
            Snapshot.Companion companion = Snapshot.Companion;
            final Recomposer recomposer3 = Recomposer.this;
            ObserverHandle observerHandleRegisterApplyObserver = companion.registerApplyObserver(new bm3() { // from class: androidx.compose.runtime.j
                @Override // defpackage.bm3
                public final Object invoke(Object obj4, Object obj5) {
                    return Recomposer.C06192.invokeSuspend$lambda$0(recomposer3, (Set) obj4, (Snapshot) obj5);
                }
            });
            Recomposer.Companion.addRunning(Recomposer.this.recomposerInfo);
            try {
                List listKnownCompositions = Recomposer.this.knownCompositions();
                int size = listKnownCompositions.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((ControlledComposition) listKnownCompositions.get(i2)).invalidateAll();
                }
                C00812 c00812 = new C00812(this.$block, this.$parentFrameClock, null);
                this.L$0 = mb4VarF;
                this.L$1 = observerHandleRegisterApplyObserver;
                this.label = 1;
                if (z22.c(c00812, this) == a32Var) {
                    return a32Var;
                }
                observerHandle = observerHandleRegisterApplyObserver;
                observerHandle.dispose();
                obj3 = Recomposer.this.stateLock;
                recomposer2 = Recomposer.this;
                synchronized (obj3) {
                    if (recomposer2.runnerJob == mb4VarF) {
                        recomposer2.runnerJob = null;
                    }
                    if (recomposer2.deriveStateLocked() != null) {
                        ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
                    }
                    j59 j59Var3 = j59.a;
                    Recomposer.Companion.removeRunning(Recomposer.this.recomposerInfo);
                    return j59.a;
                }
            } catch (Throwable th5) {
                observerHandle = observerHandleRegisterApplyObserver;
                th = th5;
                observerHandle.dispose();
                obj2 = Recomposer.this.stateLock;
                recomposer = Recomposer.this;
                synchronized (obj2) {
                    if (recomposer.runnerJob == mb4VarF) {
                        recomposer.runnerJob = null;
                    }
                    if (recomposer.deriveStateLocked() != null) {
                        ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
                    }
                    j59 j59Var4 = j59.a;
                    Recomposer.Companion.removeRunning(Recomposer.this.recomposerInfo);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: renamed from: androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {615, 626}, m = "invokeSuspend", v = 1)
    public static final class C06202 extends pg8 implements dm3<y22, MonotonicFrameClock, e02<? super j59>, Object> {
        /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        int label;

        public C06202(e02<? super C06202> e02Var) {
            super(3, e02Var);
        }

        /* JADX WARN: Code duplicated, block: B:21:0x0078 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:22:0x007a A[Catch: all -> 0x002e, LOOP:1: B:12:0x0044->B:22:0x007a, LOOP_END, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000f, B:6:0x001f, B:9:0x0031, B:12:0x0044, B:14:0x0055, B:16:0x005f, B:18:0x0065, B:19:0x0072, B:24:0x0085, B:27:0x0092, B:29:0x009d, B:31:0x00a7, B:33:0x00ad, B:34:0x00b7, B:37:0x00bf, B:38:0x00c2, B:41:0x00d2, B:43:0x00dd, B:45:0x00e7, B:47:0x00ed, B:48:0x00fa, B:51:0x0102, B:52:0x0105, B:22:0x007a), top: B:57:0x000f }] */
        /* JADX WARN: Code duplicated, block: B:36:0x00bd A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:37:0x00bf A[Catch: all -> 0x002e, LOOP:3: B:27:0x0092->B:37:0x00bf, LOOP_END, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000f, B:6:0x001f, B:9:0x0031, B:12:0x0044, B:14:0x0055, B:16:0x005f, B:18:0x0065, B:19:0x0072, B:24:0x0085, B:27:0x0092, B:29:0x009d, B:31:0x00a7, B:33:0x00ad, B:34:0x00b7, B:37:0x00bf, B:38:0x00c2, B:41:0x00d2, B:43:0x00dd, B:45:0x00e7, B:47:0x00ed, B:48:0x00fa, B:51:0x0102, B:52:0x0105, B:22:0x007a), top: B:57:0x000f }] */
        /* JADX WARN: Code duplicated, block: B:50:0x0100 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:51:0x0102 A[Catch: all -> 0x002e, LOOP:5: B:41:0x00d2->B:51:0x0102, LOOP_END, TryCatch #0 {all -> 0x002e, blocks: (B:4:0x000f, B:6:0x001f, B:9:0x0031, B:12:0x0044, B:14:0x0055, B:16:0x005f, B:18:0x0065, B:19:0x0072, B:24:0x0085, B:27:0x0092, B:29:0x009d, B:31:0x00a7, B:33:0x00ad, B:34:0x00b7, B:37:0x00bf, B:38:0x00c2, B:41:0x00d2, B:43:0x00dd, B:45:0x00e7, B:47:0x00ed, B:48:0x00fa, B:51:0x0102, B:52:0x0105, B:22:0x007a), top: B:57:0x000f }] */
        /* JADX WARN: Code duplicated, block: B:61:0x0085 A[EDGE_INSN: B:61:0x0085->B:24:0x0085 BREAK  A[LOOP:1: B:12:0x0044->B:22:0x007a], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:66:0x00c2 A[EDGE_INSN: B:66:0x00c2->B:38:0x00c2 BREAK  A[LOOP:3: B:27:0x0092->B:37:0x00bf], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:71:0x0105 A[EDGE_INSN: B:71:0x0105->B:52:0x0105 BREAK  A[LOOP:5: B:41:0x00d2->B:51:0x0102], SYNTHETIC] */
        private static final void invokeSuspend$clearRecompositionState(Recomposer recomposer, List<ControlledComposition> list, List<MovableContentStateReference> list2, List<ControlledComposition> list3, MutableScatterSet<ControlledComposition> mutableScatterSet, MutableScatterSet<ControlledComposition> mutableScatterSet2, MutableScatterSet<Object> mutableScatterSet3, MutableScatterSet<ControlledComposition> mutableScatterSet4) {
            char c;
            long j;
            long j2;
            synchronized (recomposer.stateLock) {
                try {
                    list.clear();
                    list2.clear();
                    int size = list3.size();
                    for (int i = 0; i < size; i++) {
                        ControlledComposition controlledComposition = list3.get(i);
                        controlledComposition.abandonChanges();
                        recomposer.recordFailedCompositionLocked(controlledComposition);
                    }
                    list3.clear();
                    Object[] objArr = mutableScatterSet.elements;
                    long[] jArr = mutableScatterSet.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        j = 255;
                        while (true) {
                            long j3 = jArr[i2];
                            c = 7;
                            j2 = -9187201950435737472L;
                            if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i2 != length) {
                                    break;
                                    break;
                                }
                                i2++;
                            } else {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((j3 & 255) < 128) {
                                        ControlledComposition controlledComposition2 = (ControlledComposition) objArr[(i2 << 3) + i4];
                                        controlledComposition2.abandonChanges();
                                        recomposer.recordFailedCompositionLocked(controlledComposition2);
                                    }
                                    j3 >>= 8;
                                }
                                if (i3 != 8) {
                                    break;
                                } else if (i2 != length) {
                                    break;
                                } else {
                                    i2++;
                                }
                            }
                        }
                    } else {
                        c = 7;
                        j = 255;
                        j2 = -9187201950435737472L;
                    }
                    mutableScatterSet.clear();
                    Object[] objArr2 = mutableScatterSet2.elements;
                    long[] jArr2 = mutableScatterSet2.metadata;
                    int length2 = jArr2.length - 2;
                    if (length2 >= 0) {
                        int i5 = 0;
                        while (true) {
                            long j4 = jArr2[i5];
                            if ((((~j4) << c) & j4 & j2) == j2) {
                                if (i5 != length2) {
                                    break;
                                    break;
                                }
                                i5++;
                            } else {
                                int i6 = 8 - ((~(i5 - length2)) >>> 31);
                                for (int i7 = 0; i7 < i6; i7++) {
                                    if ((j4 & j) < 128) {
                                        ((ControlledComposition) objArr2[(i5 << 3) + i7]).changesApplied();
                                    }
                                    j4 >>= 8;
                                }
                                if (i6 != 8) {
                                    break;
                                } else if (i5 != length2) {
                                    break;
                                } else {
                                    i5++;
                                }
                            }
                        }
                    }
                    mutableScatterSet2.clear();
                    mutableScatterSet3.clear();
                    Object[] objArr3 = mutableScatterSet4.elements;
                    long[] jArr3 = mutableScatterSet4.metadata;
                    int length3 = jArr3.length - 2;
                    if (length3 >= 0) {
                        int i8 = 0;
                        while (true) {
                            long j5 = jArr3[i8];
                            if ((((~j5) << c) & j5 & j2) == j2) {
                                if (i8 != length3) {
                                    break;
                                    break;
                                }
                                i8++;
                            } else {
                                int i9 = 8 - ((~(i8 - length3)) >>> 31);
                                for (int i10 = 0; i10 < i9; i10++) {
                                    if ((j5 & j) < 128) {
                                        ControlledComposition controlledComposition3 = (ControlledComposition) objArr3[(i8 << 3) + i10];
                                        controlledComposition3.abandonChanges();
                                        recomposer.recordFailedCompositionLocked(controlledComposition3);
                                    }
                                    j5 >>= 8;
                                }
                                if (i9 != 8) {
                                    break;
                                } else if (i8 != length3) {
                                    break;
                                } else {
                                    i8++;
                                }
                            }
                        }
                    }
                    mutableScatterSet4.clear();
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        private static final void invokeSuspend$fillToInsert(List<MovableContentStateReference> list, Recomposer recomposer) {
            list.clear();
            synchronized (recomposer.stateLock) {
                try {
                    List list2 = recomposer.movableContentAwaitingInsert;
                    int size = list2.size();
                    for (int i = 0; i < size; i++) {
                        list.add((MovableContentStateReference) list2.get(i));
                    }
                    recomposer.movableContentAwaitingInsert.clear();
                    j59 j59Var = j59.a;
                } catch (Throwable th) {
                    throw th;
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Code duplicated, block: B:112:0x01ff A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:113:0x0201 A[LOOP:4: B:100:0x01ce->B:113:0x0201, LOOP_END] */
        /* JADX WARN: Code duplicated, block: B:255:0x0204 A[EDGE_INSN: B:255:0x0204->B:114:0x0204 BREAK  A[LOOP:4: B:100:0x01ce->B:113:0x0201], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:261:0x0188 A[EDGE_INSN: B:261:0x0188->B:82:0x0188 BREAK  A[LOOP:6: B:67:0x014e->B:80:0x0183], SYNTHETIC] */
        /* JADX WARN: Code duplicated, block: B:79:0x0181 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:80:0x0183 A[LOOP:6: B:67:0x014e->B:80:0x0183, LOOP_END] */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r3v18 */
        /* JADX WARN: Type inference failed for: r3v19, types: [int] */
        /* JADX WARN: Type inference failed for: r3v20 */
        /* JADX WARN: Type inference failed for: r3v21, types: [int] */
        /* JADX WARN: Type inference failed for: r3v25 */
        /* JADX WARN: Type inference failed for: r3v26 */
        /* JADX WARN: Type inference failed for: r4v15, types: [int] */
        /* JADX WARN: Type inference failed for: r4v24 */
        /* JADX WARN: Type inference failed for: r4v25 */
        public static final j59 invokeSuspend$lambda$2(Recomposer recomposer, MutableScatterSet mutableScatterSet, MutableScatterSet mutableScatterSet2, List list, List list2, MutableScatterSet mutableScatterSet3, List list3, MutableScatterSet mutableScatterSet4, Set set, long j) {
            boolean z;
            Object[] objArr;
            char c;
            long j2;
            Recomposer recomposer2 = recomposer;
            if (recomposer2.getHasBroadcastFrameClockAwaiters()) {
                Trace trace = Trace.INSTANCE;
                Object objBeginSection = trace.beginSection("Recomposer:animation");
                try {
                    recomposer2.broadcastFrameClock.sendFrame(j);
                    Snapshot.Companion.sendApplyNotifications();
                    j59 j59Var = j59.a;
                    trace.endSection(objBeginSection);
                } catch (Throwable th) {
                    Trace.INSTANCE.endSection(objBeginSection);
                    throw th;
                }
            }
            Object objBeginSection2 = Trace.INSTANCE.beginSection("Recomposer:recompose");
            try {
                recomposer2.recordComposerModifications();
                synchronized (recomposer2.stateLock) {
                    try {
                        MutableVector mutableVector = recomposer2.compositionInvalidations;
                        Object[] objArr2 = mutableVector.content;
                        int size = mutableVector.getSize();
                        z = false;
                        for (int i = 0; i < size; i++) {
                            list.add((ControlledComposition) objArr2[i]);
                        }
                        recomposer2.compositionInvalidations.clear();
                        j59 j59Var2 = j59.a;
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
                mutableScatterSet.clear();
                mutableScatterSet2.clear();
                while (true) {
                    if (list.isEmpty() && list2.isEmpty()) {
                        break;
                    }
                    try {
                        int size2 = list.size();
                        for (int i2 = 0; i2 < size2; i2++) {
                            ControlledComposition controlledComposition = (ControlledComposition) list.get(i2);
                            ControlledComposition controlledCompositionPerformRecompose = recomposer2.performRecompose(controlledComposition, mutableScatterSet);
                            if (controlledCompositionPerformRecompose != null) {
                                list3.add(controlledCompositionPerformRecompose);
                                j59 j59Var3 = j59.a;
                            }
                            mutableScatterSet2.add(controlledComposition);
                        }
                        list.clear();
                        if (mutableScatterSet.isNotEmpty() || recomposer2.compositionInvalidations.getSize() != 0) {
                            synchronized (recomposer2.stateLock) {
                                try {
                                    List listKnownCompositionsLocked = recomposer2.knownCompositionsLocked();
                                    int size3 = listKnownCompositionsLocked.size();
                                    for (int i3 = 0; i3 < size3; i3++) {
                                        ControlledComposition controlledComposition2 = (ControlledComposition) listKnownCompositionsLocked.get(i3);
                                        if (!mutableScatterSet2.contains(controlledComposition2) && controlledComposition2.observesAnyOf(set)) {
                                            list.add(controlledComposition2);
                                        }
                                    }
                                    MutableVector mutableVector2 = recomposer2.compositionInvalidations;
                                    int size4 = mutableVector2.getSize();
                                    int i4 = 0;
                                    int i5 = 0;
                                    while (true) {
                                        objArr = mutableVector2.content;
                                        if (i4 >= size4) {
                                            break;
                                        }
                                        ControlledComposition controlledComposition3 = (ControlledComposition) objArr[i4];
                                        if (!mutableScatterSet2.contains(controlledComposition3) && !list.contains(controlledComposition3)) {
                                            list.add(controlledComposition3);
                                            i5++;
                                        } else if (i5 > 0) {
                                            Object[] objArr3 = mutableVector2.content;
                                            objArr3[i4 - i5] = objArr3[i4];
                                        }
                                        i4++;
                                    }
                                    int i6 = size4 - i5;
                                    aq5.t(null, objArr, i6, size4);
                                    mutableVector2.setSize(i6);
                                    j59 j59Var4 = j59.a;
                                } catch (Throwable th3) {
                                    throw th3;
                                }
                            }
                        }
                        if (list.isEmpty()) {
                            try {
                                invokeSuspend$fillToInsert(list2, recomposer2);
                                while (!list2.isEmpty()) {
                                    mutableScatterSet3.plusAssign((Iterable) recomposer2.performInsertValues(list2, mutableScatterSet));
                                    invokeSuspend$fillToInsert(list2, recomposer2);
                                }
                            } catch (Throwable th4) {
                                Recomposer.processCompositionError$default(recomposer2, th4, null, true, 2, null);
                                invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                j59 j59Var5 = j59.a;
                                Trace.INSTANCE.endSection(objBeginSection2);
                                return j59Var5;
                            }
                        } else {
                            recomposer2 = recomposer;
                        }
                        z = false;
                    } catch (Throwable th5) {
                        try {
                            Recomposer.processCompositionError$default(recomposer, th5, null, true, 2, null);
                            invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                            j59 j59Var6 = j59.a;
                            list.clear();
                            Trace.INSTANCE.endSection(objBeginSection2);
                            return j59Var6;
                        } catch (Throwable th6) {
                            list.clear();
                            throw th6;
                        }
                    }
                    Trace.INSTANCE.endSection(objBeginSection2);
                    throw th;
                }
                Snapshot current = Snapshot.Companion.getCurrent();
                Snapshot transparentObserverMutableSnapshot = current instanceof MutableSnapshot ? new TransparentObserverMutableSnapshot((MutableSnapshot) current, null, null, true, false) : new TransparentObserverSnapshot(current, null, true, z);
                try {
                    Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
                    try {
                        if (!list3.isEmpty()) {
                            recomposer2.changeCount = recomposer2.getChangeCount() + 1;
                            try {
                                int size5 = list3.size();
                                for (?? r3 = z; r3 < size5; r3++) {
                                    mutableScatterSet4.add((ControlledComposition) list3.get(r3));
                                }
                                int size6 = list3.size();
                                for (?? r4 = z; r4 < size6; r4++) {
                                    ((ControlledComposition) list3.get(r4)).applyChanges();
                                }
                                list3.clear();
                            } catch (Throwable th7) {
                                try {
                                    Recomposer.processCompositionError$default(recomposer2, th7, null, false, 6, null);
                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                    j59 j59Var7 = j59.a;
                                    list3.clear();
                                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                    transparentObserverMutableSnapshot.dispose();
                                    Trace.INSTANCE.endSection(objBeginSection2);
                                    return j59Var7;
                                } catch (Throwable th8) {
                                    list3.clear();
                                    throw th8;
                                }
                            }
                        }
                        if (mutableScatterSet3.isNotEmpty()) {
                            try {
                                mutableScatterSet4.plusAssign((ScatterSet) mutableScatterSet3);
                                Object[] objArr4 = mutableScatterSet3.elements;
                                long[] jArr = mutableScatterSet3.metadata;
                                c = 7;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    ?? r5 = z;
                                    while (true) {
                                        long j3 = jArr[r5];
                                        j2 = 128;
                                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (r5 != length) {
                                                break;
                                                break;
                                            }
                                            r5++;
                                        } else {
                                            int i7 = 8 - ((~(r5 - length)) >>> 31);
                                            for (int i8 = 0; i8 < i7; i8++) {
                                                if ((j3 & 255) < 128) {
                                                    ((ControlledComposition) objArr4[(r5 << 3) + i8]).applyLateChanges();
                                                }
                                                j3 >>= 8;
                                            }
                                            if (i7 != 8) {
                                                break;
                                            }
                                            if (r5 != length) {
                                                break;
                                            }
                                            r5++;
                                        }
                                    }
                                } else {
                                    j2 = 128;
                                }
                                mutableScatterSet3.clear();
                            } catch (Throwable th9) {
                                try {
                                    Recomposer.processCompositionError$default(recomposer, th9, null, false, 6, null);
                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                    j59 j59Var8 = j59.a;
                                    mutableScatterSet3.clear();
                                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                    transparentObserverMutableSnapshot.dispose();
                                    Trace.INSTANCE.endSection(objBeginSection2);
                                    return j59Var8;
                                } catch (Throwable th10) {
                                    mutableScatterSet3.clear();
                                    throw th10;
                                }
                            }
                        } else {
                            c = 7;
                            j2 = 128;
                        }
                        if (mutableScatterSet4.isNotEmpty()) {
                            try {
                                Object[] objArr5 = mutableScatterSet4.elements;
                                long[] jArr2 = mutableScatterSet4.metadata;
                                int length2 = jArr2.length - 2;
                                if (length2 >= 0) {
                                    int i9 = 0;
                                    while (true) {
                                        long j4 = jArr2[i9];
                                        if ((((~j4) << c) & j4 & (-9187201950435737472L)) == -9187201950435737472L) {
                                            if (i9 != length2) {
                                                break;
                                                break;
                                            }
                                            i9++;
                                        } else {
                                            int i10 = 8 - ((~(i9 - length2)) >>> 31);
                                            for (int i11 = 0; i11 < i10; i11++) {
                                                if ((j4 & 255) < j2) {
                                                    ((ControlledComposition) objArr5[(i9 << 3) + i11]).changesApplied();
                                                }
                                                j4 >>= 8;
                                            }
                                            if (i10 != 8) {
                                                break;
                                            }
                                            if (i9 != length2) {
                                                break;
                                            }
                                            i9++;
                                        }
                                    }
                                }
                                mutableScatterSet4.clear();
                            } catch (Throwable th11) {
                                try {
                                    Recomposer.processCompositionError$default(recomposer, th11, null, false, 6, null);
                                    invokeSuspend$clearRecompositionState(recomposer, list, list2, list3, mutableScatterSet3, mutableScatterSet4, mutableScatterSet, mutableScatterSet2);
                                    j59 j59Var9 = j59.a;
                                    mutableScatterSet4.clear();
                                    transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                                    transparentObserverMutableSnapshot.dispose();
                                    Trace.INSTANCE.endSection(objBeginSection2);
                                    return j59Var9;
                                } catch (Throwable th12) {
                                    mutableScatterSet4.clear();
                                    throw th12;
                                }
                            }
                        }
                        j59 j59Var10 = j59.a;
                        transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                        transparentObserverMutableSnapshot.dispose();
                        synchronized (recomposer.stateLock) {
                            if (!(recomposer.deriveStateLocked() == null)) {
                                ComposerKt.composeImmediateRuntimeError("unexpected to get continuation here");
                            }
                        }
                        Snapshot.Companion.notifyObjectsInitialized();
                        mutableScatterSet2.clear();
                        mutableScatterSet.clear();
                        recomposer.compositionsRemoved = null;
                        Trace.INSTANCE.endSection(objBeginSection2);
                        return j59.a;
                    } catch (Throwable th13) {
                        transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                        throw th13;
                    }
                } catch (Throwable th14) {
                    transparentObserverMutableSnapshot.dispose();
                    throw th14;
                }
            } catch (Throwable th15) {
                Trace.INSTANCE.endSection(objBeginSection2);
                throw th15;
            }
        }

        @Override // defpackage.dm3
        public final Object invoke(y22 y22Var, MonotonicFrameClock monotonicFrameClock, e02<? super j59> e02Var) {
            C06202 c06202 = Recomposer.this.new C06202(e02Var);
            c06202.L$0 = monotonicFrameClock;
            return c06202.invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:14:0x00b9  */
        /* JADX WARN: Code duplicated, block: B:17:0x00d6  */
        /* JADX WARN: Code duplicated, block: B:20:0x00e4  */
        /* JADX WARN: Code duplicated, block: B:23:0x0106  */
        /* JADX WARN: Code duplicated, block: B:25:0x011e  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x0106 -> B:24:0x010f). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x011e -> B:12:0x00b1). Please report as a decompilation issue!!! */
        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        @Override // defpackage.cd0
        public final java.lang.Object invokeSuspend(java.lang.Object r18) {
            /*
                Method dump skipped, instruction units count: 299
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.compose.runtime.Recomposer.C06202.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public Recomposer(o22 o22Var) {
        int i = 4;
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new b80(this, i));
        this.broadcastFrameClock = broadcastFrameClock;
        this.nextFrameEndCallbackQueue = new NextFrameEndCallbackQueue(new jf(this, i));
        this.stateLock = new Object();
        this._knownCompositions = new ArrayList();
        this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
        this.compositionInvalidations = new MutableVector<>(new ControlledComposition[16], 0);
        this.compositionsAwaitingApply = new ArrayList();
        this.movableContentAwaitingInsert = new ArrayList();
        this.movableContentRemoved = MultiValueMap.m5372constructorimpl$default(null, 1, null);
        this.movableContentNestedStatesAvailable = new NestedContentMap();
        this.movableContentStatesAvailable = ScatterMapKt.mutableScatterMapOf();
        this.movableContentNestedExtractionsPending = MultiValueMap.m5372constructorimpl$default(null, 1, null);
        this.errorState = px.a(null);
        this._state = px.a(State.Inactive);
        this.pausedScopes = new SnapshotThreadLocal<>();
        nb4 nb4Var = new nb4((mb4) o22Var.get(mb4.a.b));
        nb4Var.g(new qq5(this, 1));
        this.effectJob = nb4Var;
        this.effectCoroutineContext = o22Var.plus(broadcastFrameClock).plus(nb4Var);
        this.recomposerInfo = new RecomposerInfoImpl();
    }

    private final void addKnownCompositionLocked(ControlledComposition controlledComposition) {
        this._knownCompositions.add(controlledComposition);
        this._knownCompositionsCache = null;
    }

    private final void applyAndCheck(MutableSnapshot mutableSnapshot) {
        try {
            if (mutableSnapshot.apply() instanceof SnapshotApplyResult.Failure) {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
            mutableSnapshot.dispose();
        } catch (Throwable th) {
            mutableSnapshot.dispose();
            throw th;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object awaitWorkAvailable(e02<? super j59> e02Var) throws Throwable {
        c31 c31Var;
        if (getHasSchedulingWork()) {
            return j59.a;
        }
        c31 c31Var2 = new c31(1, zya.b(e02Var));
        c31Var2.u();
        synchronized (this.stateLock) {
            if (getHasSchedulingWork()) {
                c31Var = c31Var2;
            } else {
                this.workContinuation = c31Var2;
                c31Var = null;
            }
        }
        if (c31Var != null) {
            c31Var.resumeWith(j59.a);
        }
        Object objS = c31Var2.s();
        return objS == a32.COROUTINE_SUSPENDED ? objS : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 broadcastFrameClock$lambda$0(Recomposer recomposer) {
        recomposer.onNewFrameAwaiter();
        return j59.a;
    }

    private final void clearKnownCompositionsLocked() {
        List<ControlledComposition> listKnownCompositionsLocked = knownCompositionsLocked();
        int size = listKnownCompositionsLocked.size();
        for (int i = 0; i < size; i++) {
            unregisterCompositionLocked(listKnownCompositionsLocked.get(i));
        }
        this._knownCompositions.clear();
        this._knownCompositionsCache = kx2.b;
    }

    private final <T> T composing(ControlledComposition controlledComposition, MutableScatterSet<Object> mutableScatterSet, ll3<? extends T> ll3Var) {
        MutableSnapshot mutableSnapshotTakeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
        try {
            Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot.makeCurrent();
            try {
                T tInvoke = ll3Var.invoke();
                mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                applyAndCheck(mutableSnapshotTakeMutableSnapshot);
                return tInvoke;
            } catch (Throwable th) {
                mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                throw th;
            }
        } catch (Throwable th2) {
            applyAndCheck(mutableSnapshotTakeMutableSnapshot);
            throw th2;
        }
    }

    private static final void deletedMovableContent$lambda$0$recordNestedStatesOf(Recomposer recomposer, MovableContentStateReference movableContentStateReference, MovableContentStateReference movableContentStateReference2) {
        List<MovableContentStateReference> nestedReferences$runtime = movableContentStateReference2.getNestedReferences$runtime();
        if (nestedReferences$runtime != null) {
            int size = nestedReferences$runtime.size();
            for (int i = 0; i < size; i++) {
                MovableContentStateReference movableContentStateReference3 = nestedReferences$runtime.get(i);
                recomposer.movableContentNestedStatesAvailable.add(movableContentStateReference3.getContent$runtime(), new NestedMovableContent(movableContentStateReference3, movableContentStateReference));
                deletedMovableContent$lambda$0$recordNestedStatesOf(recomposer, movableContentStateReference, movableContentStateReference3);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a31<j59> deriveStateLocked() {
        State state;
        if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
            clearKnownCompositionsLocked();
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            this.compositionInvalidations.clear();
            this.compositionsAwaitingApply.clear();
            this.movableContentAwaitingInsert.clear();
            this.failedCompositions = null;
            a31<? super j59> a31Var = this.workContinuation;
            if (a31Var != null) {
                a31Var.d(null);
            }
            this.workContinuation = null;
            this.errorState.setValue(null);
            return null;
        }
        if (this.errorState.getValue() != null) {
            state = State.Inactive;
        } else if (this.runnerJob == null) {
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            this.compositionInvalidations.clear();
            state = (getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked()) ? State.InactivePendingWork : State.Inactive;
        } else {
            state = (this.compositionInvalidations.getSize() == 0 && !this.snapshotInvalidations.isNotEmpty() && this.compositionsAwaitingApply.isEmpty() && this.movableContentAwaitingInsert.isEmpty() && this.concurrentCompositionsOutstanding <= 0 && !getHasBroadcastFrameClockAwaitersLocked() && !getHasNextFrameEndAwaitersLocked() && !MultiValueMap.m5381isNotEmptyimpl(this.movableContentRemoved)) ? State.Idle : State.PendingWork;
        }
        this._state.setValue(state);
        if (state != State.PendingWork) {
            return null;
        }
        a31 a31Var2 = this.workContinuation;
        this.workContinuation = null;
        return a31Var2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final void discardUnusedMovableContentState() {
        int i;
        ObjectList objectListEmptyObjectList;
        synchronized (this.stateLock) {
            try {
                if (MultiValueMap.m5381isNotEmptyimpl(this.movableContentRemoved)) {
                    ObjectList objectListM5386valuesimpl = MultiValueMap.m5386valuesimpl(this.movableContentRemoved);
                    MultiValueMap.m5370clearimpl(this.movableContentRemoved);
                    this.movableContentNestedStatesAvailable.clear();
                    MultiValueMap.m5370clearimpl(this.movableContentNestedExtractionsPending);
                    MutableObjectList mutableObjectList = new MutableObjectList(objectListM5386valuesimpl.getSize());
                    Object[] objArr = objectListM5386valuesimpl.content;
                    int i2 = objectListM5386valuesimpl._size;
                    for (int i3 = 0; i3 < i2; i3++) {
                        MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr[i3];
                        mutableObjectList.add(new b36(movableContentStateReference, this.movableContentStatesAvailable.get(movableContentStateReference)));
                    }
                    this.movableContentStatesAvailable.clear();
                    objectListEmptyObjectList = mutableObjectList;
                } else {
                    objectListEmptyObjectList = ObjectListKt.emptyObjectList();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Object[] objArr2 = objectListEmptyObjectList.content;
        int i4 = objectListEmptyObjectList._size;
        for (i = 0; i < i4; i++) {
            b36 b36Var = (b36) objArr2[i];
            MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) b36Var.b;
            MovableContentState movableContentState = (MovableContentState) b36Var.c;
            if (movableContentState != null) {
                movableContentStateReference2.getComposition$runtime().disposeUnusedMovableContent(movableContentState);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 effectJob$lambda$0$0(Recomposer recomposer, Throwable th) {
        a31<? super j59> a31Var;
        a31<? super j59> a31Var2;
        CancellationException cancellationExceptionA = pib.a("Recomposer effect job completed", th);
        synchronized (recomposer.stateLock) {
            try {
                mb4 mb4Var = recomposer.runnerJob;
                a31Var = null;
                if (mb4Var != null) {
                    recomposer._state.setValue(State.ShuttingDown);
                    if (recomposer.isClosed) {
                        a31Var2 = recomposer.workContinuation;
                        if (a31Var2 != null) {
                        }
                        recomposer.workContinuation = null;
                        mb4Var.g(new x26(1, recomposer, th));
                        a31Var = a31Var2;
                    } else {
                        mb4Var.cancel(cancellationExceptionA);
                    }
                    a31Var2 = null;
                    recomposer.workContinuation = null;
                    mb4Var.g(new x26(1, recomposer, th));
                    a31Var = a31Var2;
                } else {
                    recomposer.closeCause = cancellationExceptionA;
                    recomposer._state.setValue(State.ShutDown);
                    j59 j59Var = j59.a;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        if (a31Var != null) {
            a31Var.resumeWith(j59.a);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 effectJob$lambda$0$0$0$0(Recomposer recomposer, Throwable th, Throwable th2) {
        synchronized (recomposer.stateLock) {
            if (th == null) {
                th = null;
            } else if (th2 != null) {
                try {
                    if (th2 instanceof CancellationException) {
                        th2 = null;
                    }
                    if (th2 != null) {
                        sj0.c(th, th2);
                    }
                } catch (Throwable th3) {
                    throw th3;
                }
            }
            recomposer.closeCause = th;
            recomposer._state.setValue(State.ShutDown);
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasBroadcastFrameClockAwaiters() {
        boolean hasBroadcastFrameClockAwaitersLocked;
        synchronized (this.stateLock) {
            hasBroadcastFrameClockAwaitersLocked = getHasBroadcastFrameClockAwaitersLocked();
        }
        return hasBroadcastFrameClockAwaitersLocked;
    }

    private final boolean getHasBroadcastFrameClockAwaitersLocked() {
        return !this.frameClockPaused && this.broadcastFrameClock.getHasAwaiters();
    }

    private final boolean getHasFrameWorkLocked() {
        return this.compositionInvalidations.getSize() != 0 || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || MultiValueMap.m5381isNotEmptyimpl(this.movableContentRemoved);
    }

    private final boolean getHasNextFrameEndAwaitersLocked() {
        return !this.frameClockPaused && this.nextFrameEndCallbackQueue.getHasAwaiters();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getHasSchedulingWork() {
        boolean z;
        synchronized (this.stateLock) {
            z = this.snapshotInvalidations.isNotEmpty() || this.compositionInvalidations.getSize() != 0 || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked();
        }
        return z;
    }

    private static /* synthetic */ void getRegistrationObservers$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean getShouldKeepRecomposing() {
        boolean z;
        synchronized (this.stateLock) {
            z = this.isClosed;
        }
        if (!z) {
            return true;
        }
        Iterator<mb4> it = this.effectJob.v().iterator();
        while (it.hasNext()) {
            if (it.next().isActive()) {
                return true;
            }
        }
        return false;
    }

    @ul2
    public static /* synthetic */ void getState$annotations() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositions() {
        List<ControlledComposition> listKnownCompositionsLocked;
        synchronized (this.stateLock) {
            listKnownCompositionsLocked = knownCompositionsLocked();
        }
        return listKnownCompositionsLocked;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final List<ControlledComposition> knownCompositionsLocked() {
        List list = this._knownCompositionsCache;
        if (list != null) {
            return list;
        }
        List<ControlledComposition> list2 = this._knownCompositions;
        List<ControlledComposition> arrayList = list2.isEmpty() ? kx2.b : new ArrayList(list2);
        this._knownCompositionsCache = arrayList;
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 nextFrameEndCallbackQueue$lambda$0(Recomposer recomposer) {
        recomposer.onNewFrameAwaiter();
        return j59.a;
    }

    private final void onNewFrameAwaiter() {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            a31VarDeriveStateLocked = deriveStateLocked();
            if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                throw pib.a("Recomposer shutdown; frame clock awaiter will never resume", this.closeCause);
            }
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    private final void performInitialMovableContentInserts(ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            List<MovableContentStateReference> list = this.movableContentAwaitingInsert;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (aa4.e(list.get(i).getComposition$runtime(), controlledComposition)) {
                    j59 j59Var = j59.a;
                    ArrayList arrayList = new ArrayList();
                    performInitialMovableContentInserts$fillToInsert(arrayList, this, controlledComposition);
                    while (!arrayList.isEmpty()) {
                        performInsertValues(arrayList, null);
                        performInitialMovableContentInserts$fillToInsert(arrayList, this, controlledComposition);
                    }
                    return;
                }
            }
        }
    }

    private static final void performInitialMovableContentInserts$fillToInsert(List<MovableContentStateReference> list, Recomposer recomposer, ControlledComposition controlledComposition) {
        list.clear();
        synchronized (recomposer.stateLock) {
            try {
                Iterator<MovableContentStateReference> it = recomposer.movableContentAwaitingInsert.iterator();
                while (it.hasNext()) {
                    MovableContentStateReference next = it.next();
                    if (aa4.e(next.getComposition$runtime(), controlledComposition)) {
                        list.add(next);
                        it.remove();
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public final List<ControlledComposition> performInsertValues(List<MovableContentStateReference> list, MutableScatterSet<Object> mutableScatterSet) {
        ArrayList arrayList;
        NestedMovableContent nestedMovableContentRemoveLast;
        HashMap map = new HashMap(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            MovableContentStateReference movableContentStateReference = list.get(i);
            ControlledComposition composition$runtime = movableContentStateReference.getComposition$runtime();
            Object arrayList2 = map.get(composition$runtime);
            if (arrayList2 == null) {
                arrayList2 = new ArrayList();
                map.put(composition$runtime, arrayList2);
            }
            ((ArrayList) arrayList2).add(movableContentStateReference);
        }
        for (Map.Entry entry : map.entrySet()) {
            ControlledComposition controlledComposition = (ControlledComposition) entry.getKey();
            List list2 = (List) entry.getValue();
            if (controlledComposition.isComposing()) {
                ComposerKt.composeImmediateRuntimeError("Check failed");
            }
            MutableSnapshot mutableSnapshotTakeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
            try {
                Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot.makeCurrent();
                try {
                    synchronized (this.stateLock) {
                        try {
                            arrayList = new ArrayList(list2.size());
                            int size2 = list2.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                MovableContentStateReference movableContentStateReference2 = (MovableContentStateReference) list2.get(i2);
                                Object objM5383removeLastimpl = MultiValueMap.m5383removeLastimpl(this.movableContentRemoved, movableContentStateReference2.getContent$runtime());
                                MovableContentStateReference movableContentStateReference3 = (MovableContentStateReference) objM5383removeLastimpl;
                                if (movableContentStateReference3 != null) {
                                    this.movableContentNestedStatesAvailable.usedContainer(movableContentStateReference3);
                                }
                                arrayList.add(new b36(movableContentStateReference2, objM5383removeLastimpl));
                            }
                            int size3 = arrayList.size();
                            for (int i3 = 0; i3 < size3; i3++) {
                                b36 b36Var = (b36) arrayList.get(i3);
                                if (b36Var.c == 0 && this.movableContentNestedStatesAvailable.contains(((MovableContentStateReference) b36Var.b).getContent$runtime())) {
                                    ArrayList arrayList3 = new ArrayList(arrayList.size());
                                    int size4 = arrayList.size();
                                    for (int i4 = 0; i4 < size4; i4++) {
                                        b36 b36Var2 = (b36) arrayList.get(i4);
                                        if (b36Var2.c == 0 && (nestedMovableContentRemoveLast = this.movableContentNestedStatesAvailable.removeLast(((MovableContentStateReference) b36Var2.b).getContent$runtime())) != null) {
                                            MovableContentStateReference content = nestedMovableContentRemoveLast.getContent();
                                            MultiValueMap.m5368addimpl(this.movableContentNestedExtractionsPending, nestedMovableContentRemoveLast.getContainer(), content);
                                            b36Var2 = new b36(b36Var2.b, content);
                                        }
                                        arrayList3.add(b36Var2);
                                    }
                                    arrayList = arrayList3;
                                    break;
                                }
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    int size5 = arrayList.size();
                    for (int i5 = 0; i5 < size5; i5++) {
                        if (((b36) arrayList.get(i5)).c != 0) {
                            int size6 = arrayList.size();
                            for (int i6 = 0; i6 < size6; i6++) {
                                if (((b36) arrayList.get(i6)).c == 0) {
                                    ArrayList arrayList4 = new ArrayList(arrayList.size());
                                    int size7 = arrayList.size();
                                    for (int i7 = 0; i7 < size7; i7++) {
                                        b36 b36Var3 = (b36) arrayList.get(i7);
                                        MovableContentStateReference movableContentStateReference4 = b36Var3.c == 0 ? (MovableContentStateReference) b36Var3.b : null;
                                        if (movableContentStateReference4 != null) {
                                            arrayList4.add(movableContentStateReference4);
                                        }
                                    }
                                    synchronized (this.stateLock) {
                                        nn1.s(arrayList4, this.movableContentAwaitingInsert);
                                        j59 j59Var = j59.a;
                                    }
                                    ArrayList arrayList5 = new ArrayList(arrayList.size());
                                    int size8 = arrayList.size();
                                    for (int i8 = 0; i8 < size8; i8++) {
                                        Object obj = arrayList.get(i8);
                                        if (((b36) obj).c != 0) {
                                            arrayList5.add(obj);
                                        }
                                    }
                                    arrayList = arrayList5;
                                    break;
                                }
                            }
                            break;
                        }
                    }
                    controlledComposition.insertMovableContent(arrayList);
                    j59 j59Var2 = j59.a;
                    mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    applyAndCheck(mutableSnapshotTakeMutableSnapshot);
                } catch (Throwable th2) {
                    mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    throw th2;
                }
            } catch (Throwable th3) {
                applyAndCheck(mutableSnapshotTakeMutableSnapshot);
                throw th3;
            }
        }
        return qn1.t0(map.keySet());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final ControlledComposition performRecompose(ControlledComposition controlledComposition, MutableScatterSet<Object> mutableScatterSet) {
        if (controlledComposition.isComposing() || controlledComposition.isDisposed()) {
            return null;
        }
        MutableScatterSet<ControlledComposition> mutableScatterSet2 = this.compositionsRemoved;
        int i = 1;
        if (mutableScatterSet2 != null && mutableScatterSet2.contains(controlledComposition)) {
            return null;
        }
        MutableSnapshot mutableSnapshotTakeMutableSnapshot = Snapshot.Companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, mutableScatterSet));
        try {
            Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot.makeCurrent();
            if (mutableScatterSet != null) {
                try {
                    if (mutableScatterSet.isNotEmpty()) {
                        controlledComposition.prepareCompose(new vf0(i, mutableScatterSet, controlledComposition));
                    }
                } catch (Throwable th) {
                    mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    throw th;
                }
            }
            boolean zRecompose = controlledComposition.recompose();
            mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
            applyAndCheck(mutableSnapshotTakeMutableSnapshot);
            if (zRecompose) {
                return controlledComposition;
            }
            return null;
        } catch (Throwable th2) {
            applyAndCheck(mutableSnapshotTakeMutableSnapshot);
            throw th2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:14:0x003e A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:15:0x0040 A[LOOP:0: B:5:0x000b->B:15:0x0040, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:19:0x0043 A[EDGE_INSN: B:19:0x0043->B:16:0x0043 BREAK  A[LOOP:0: B:5:0x000b->B:15:0x0040], SYNTHETIC] */
    public static final j59 performRecompose$lambda$0$0(MutableScatterSet mutableScatterSet, ControlledComposition controlledComposition) {
        Object[] objArr = mutableScatterSet.elements;
        long[] jArr = mutableScatterSet.metadata;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                    if (i != length) {
                        break;
                        break;
                    }
                    i++;
                } else {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            controlledComposition.recordWriteOf(objArr[(i << 3) + i3]);
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                    if (i != length) {
                        break;
                    }
                    i++;
                }
            }
        }
        return j59.a;
    }

    private final void processCompositionError(Throwable th, ControlledComposition controlledComposition, boolean z) throws Throwable {
        if (!_hotReloadEnabled.get().booleanValue() || (th instanceof ComposeRuntimeError)) {
            synchronized (this.stateLock) {
                Utils_androidKt.logError("Error was captured in composition.", th);
                RecomposerErrorState value = this.errorState.getValue();
                if (value != null) {
                    throw value.getCause();
                }
                this.errorState.setValue(new RecomposerErrorState(th, false));
                j59 j59Var = j59.a;
            }
            throw th;
        }
        synchronized (this.stateLock) {
            try {
                Utils_androidKt.logError("Error was captured in composition while live edit was enabled.", th);
                this.compositionsAwaitingApply.clear();
                this.compositionInvalidations.clear();
                this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
                this.movableContentAwaitingInsert.clear();
                MultiValueMap.m5370clearimpl(this.movableContentRemoved);
                this.movableContentStatesAvailable.clear();
                this.errorState.setValue(new RecomposerErrorState(th, z));
                if (controlledComposition != null) {
                    recordFailedCompositionLocked(controlledComposition);
                }
                if (deriveStateLocked() != null) {
                    ComposerKt.composeImmediateRuntimeError("expected to go to inactive state due to composition error");
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public static /* synthetic */ void processCompositionError$default(Recomposer recomposer, Throwable th, ControlledComposition controlledComposition, boolean z, int i, Object obj) throws Throwable {
        if ((i & 2) != 0) {
            controlledComposition = null;
        }
        if ((i & 4) != 0) {
            z = false;
        }
        recomposer.processCompositionError(th, controlledComposition, z);
    }

    private final nl3<Object, j59> readObserverOf(ControlledComposition controlledComposition) {
        return new rf0(controlledComposition, 4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 readObserverOf$lambda$0(ControlledComposition controlledComposition, Object obj) {
        controlledComposition.recordReadOf(obj);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object recompositionRunner(dm3<? super y22, ? super MonotonicFrameClock, ? super e02<? super j59>, ? extends Object> dm3Var, e02<? super j59> e02Var) throws Throwable {
        Object objD = av0.d(this.broadcastFrameClock, new C06192(dm3Var, MonotonicFrameClockKt.getMonotonicFrameClock(e02Var.getContext()), null), e02Var);
        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean recordComposerModifications() {
        boolean hasFrameWorkLocked;
        synchronized (this.stateLock) {
            if (this.snapshotInvalidations.isEmpty()) {
                return getHasFrameWorkLocked();
            }
            List<ControlledComposition> listKnownCompositionsLocked = knownCompositionsLocked();
            Set<? extends Object> setWrapIntoSet = ScatterSetWrapperKt.wrapIntoSet(this.snapshotInvalidations);
            this.snapshotInvalidations = new MutableScatterSet<>(0, 1, null);
            try {
                int size = listKnownCompositionsLocked.size();
                for (int i = 0; i < size; i++) {
                    listKnownCompositionsLocked.get(i).recordModificationsOf(setWrapIntoSet);
                    if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                        break;
                    }
                }
                synchronized (this.stateLock) {
                    if (deriveStateLocked() != null) {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                    hasFrameWorkLocked = getHasFrameWorkLocked();
                }
                return hasFrameWorkLocked;
            } catch (Throwable th) {
                synchronized (this.stateLock) {
                    this.snapshotInvalidations.addAll(setWrapIntoSet);
                    throw th;
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void recordFailedCompositionLocked(ControlledComposition controlledComposition) {
        List arrayList = this.failedCompositions;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.failedCompositions = arrayList;
        }
        if (!arrayList.contains(controlledComposition)) {
            arrayList.add(controlledComposition);
        }
        removeKnownCompositionLocked(controlledComposition);
    }

    private final void registerCompositionLocked(ControlledComposition controlledComposition) {
        MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
        if (mutableObjectList != null) {
            Object[] objArr = mutableObjectList.content;
            int i = mutableObjectList._size;
            for (int i2 = 0; i2 < i; i2++) {
                CompositionRegistrationObserver compositionRegistrationObserver = (CompositionRegistrationObserver) objArr[i2];
                if (controlledComposition instanceof ObservableComposition) {
                    compositionRegistrationObserver.onCompositionRegistered((ObservableComposition) controlledComposition);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void registerRunnerJob(mb4 mb4Var) {
        synchronized (this.stateLock) {
            try {
                Throwable th = this.closeCause;
                if (th != null) {
                    throw th;
                }
                if (this._state.getValue().compareTo(State.ShuttingDown) <= 0) {
                    throw new IllegalStateException("Recomposer shut down");
                }
                if (this.runnerJob != null) {
                    throw new IllegalStateException("Recomposer already running");
                }
                this.runnerJob = mb4Var;
                if (deriveStateLocked() != null) {
                    ComposerKt.composeImmediateRuntimeError("called outside of runRecomposeAndApplyChanges");
                }
                j59 j59Var = j59.a;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    private final void removeKnownCompositionLocked(ControlledComposition controlledComposition) {
        if (this._knownCompositions.remove(controlledComposition)) {
            this._knownCompositionsCache = null;
            unregisterCompositionLocked(controlledComposition);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final RecomposerErrorState resetErrorState() {
        RecomposerErrorState value;
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            value = this.errorState.getValue();
            a31VarDeriveStateLocked = null;
            if (value != null) {
                this.errorState.setValue(null);
                a31VarDeriveStateLocked = deriveStateLocked();
            }
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
        return value;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void retryFailedCompositions() {
        List<ControlledComposition> list;
        int i;
        synchronized (this.stateLock) {
            list = this.failedCompositions;
            this.failedCompositions = null;
        }
        if (list == null) {
            return;
        }
        while (true) {
            i = 0;
            try {
                if (list.isEmpty()) {
                    break;
                }
                ControlledComposition controlledComposition = (ControlledComposition) nn1.E(list);
                if (controlledComposition instanceof CompositionImpl) {
                    ((CompositionImpl) controlledComposition).invalidateAll();
                    ((CompositionImpl) controlledComposition).setContent(((CompositionImpl) controlledComposition).getComposable());
                    if (this.errorState.getValue() != null) {
                        break;
                    }
                }
            } catch (Throwable th) {
                if (!list.isEmpty()) {
                    synchronized (this.stateLock) {
                        try {
                            int size = list.size();
                            while (i < size) {
                                recordFailedCompositionLocked(list.get(i));
                                i++;
                            }
                            j59 j59Var = j59.a;
                        } catch (Throwable th2) {
                            throw th2;
                        }
                    }
                }
                throw th;
            }
        }
        if (list.isEmpty()) {
            return;
        }
        synchronized (this.stateLock) {
            try {
                int size2 = list.size();
                while (i < size2) {
                    recordFailedCompositionLocked(list.get(i));
                    i++;
                }
                j59 j59Var2 = j59.a;
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    private final void unregisterCompositionLocked(ControlledComposition controlledComposition) {
        MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
        if (mutableObjectList != null) {
            Object[] objArr = mutableObjectList.content;
            int i = mutableObjectList._size;
            for (int i2 = 0; i2 < i; i2++) {
                CompositionRegistrationObserver compositionRegistrationObserver = (CompositionRegistrationObserver) objArr[i2];
                if (controlledComposition instanceof ObservableComposition) {
                    compositionRegistrationObserver.onCompositionUnregistered((ObservableComposition) controlledComposition);
                }
            }
        }
    }

    private final void withTransparentSnapshot(ll3<j59> ll3Var) {
        Snapshot current = Snapshot.Companion.getCurrent();
        Snapshot transparentObserverMutableSnapshot = current instanceof MutableSnapshot ? new TransparentObserverMutableSnapshot((MutableSnapshot) current, null, null, true, false) : new TransparentObserverSnapshot(current, null, true, false);
        try {
            Snapshot snapshotMakeCurrent = transparentObserverMutableSnapshot.makeCurrent();
            try {
                ll3Var.invoke();
                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                transparentObserverMutableSnapshot.dispose();
            } catch (Throwable th) {
                transparentObserverMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                throw th;
            }
        } catch (Throwable th2) {
            transparentObserverMutableSnapshot.dispose();
            throw th2;
        }
    }

    private final nl3<Object, j59> writeObserverOf(ControlledComposition controlledComposition, MutableScatterSet<Object> mutableScatterSet) {
        return new sz6(0, controlledComposition, mutableScatterSet);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 writeObserverOf$lambda$0(ControlledComposition controlledComposition, MutableScatterSet mutableScatterSet, Object obj) {
        controlledComposition.recordWriteOf(obj);
        if (mutableScatterSet != null) {
            mutableScatterSet.add(obj);
        }
        return j59.a;
    }

    public final CompositionObserverHandle addCompositionRegistrationObserver$runtime(final CompositionRegistrationObserver compositionRegistrationObserver) {
        synchronized (this.stateLock) {
            try {
                MutableObjectList<CompositionRegistrationObserver> mutableObjectList = this.registrationObservers;
                if (mutableObjectList == null) {
                    mutableObjectList = new MutableObjectList<>(0, 1, null);
                    this.registrationObservers = mutableObjectList;
                }
                mutableObjectList.add(compositionRegistrationObserver);
                List<ControlledComposition> list = this._knownCompositions;
                int size = list.size();
                for (int i = 0; i < size; i++) {
                    ControlledComposition controlledComposition = list.get(i);
                    if (controlledComposition instanceof ObservableComposition) {
                        compositionRegistrationObserver.onCompositionRegistered((ObservableComposition) controlledComposition);
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        return new CompositionObserverHandle() { // from class: androidx.compose.runtime.Recomposer$addCompositionRegistrationObserver$2
            @Override // androidx.compose.runtime.tooling.CompositionObserverHandle
            public void dispose() {
                Object obj = this.this$0.stateLock;
                Recomposer recomposer = this.this$0;
                CompositionRegistrationObserver compositionRegistrationObserver2 = compositionRegistrationObserver;
                synchronized (obj) {
                    MutableObjectList mutableObjectList2 = recomposer.registrationObservers;
                    if (mutableObjectList2 != null) {
                        mutableObjectList2.remove(compositionRegistrationObserver2);
                    }
                }
            }
        };
    }

    public final RecomposerInfo asRecomposerInfo() {
        return this.recomposerInfo;
    }

    public final Object awaitIdle(e02<? super j59> e02Var) {
        Object objCollect = new pe3(getCurrentState(), new AnonymousClass2(null)).collect(lo5.b, e02Var);
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        if (objCollect != a32Var) {
            objCollect = j59.a;
        }
        return objCollect == a32Var ? objCollect : j59.a;
    }

    public final void cancel() {
        synchronized (this.stateLock) {
            try {
                if (this._state.getValue().compareTo(State.Idle) >= 0) {
                    this._state.setValue(State.ShuttingDown);
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.effectJob.cancel(null);
    }

    public final void close() {
        if (this.effectJob.complete()) {
            synchronized (this.stateLock) {
                this.isClosed = true;
                j59 j59Var = j59.a;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void composeInitial$runtime(ControlledComposition controlledComposition, bm3<? super Composer, ? super Integer, j59> bm3Var) throws Throwable {
        State state;
        boolean z;
        boolean zIsComposing = controlledComposition.isComposing();
        synchronized (this.stateLock) {
            State value = this._state.getValue();
            state = State.ShuttingDown;
            if (value.compareTo(state) > 0) {
                boolean zContains = knownCompositionsLocked().contains(controlledComposition);
                z = !zContains;
                if (!zContains) {
                    registerCompositionLocked(controlledComposition);
                }
            } else {
                z = true;
            }
        }
        try {
            Snapshot.Companion companion = Snapshot.Companion;
            MutableSnapshot mutableSnapshotTakeMutableSnapshot = companion.takeMutableSnapshot(readObserverOf(controlledComposition), writeObserverOf(controlledComposition, null));
            try {
                Snapshot snapshotMakeCurrent = mutableSnapshotTakeMutableSnapshot.makeCurrent();
                try {
                    controlledComposition.composeContent(bm3Var);
                    j59 j59Var = j59.a;
                    mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                    applyAndCheck(mutableSnapshotTakeMutableSnapshot);
                    synchronized (this.stateLock) {
                        try {
                            if (this._state.getValue().compareTo(state) <= 0) {
                                unregisterCompositionLocked(controlledComposition);
                            } else if (!knownCompositionsLocked().contains(controlledComposition)) {
                                addKnownCompositionLocked(controlledComposition);
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    if (!zIsComposing) {
                        companion.notifyObjectsInitialized();
                    }
                    try {
                        performInitialMovableContentInserts(controlledComposition);
                        try {
                            controlledComposition.applyChanges();
                            controlledComposition.applyLateChanges();
                            if (zIsComposing) {
                                return;
                            }
                            companion.notifyObjectsInitialized();
                        } catch (Throwable th2) {
                            processCompositionError$default(this, th2, null, false, 6, null);
                        }
                    } catch (Throwable th3) {
                        processCompositionError(th3, controlledComposition, true);
                    }
                } catch (Throwable th4) {
                    try {
                        mutableSnapshotTakeMutableSnapshot.restoreCurrent(snapshotMakeCurrent);
                        throw th4;
                    } catch (Throwable th5) {
                        th = th5;
                        Throwable th6 = th;
                        try {
                            applyAndCheck(mutableSnapshotTakeMutableSnapshot);
                            throw th6;
                        } catch (Throwable th7) {
                            th = th7;
                            Throwable th8 = th;
                            if (z) {
                                synchronized (this.stateLock) {
                                    this.unregisterCompositionLocked(controlledComposition);
                                    j59 j59Var2 = j59.a;
                                }
                            }
                            this.processCompositionError(th8, controlledComposition, true);
                        }
                    }
                }
            } catch (Throwable th9) {
                th = th9;
            }
        } catch (Throwable th10) {
            th = th10;
            this = this;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public ScatterSet<RecomposeScopeImpl> composeInitialPaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, bm3<? super Composer, ? super Integer, j59> bm3Var) {
        try {
            ShouldPauseCallback andSetShouldPauseCallback = controlledComposition.getAndSetShouldPauseCallback(shouldPauseCallback);
            try {
                composeInitial$runtime(controlledComposition, bm3Var);
                ScatterSet<RecomposeScopeImpl> scatterSetEmptyScatterSet = (MutableScatterSet) this.pausedScopes.get();
                if (scatterSetEmptyScatterSet == null) {
                    scatterSetEmptyScatterSet = ScatterSetKt.emptyScatterSet();
                }
                controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
                this.pausedScopes.set(null);
                return scatterSetEmptyScatterSet;
            } catch (Throwable th) {
                controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
                throw th;
            }
        } catch (Throwable th2) {
            this.pausedScopes.set(null);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void deletedMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            try {
                MultiValueMap.m5368addimpl(this.movableContentRemoved, movableContentStateReference.getContent$runtime(), movableContentStateReference);
                if (movableContentStateReference.getNestedReferences$runtime() != null) {
                    deletedMovableContent$lambda$0$recordNestedStatesOf(this, movableContentStateReference, movableContentStateReference);
                }
                a31VarDeriveStateLocked = deriveStateLocked();
            } catch (Throwable th) {
                throw th;
            }
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    public final long getChangeCount() {
        return this.changeCount;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingCallByInformation$runtime() {
        return _hotReloadEnabled.get().booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingParameterInformation$runtime() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getCollectingSourceInformation$runtime() {
        return ComposeStackTraceMode.m5647equalsimpl0(ComposerKt.getComposeStackTraceMode(), ComposeStackTraceMode.Companion.m5654getSourceInformationMD5MrJc());
    }

    @Override // androidx.compose.runtime.CompositionContext
    public long getCompositeKeyHashCode$runtime() {
        return 1000L;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public Composition getComposition$runtime() {
        return null;
    }

    public final y68<State> getCurrentState() {
        return this._state;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public o22 getEffectCoroutineContext() {
        return this.effectCoroutineContext;
    }

    public final boolean getHasPendingWork() {
        boolean z;
        synchronized (this.stateLock) {
            z = this.snapshotInvalidations.isNotEmpty() || this.compositionInvalidations.getSize() != 0 || this.concurrentCompositionsOutstanding > 0 || !this.compositionsAwaitingApply.isEmpty() || getHasBroadcastFrameClockAwaitersLocked() || getHasNextFrameEndAwaitersLocked() || MultiValueMap.m5381isNotEmptyimpl(this.movableContentRemoved);
        }
        return z;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public boolean getStackTraceEnabled$runtime() {
        return !ComposeStackTraceMode.m5647equalsimpl0(ComposerKt.getComposeStackTraceMode(), ComposeStackTraceMode.Companion.m5653getNoneMD5MrJc());
    }

    public final hd3<State> getState() {
        return getCurrentState();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void insertMovableContent$runtime(MovableContentStateReference movableContentStateReference) {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            this.movableContentAwaitingInsert.add(movableContentStateReference);
            a31VarDeriveStateLocked = deriveStateLocked();
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidate$runtime(ControlledComposition controlledComposition) {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            if (this.compositionInvalidations.contains(controlledComposition)) {
                a31VarDeriveStateLocked = null;
            } else {
                this.compositionInvalidations.add(controlledComposition);
                a31VarDeriveStateLocked = deriveStateLocked();
            }
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void invalidateScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            this.snapshotInvalidations.add(recomposeScopeImpl);
            a31VarDeriveStateLocked = deriveStateLocked();
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    public final Object join(e02<? super j59> e02Var) {
        Object objB = ue3.b(getCurrentState(), new C06182(null), e02Var);
        return objB == a32.COROUTINE_SUSPENDED ? objB : j59.a;
    }

    /* JADX WARN: Code duplicated, block: B:20:0x006f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:21:0x0071 A[Catch: all -> 0x0067, LOOP:0: B:9:0x0031->B:21:0x0071, LOOP_END, TryCatch #0 {all -> 0x0067, blocks: (B:4:0x0007, B:6:0x001a, B:9:0x0031, B:11:0x0041, B:13:0x004d, B:15:0x0056, B:18:0x0069, B:21:0x0071, B:22:0x0074), top: B:27:0x0007 }] */
    /* JADX WARN: Code duplicated, block: B:30:0x0074 A[EDGE_INSN: B:30:0x0074->B:22:0x0074 BREAK  A[LOOP:0: B:9:0x0031->B:21:0x0071], SYNTHETIC] */
    @Override // androidx.compose.runtime.CompositionContext
    public void movableContentStateReleased$runtime(MovableContentStateReference movableContentStateReference, MovableContentState movableContentState, Applier<?> applier) {
        synchronized (this.stateLock) {
            try {
                this.movableContentStatesAvailable.set(movableContentStateReference, movableContentState);
                ObjectList<MovableContentStateReference> objectListM5378getimpl = MultiValueMap.m5378getimpl(this.movableContentNestedExtractionsPending, movableContentStateReference);
                if (objectListM5378getimpl.isNotEmpty()) {
                    ScatterMap<MovableContentStateReference, MovableContentState> scatterMapExtractNestedStates = movableContentState.getSlotStorage$runtime().extractNestedStates(applier, objectListM5378getimpl);
                    Object[] objArr = scatterMapExtractNestedStates.keys;
                    Object[] objArr2 = scatterMapExtractNestedStates.values;
                    long[] jArr = scatterMapExtractNestedStates.metadata;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i = 0;
                        while (true) {
                            long j = jArr[i];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) == -9187201950435737472L) {
                                if (i != length) {
                                    break;
                                    break;
                                }
                                i++;
                            } else {
                                int i2 = 8 - ((~(i - length)) >>> 31);
                                for (int i3 = 0; i3 < i2; i3++) {
                                    if ((255 & j) < 128) {
                                        int i4 = (i << 3) + i3;
                                        Object obj = objArr[i4];
                                        this.movableContentStatesAvailable.set((MovableContentStateReference) obj, (MovableContentState) objArr2[i4]);
                                    }
                                    j >>= 8;
                                }
                                if (i2 != 8) {
                                    break;
                                } else if (i != length) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        }
                    }
                }
                j59 j59Var = j59.a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public MovableContentState movableContentStateResolve$runtime(MovableContentStateReference movableContentStateReference) {
        MovableContentState movableContentStateRemove;
        synchronized (this.stateLock) {
            movableContentStateRemove = this.movableContentStatesAvailable.remove(movableContentStateReference);
        }
        return movableContentStateRemove;
    }

    public final void pauseCompositionFrameClock() {
        synchronized (this.stateLock) {
            this.frameClockPaused = true;
            j59 j59Var = j59.a;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public ScatterSet<RecomposeScopeImpl> recomposePaused$runtime(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet<RecomposeScopeImpl> scatterSet) {
        try {
            recordComposerModifications();
            controlledComposition.recordModificationsOf(ScatterSetWrapperKt.wrapIntoSet(scatterSet));
            ShouldPauseCallback andSetShouldPauseCallback = controlledComposition.getAndSetShouldPauseCallback(shouldPauseCallback);
            try {
                ControlledComposition controlledCompositionPerformRecompose = performRecompose(controlledComposition, null);
                if (controlledCompositionPerformRecompose != null) {
                    performInitialMovableContentInserts(controlledComposition);
                    controlledCompositionPerformRecompose.applyChanges();
                    controlledCompositionPerformRecompose.applyLateChanges();
                }
                ScatterSet<RecomposeScopeImpl> scatterSetEmptyScatterSet = (MutableScatterSet) this.pausedScopes.get();
                if (scatterSetEmptyScatterSet == null) {
                    scatterSetEmptyScatterSet = ScatterSetKt.emptyScatterSet();
                }
                controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
                this.pausedScopes.set(null);
                return scatterSetEmptyScatterSet;
            } catch (Throwable th) {
                controlledComposition.getAndSetShouldPauseCallback(andSetShouldPauseCallback);
                throw th;
            }
        } catch (Throwable th2) {
            this.pausedScopes.set(null);
            throw th2;
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void recordInspectionTable$runtime(Set<CompositionData> set) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void registerComposition$runtime(ControlledComposition controlledComposition) {
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportPausedScope$runtime(RecomposeScopeImpl recomposeScopeImpl) {
        MutableScatterSet<RecomposeScopeImpl> mutableScatterSetMutableScatterSetOf = this.pausedScopes.get();
        if (mutableScatterSetMutableScatterSetOf == null) {
            mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
            this.pausedScopes.set(mutableScatterSetMutableScatterSetOf);
        }
        mutableScatterSetMutableScatterSetOf.add(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void reportRemovedComposition$runtime(ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            try {
                MutableScatterSet<ControlledComposition> mutableScatterSetMutableScatterSetOf = this.compositionsRemoved;
                if (mutableScatterSetMutableScatterSetOf == null) {
                    mutableScatterSetMutableScatterSetOf = ScatterSetKt.mutableScatterSetOf();
                    this.compositionsRemoved = mutableScatterSetMutableScatterSetOf;
                }
                mutableScatterSetMutableScatterSetOf.add(controlledComposition);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void resumeCompositionFrameClock() {
        a31<j59> a31VarDeriveStateLocked;
        synchronized (this.stateLock) {
            if (this.frameClockPaused) {
                this.frameClockPaused = false;
                a31VarDeriveStateLocked = deriveStateLocked();
            } else {
                a31VarDeriveStateLocked = null;
            }
        }
        if (a31VarDeriveStateLocked != null) {
            a31VarDeriveStateLocked.resumeWith(j59.a);
        }
    }

    public final Object runRecomposeAndApplyChanges(e02<? super j59> e02Var) throws Throwable {
        Object objRecompositionRunner = recompositionRunner(new C06202(null), e02Var);
        return objRecompositionRunner == a32.COROUTINE_SUSPENDED ? objRecompositionRunner : j59.a;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public CancellationHandle scheduleFrameEndCallback(ll3<j59> ll3Var) {
        return this.nextFrameEndCallbackQueue.scheduleFrameEndCallback(ll3Var);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public void unregisterComposition$runtime(ControlledComposition controlledComposition) {
        synchronized (this.stateLock) {
            removeKnownCompositionLocked(controlledComposition);
            this.compositionInvalidations.remove(controlledComposition);
            this.compositionsAwaitingApply.remove(controlledComposition);
            j59 j59Var = j59.a;
        }
    }

    public static final class Companion {
        public /* synthetic */ Companion(jh2 jh2Var) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void addRunning(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet persistentSetAdd;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetAdd = persistentSet.add(recomposerInfoImpl);
                if (persistentSet == persistentSetAdd) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.a(persistentSet, persistentSetAdd));
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void removeRunning(RecomposerInfoImpl recomposerInfoImpl) {
            PersistentSet persistentSet;
            PersistentSet persistentSetRemove;
            do {
                persistentSet = (PersistentSet) Recomposer._runningRecomposers.getValue();
                persistentSetRemove = persistentSet.remove(recomposerInfoImpl);
                if (persistentSet == persistentSetRemove) {
                    return;
                }
            } while (!Recomposer._runningRecomposers.a(persistentSet, persistentSetRemove));
        }

        public final void clearErrors$runtime() {
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                RecomposerErrorState recomposerErrorStateResetErrorState = ((RecomposerInfoImpl) it.next()).resetErrorState();
                if (recomposerErrorStateResetErrorState != null) {
                    arrayList.add(recomposerErrorStateResetErrorState);
                }
            }
        }

        public final List<RecomposerErrorInfo> getCurrentErrors$runtime() {
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                RecomposerErrorInformation currentError = ((RecomposerInfoImpl) it.next()).getCurrentError();
                RecomposerErrorInfo recomposerErrorInfo = currentError instanceof RecomposerErrorInfo ? (RecomposerErrorInfo) currentError : null;
                if (recomposerErrorInfo != null) {
                    arrayList.add(recomposerErrorInfo);
                }
            }
            return arrayList;
        }

        public final List<RecomposerErrorInformation> getRecomposerErrors$runtime() {
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                RecomposerErrorInformation currentError = ((RecomposerInfoImpl) it.next()).getCurrentError();
                if (currentError != null) {
                    arrayList.add(currentError);
                }
            }
            return arrayList;
        }

        public final y68<Set<RecomposerInfo>> getRunningRecomposers() {
            return Recomposer._runningRecomposers;
        }

        public final void invalidateGroupsWithKey$runtime(int i) {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            for (RecomposerInfoImpl recomposerInfoImpl : (Iterable) Recomposer._runningRecomposers.getValue()) {
                RecomposerErrorInformation currentError = recomposerInfoImpl.getCurrentError();
                if (currentError == null || currentError.isRecoverable()) {
                    recomposerInfoImpl.resetErrorState();
                    recomposerInfoImpl.invalidateGroupsWithKey(i);
                    recomposerInfoImpl.retryFailedCompositions();
                }
            }
        }

        public final void loadStateAndComposeForHotReload$runtime(Object obj) {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            Iterator it = ((Iterable) Recomposer._runningRecomposers.getValue()).iterator();
            while (it.hasNext()) {
                ((RecomposerInfoImpl) it.next()).resetErrorState();
            }
            obj.getClass();
            List list = (List) obj;
            List list2 = list;
            int size = list2.size();
            for (int i = 0; i < size; i++) {
                ((HotReloadable) list.get(i)).resetContent();
            }
            int size2 = list2.size();
            for (int i2 = 0; i2 < size2; i2++) {
                ((HotReloadable) list.get(i2)).recompose();
            }
            Iterator it2 = ((Iterable) Recomposer._runningRecomposers.getValue()).iterator();
            while (it2.hasNext()) {
                ((RecomposerInfoImpl) it2.next()).retryFailedCompositions();
            }
        }

        public final Object saveStateAndDisposeForHotReload$runtime() {
            Recomposer._hotReloadEnabled.set(Boolean.TRUE);
            Iterable iterable = (Iterable) Recomposer._runningRecomposers.getValue();
            ArrayList arrayList = new ArrayList();
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                nn1.s(((RecomposerInfoImpl) it.next()).saveStateAndDisposeForHotReload(), arrayList);
            }
            return arrayList;
        }

        public final void setHotReloadEnabled$runtime(boolean z) {
            Recomposer._hotReloadEnabled.set(Boolean.valueOf(z));
        }

        private Companion() {
        }
    }
}
