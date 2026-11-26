package androidx.paging;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.cu0;
import defpackage.dm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.gx2;
import defpackage.hd3;
import defpackage.hq1;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.l91;
import defpackage.ll3;
import defpackage.m91;
import defpackage.me0;
import defpackage.nb4;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.qn1;
import defpackage.qt4;
import defpackage.r57;
import defpackage.se3;
import defpackage.sr;
import defpackage.u96;
import defpackage.ud3;
import defpackage.ue3;
import defpackage.x81;
import defpackage.y22;
import defpackage.yg5;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes3.dex */
public final class PageFetcherSnapshot<Key, Value> {
    private final PagingState<Key, Value> cachedInitialState;
    private final PagingConfig config;
    private final HintHandler hintHandler;
    private final Key initialKey;
    private final int initialLoadSize;
    private final ll3<j59> jumpCallback;
    private final x81<PageEvent<Value>> pageEventCh;
    private final AtomicBoolean pageEventChCollected;
    private final hq1 pageEventChannelFlowJob;
    private final hd3<PageEvent<Value>> pageEventFlow;
    private final PagingSource<Key, Value> pagingSource;
    private final RemoteMediatorConnection<Key, Value> remoteMediatorConnection;
    private final hd3<j59> retryFlow;
    private final PageFetcherSnapshotState.Holder<Key, Value> stateHolder;

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.REFRESH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.APPEND.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$3, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$collectAsGenerationalViewportHints$3", f = "PageFetcherSnapshot.kt", l = {}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements dm3<GenerationalViewportHint, GenerationalViewportHint, e02<? super GenerationalViewportHint>, Object> {
        final /* synthetic */ LoadType $loadType;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(LoadType loadType, e02<? super AnonymousClass3> e02Var) {
            super(3, e02Var);
            this.$loadType = loadType;
        }

        @Override // defpackage.dm3
        public final Object invoke(GenerationalViewportHint generationalViewportHint, GenerationalViewportHint generationalViewportHint2, e02<? super GenerationalViewportHint> e02Var) {
            AnonymousClass3 anonymousClass3 = new AnonymousClass3(this.$loadType, e02Var);
            anonymousClass3.L$0 = generationalViewportHint;
            anonymousClass3.L$1 = generationalViewportHint2;
            return anonymousClass3.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            if (this.label != 0) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            GenerationalViewportHint generationalViewportHint = (GenerationalViewportHint) this.L$0;
            GenerationalViewportHint generationalViewportHint2 = (GenerationalViewportHint) this.L$1;
            return PageFetcherSnapshotKt.shouldPrioritizeOver(generationalViewportHint2, generationalViewportHint, this.$loadType) ? generationalViewportHint2 : generationalViewportHint;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$currentPagingState$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {694}, m = "currentPagingState", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        Object L$1;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.currentPagingState(this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$doInitialLoad$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {694, 302, 308, 716, 738, 335, 760, 782, 363}, m = "doInitialLoad", v = 1)
    public static final class C07031 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07031(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super C07031> e02Var) {
            super(e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.doInitialLoad(this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$doLoad$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {695, TypedValues.TransitionType.TYPE_TRANSITION_FLAGS, TypedValues.CycleType.TYPE_WAVE_OFFSET, 433, 729, 771, 486, 793, TypedValues.PositionType.TYPE_POSITION_TYPE, 536, 805}, m = "doLoad", v = 1)
    public static final class C07041 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        Object L$7;
        Object L$8;
        Object L$9;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07041(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super C07041> e02Var) {
            super(e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.doLoad(null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$forceSetHint$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshot", f = "PageFetcherSnapshot.kt", l = {694}, m = "forceSetHint", v = 1)
    public static final class C07051 extends f02 {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07051(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super C07051> e02Var) {
            super(e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.forceSetHint(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$1", f = "PageFetcherSnapshot.kt", l = {233}, m = "invokeSuspend", v = 1)
    public static final class C07061 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07061(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super C07061> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07061(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07061) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3[] hd3VarArr = {((PageFetcherSnapshot) this.this$0).hintHandler.hintFor(LoadType.APPEND), ((PageFetcherSnapshot) this.this$0).hintHandler.hintFor(LoadType.PREPEND)};
                int i2 = se3.a;
                m91 m91Var = new m91(new sr(hd3VarArr), gx2.b, -2, cu0.SUSPEND);
                PageFetcherSnapshot$startConsumingHints$1$jumpHint$1 pageFetcherSnapshot$startConsumingHints$1$jumpHint$1 = new PageFetcherSnapshot$startConsumingHints$1$jumpHint$1(this.this$0, null);
                this.label = 1;
                obj = ue3.d(m91Var, pageFetcherSnapshot$startConsumingHints$1$jumpHint$1, this);
                if (obj == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ViewportHint viewportHint = (ViewportHint) obj;
            if (viewportHint != null) {
                PageFetcherSnapshot<Key, Value> pageFetcherSnapshot = this.this$0;
                PagingLogger pagingLogger = PagingLogger.INSTANCE;
                if (pagingLogger.isLoggable(3)) {
                    pagingLogger.log(3, "Jump triggered on PagingSource " + pageFetcherSnapshot.getPagingSource$paging_common() + " by " + viewportHint, null);
                }
                ((PageFetcherSnapshot) this.this$0).jumpCallback.invoke();
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$2, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$2", f = "PageFetcherSnapshot.kt", l = {694, 248}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        
            if (r1.collectAsGenerationalViewportHints(r7, r3, r6) == r0) goto L17;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L27
                if (r1 == r3) goto L17
                if (r1 != r2) goto L11
                defpackage.r57.b(r7)
                goto L60
            L11:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r4
            L17:
                java.lang.Object r1 = r6.L$2
                androidx.paging.PageFetcherSnapshot r1 = (androidx.paging.PageFetcherSnapshot) r1
                java.lang.Object r3 = r6.L$1
                yg5 r3 = (defpackage.yg5) r3
                java.lang.Object r5 = r6.L$0
                androidx.paging.PageFetcherSnapshotState$Holder r5 = (androidx.paging.PageFetcherSnapshotState.Holder) r5
                defpackage.r57.b(r7)
                goto L44
            L27:
                defpackage.r57.b(r7)
                androidx.paging.PageFetcherSnapshot<Key, Value> r1 = r6.this$0
                androidx.paging.PageFetcherSnapshotState$Holder r5 = androidx.paging.PageFetcherSnapshot.access$getStateHolder$p(r1)
                yg5 r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getLock$p(r5)
                r6.L$0 = r5
                r6.L$1 = r7
                r6.L$2 = r1
                r6.label = r3
                java.lang.Object r3 = r7.lock(r4, r6)
                if (r3 != r0) goto L43
                goto L5f
            L43:
                r3 = r7
            L44:
                androidx.paging.PageFetcherSnapshotState r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getState$p(r5)     // Catch: java.lang.Throwable -> L63
                hd3 r7 = r7.consumePrependGenerationIdAsFlow()     // Catch: java.lang.Throwable -> L63
                r3.unlock(r4)
                androidx.paging.LoadType r3 = androidx.paging.LoadType.PREPEND
                r6.L$0 = r4
                r6.L$1 = r4
                r6.L$2 = r4
                r6.label = r2
                java.lang.Object r6 = androidx.paging.PageFetcherSnapshot.access$collectAsGenerationalViewportHints(r1, r7, r3, r6)
                if (r6 != r0) goto L60
            L5f:
                return r0
            L60:
                j59 r6 = defpackage.j59.a
                return r6
            L63:
                r6 = move-exception
                r3.unlock(r4)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.AnonymousClass2.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$startConsumingHints$3, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$startConsumingHints$3", f = "PageFetcherSnapshot.kt", l = {694, 254}, m = "invokeSuspend", v = 1)
    public static final class C07073 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        Object L$0;
        Object L$1;
        Object L$2;
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07073(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super C07073> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new C07073(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C07073) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code restructure failed: missing block: B:16:0x005d, code lost:
        
            if (r1.collectAsGenerationalViewportHints(r7, r3, r6) == r0) goto L17;
         */
        @Override // defpackage.cd0
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final java.lang.Object invokeSuspend(java.lang.Object r7) {
            /*
                r6 = this;
                a32 r0 = defpackage.a32.COROUTINE_SUSPENDED
                int r1 = r6.label
                r2 = 2
                r3 = 1
                r4 = 0
                if (r1 == 0) goto L27
                if (r1 == r3) goto L17
                if (r1 != r2) goto L11
                defpackage.r57.b(r7)
                goto L60
            L11:
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                defpackage.ah.f(r6)
                return r4
            L17:
                java.lang.Object r1 = r6.L$2
                androidx.paging.PageFetcherSnapshot r1 = (androidx.paging.PageFetcherSnapshot) r1
                java.lang.Object r3 = r6.L$1
                yg5 r3 = (defpackage.yg5) r3
                java.lang.Object r5 = r6.L$0
                androidx.paging.PageFetcherSnapshotState$Holder r5 = (androidx.paging.PageFetcherSnapshotState.Holder) r5
                defpackage.r57.b(r7)
                goto L44
            L27:
                defpackage.r57.b(r7)
                androidx.paging.PageFetcherSnapshot<Key, Value> r1 = r6.this$0
                androidx.paging.PageFetcherSnapshotState$Holder r5 = androidx.paging.PageFetcherSnapshot.access$getStateHolder$p(r1)
                yg5 r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getLock$p(r5)
                r6.L$0 = r5
                r6.L$1 = r7
                r6.L$2 = r1
                r6.label = r3
                java.lang.Object r3 = r7.lock(r4, r6)
                if (r3 != r0) goto L43
                goto L5f
            L43:
                r3 = r7
            L44:
                androidx.paging.PageFetcherSnapshotState r7 = androidx.paging.PageFetcherSnapshotState.Holder.access$getState$p(r5)     // Catch: java.lang.Throwable -> L63
                hd3 r7 = r7.consumeAppendGenerationIdAsFlow()     // Catch: java.lang.Throwable -> L63
                r3.unlock(r4)
                androidx.paging.LoadType r3 = androidx.paging.LoadType.APPEND
                r6.L$0 = r4
                r6.L$1 = r4
                r6.L$2 = r4
                r6.label = r2
                java.lang.Object r6 = androidx.paging.PageFetcherSnapshot.access$collectAsGenerationalViewportHints(r1, r7, r3, r6)
                if (r6 != r0) goto L60
            L5f:
                return r0
            L60:
                j59 r6 = defpackage.j59.a
                return r6
            L63:
                r6 = move-exception
                r3.unlock(r4)
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.C07073.invokeSuspend(java.lang.Object):java.lang.Object");
        }
    }

    public PageFetcherSnapshot(Key key, PagingSource<Key, Value> pagingSource, PagingConfig pagingConfig, hd3<j59> hd3Var, int i, RemoteMediatorConnection<Key, Value> remoteMediatorConnection, PagingState<Key, Value> pagingState, ll3<j59> ll3Var) {
        pagingSource.getClass();
        pagingConfig.getClass();
        hd3Var.getClass();
        ll3Var.getClass();
        this.initialKey = key;
        this.pagingSource = pagingSource;
        this.config = pagingConfig;
        this.retryFlow = hd3Var;
        this.initialLoadSize = i;
        this.remoteMediatorConnection = remoteMediatorConnection;
        this.cachedInitialState = pagingState;
        this.jumpCallback = ll3Var;
        if (pagingConfig.jumpThreshold != Integer.MIN_VALUE && !pagingSource.getJumpingSupported()) {
            fg.c("PagingConfig.jumpThreshold was set, but the associated PagingSource has not marked support for jumps by overriding PagingSource.jumpingSupported to true.");
            throw null;
        }
        this.hintHandler = new HintHandler();
        this.pageEventChCollected = new AtomicBoolean(false);
        this.pageEventCh = l91.a(-2, null, null, 6);
        this.stateHolder = new PageFetcherSnapshotState.Holder<>(pagingConfig);
        nb4 nb4VarA = qb4.a();
        this.pageEventChannelFlowJob = nb4VarA;
        this.pageEventFlow = new ce3(CancelableChannelFlowKt.cancelableChannelFlow(nb4VarA, new PageFetcherSnapshot$pageEventFlow$1(this, null)), new PageFetcherSnapshot$pageEventFlow$2(this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object collectAsGenerationalViewportHints(hd3<Integer> hd3Var, final LoadType loadType, e02<? super j59> e02Var) {
        Object objCollect = ud3.a(FlowExtKt.simpleRunningReduce(FlowExtKt.simpleTransformLatest(hd3Var, new PageFetcherSnapshot$collectAsGenerationalViewportHints$$inlined$simpleFlatMapLatest$1(null, this, loadType)), new AnonymousClass3(loadType, null)), -1).collect(new id3(this) { // from class: androidx.paging.PageFetcherSnapshot.collectAsGenerationalViewportHints.4
            final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

            {
                this.this$0 = this;
            }

            public final Object emit(GenerationalViewportHint generationalViewportHint, e02<? super j59> e02Var2) throws Throwable {
                Object objDoLoad = this.this$0.doLoad(loadType, generationalViewportHint, e02Var2);
                return objDoLoad == a32.COROUTINE_SUSPENDED ? objDoLoad : j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var2) {
                return emit((GenerationalViewportHint) obj, (e02<? super j59>) e02Var2);
            }
        }, e02Var);
        return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:104:0x024e  */
    /* JADX WARN: Code duplicated, block: B:106:0x0252  */
    /* JADX WARN: Code duplicated, block: B:108:0x025a  */
    /* JADX WARN: Code duplicated, block: B:112:0x027c  */
    /* JADX WARN: Code duplicated, block: B:116:0x029f  */
    /* JADX WARN: Code duplicated, block: B:124:0x02ae  */
    /* JADX WARN: Code duplicated, block: B:126:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:128:0x02ba  */
    /* JADX WARN: Code duplicated, block: B:132:0x02cb  */
    /* JADX WARN: Code duplicated, block: B:39:0x00d1  */
    /* JADX WARN: Code duplicated, block: B:40:0x00d3 A[Catch: all -> 0x0097, PHI: r2
      0x00d3: PHI (r2v9 ??) = (r2v53 ??), (r2v54 ??) binds: [B:38:0x00cf, B:28:0x0093] A[DONT_GENERATE, DONT_INLINE], TRY_LEAVE, TryCatch #4 {all -> 0x0097, blocks: (B:28:0x0093, B:40:0x00d3, B:37:0x00bf), top: B:140:0x0021 }] */
    /* JADX WARN: Code duplicated, block: B:43:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:47:0x0113 A[PHI: r14
      0x0113: PHI (r14v9 java.lang.Object) = (r14v8 java.lang.Object), (r14v1 java.lang.Object) binds: [B:45:0x010f, B:26:0x008a] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:49:0x0119  */
    /* JADX WARN: Code duplicated, block: B:52:0x0130  */
    /* JADX WARN: Code duplicated, block: B:55:0x0157 A[Catch: all -> 0x0165, TryCatch #1 {all -> 0x0165, blocks: (B:53:0x0131, B:55:0x0157, B:58:0x0168, B:60:0x0171), top: B:138:0x0131 }] */
    /* JADX WARN: Code duplicated, block: B:60:0x0171 A[Catch: all -> 0x0165, TRY_LEAVE, TryCatch #1 {all -> 0x0165, blocks: (B:53:0x0131, B:55:0x0157, B:58:0x0168, B:60:0x0171), top: B:138:0x0131 }] */
    /* JADX WARN: Code duplicated, block: B:63:0x0183  */
    /* JADX WARN: Code duplicated, block: B:65:0x018b  */
    /* JADX WARN: Code duplicated, block: B:69:0x01ab  */
    /* JADX WARN: Code duplicated, block: B:72:0x01cb  */
    /* JADX WARN: Code duplicated, block: B:73:0x01cd  */
    /* JADX WARN: Code duplicated, block: B:78:0x01d8  */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Code duplicated, block: B:80:0x01e0  */
    /* JADX WARN: Code duplicated, block: B:84:0x01ee  */
    /* JADX WARN: Code duplicated, block: B:86:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:91:0x0214  */
    /* JADX WARN: Code duplicated, block: B:95:0x022f  */
    /* JADX WARN: Code duplicated, block: B:98:0x023c  */
    /* JADX WARN: Instruction removed from duplicated block: B:43:0x00e8, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [androidx.paging.PageFetcherSnapshot, androidx.paging.PageFetcherSnapshot<Key, Value>] */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v2, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v38, types: [yg5] */
    /* JADX WARN: Type inference failed for: r2v50 */
    /* JADX WARN: Type inference failed for: r2v51 */
    /* JADX WARN: Type inference failed for: r2v53 */
    /* JADX WARN: Type inference failed for: r2v54 */
    /* JADX WARN: Type inference failed for: r2v9, types: [yg5] */
    public final Object doInitialLoad(e02<? super j59> e02Var) throws Throwable {
        C07031 c07031;
        PageFetcherSnapshotState.Holder<Key, Value> holder;
        yg5 yg5Var;
        PageFetcherSnapshotState pageFetcherSnapshotState;
        LoadType loadType;
        PagingLogger pagingLogger;
        PagingSource.LoadResult loadResult;
        PagingLogger pagingLogger2;
        PagingLogger pagingLogger3;
        PageFetcherSnapshotState.Holder<Key, Value> holder2;
        yg5 yg5Var2;
        PagingSource.LoadResult loadResult2;
        PageFetcherSnapshotState.Holder<Key, Value> holder3;
        yg5 yg5Var3;
        PagingSource.LoadResult loadResult3;
        PageFetcherSnapshotState pageFetcherSnapshotState2;
        LoadType loadType2;
        boolean zInsert;
        LoadState.NotLoading.Companion companion;
        PagingLogger pagingLogger4;
        PagingSource.LoadResult loadResult4;
        PagingLogger pagingLogger5;
        PageFetcherSnapshotState.Holder<Key, Value> holder4;
        yg5 yg5Var4;
        yg5 yg5Var5;
        PagingSource.LoadResult loadResult5;
        x81<PageEvent<Value>> x81Var;
        PageEvent<Value> pageEvent$paging_common;
        PagingSource.LoadResult.Page page;
        PageFetcherSnapshotState.Holder<Key, Value> holder5;
        yg5 yg5Var6;
        yg5 yg5Var7;
        PagingSource.LoadResult loadResult6;
        PagingState<Key, Value> pagingStateCurrentPagingState$paging_common;
        PagingSource.LoadResult.Page page2;
        yg5 yg5Var8;
        PageFetcherSnapshotState pageFetcherSnapshotState3;
        LoadState.Error error;
        LoadType loadType3;
        if (e02Var instanceof C07031) {
            c07031 = (C07031) e02Var;
            int i = c07031.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07031.label = i - Integer.MIN_VALUE;
            } else {
                c07031 = new C07031(this, e02Var);
            }
        } else {
            c07031 = new C07031(this, e02Var);
        }
        Object objLoad = c07031.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        ?? r2 = c07031.label;
        try {
            try {
                switch (r2) {
                    case 0:
                        r57.b(objLoad);
                        holder = this.stateHolder;
                        yg5 yg5Var9 = ((PageFetcherSnapshotState.Holder) holder).lock;
                        c07031.L$0 = holder;
                        c07031.L$1 = yg5Var9;
                        c07031.label = 1;
                        if (yg5Var9.lock(null, c07031) != a32Var) {
                            yg5Var = yg5Var9;
                            pageFetcherSnapshotState = ((PageFetcherSnapshotState.Holder) holder).state;
                            loadType = LoadType.REFRESH;
                            c07031.L$0 = yg5Var;
                            c07031.L$1 = null;
                            c07031.label = 2;
                            r2 = yg5Var;
                            if (setLoading(pageFetcherSnapshotState, loadType, c07031) == a32Var) {
                                j59 j59Var = j59.a;
                                r2.unlock(null);
                                PagingSource.LoadParams<Key> loadParams = loadParams(LoadType.REFRESH, this.initialKey);
                                pagingLogger = PagingLogger.INSTANCE;
                                if (pagingLogger.isLoggable(3)) {
                                    pagingLogger.log(3, "Start REFRESH with loadKey " + this.initialKey + " on " + this.pagingSource, null);
                                }
                                PagingSource<Key, Value> pagingSource = this.pagingSource;
                                c07031.L$0 = null;
                                c07031.label = 3;
                                objLoad = pagingSource.load(loadParams, c07031);
                                if (objLoad != a32Var) {
                                    loadResult = (PagingSource.LoadResult) objLoad;
                                    if (loadResult instanceof PagingSource.LoadResult.Page) {
                                        holder3 = this.stateHolder;
                                        yg5Var3 = ((PageFetcherSnapshotState.Holder) holder3).lock;
                                        c07031.L$0 = loadResult;
                                        c07031.L$1 = holder3;
                                        c07031.L$2 = yg5Var3;
                                        c07031.label = 4;
                                        if (yg5Var3.lock(null, c07031) != a32Var) {
                                            loadResult3 = loadResult;
                                            try {
                                                pageFetcherSnapshotState2 = ((PageFetcherSnapshotState.Holder) holder3).state;
                                                loadType2 = LoadType.REFRESH;
                                                zInsert = pageFetcherSnapshotState2.insert(0, loadType2, (PagingSource.LoadResult.Page) loadResult3, this.initialKey);
                                                MutableLoadStateCollection sourceLoadStates$paging_common = pageFetcherSnapshotState2.getSourceLoadStates$paging_common();
                                                companion = LoadState.NotLoading.Companion;
                                                sourceLoadStates$paging_common.set(loadType2, companion.getIncomplete$paging_common());
                                                if (((PagingSource.LoadResult.Page) loadResult3).getPrevKey() == null) {
                                                    pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.PREPEND, companion.getComplete$paging_common());
                                                }
                                                if (((PagingSource.LoadResult.Page) loadResult3).getNextKey() == null) {
                                                    pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.APPEND, companion.getComplete$paging_common());
                                                }
                                                yg5Var3.unlock(null);
                                                if (!zInsert) {
                                                    pagingLogger4 = PagingLogger.INSTANCE;
                                                    if (pagingLogger4.isLoggable(2)) {
                                                        pagingLogger4.log(2, loadResultLog(loadType2, this.initialKey, null), null);
                                                    }
                                                    loadResult4 = loadResult3;
                                                    if (this.remoteMediatorConnection != null) {
                                                        page = (PagingSource.LoadResult.Page) loadResult4;
                                                        if (page.getPrevKey() != null) {
                                                        }
                                                        holder5 = this.stateHolder;
                                                        yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                                        c07031.L$0 = loadResult4;
                                                        c07031.L$1 = holder5;
                                                        c07031.L$2 = yg5Var6;
                                                        c07031.label = 7;
                                                        if (yg5Var6.lock(null, c07031) != a32Var) {
                                                            yg5Var7 = yg5Var6;
                                                            loadResult6 = loadResult4;
                                                            pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                            yg5Var7.unlock(null);
                                                            page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                            if (page2.getPrevKey() == null) {
                                                                this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                            }
                                                            if (page2.getNextKey() == null) {
                                                                this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                            }
                                                        }
                                                    }
                                                    return j59.a;
                                                }
                                                pagingLogger5 = PagingLogger.INSTANCE;
                                                if (pagingLogger5.isLoggable(3)) {
                                                    pagingLogger5.log(3, loadResultLog(loadType2, this.initialKey, loadResult3), null);
                                                }
                                                holder4 = this.stateHolder;
                                                yg5Var4 = ((PageFetcherSnapshotState.Holder) holder4).lock;
                                                c07031.L$0 = loadResult3;
                                                c07031.L$1 = holder4;
                                                c07031.L$2 = yg5Var4;
                                                c07031.label = 5;
                                                if (yg5Var4.lock(null, c07031) != a32Var) {
                                                    yg5Var5 = yg5Var4;
                                                    loadResult5 = loadResult3;
                                                    PageFetcherSnapshotState pageFetcherSnapshotState4 = ((PageFetcherSnapshotState.Holder) holder4).state;
                                                    x81Var = this.pageEventCh;
                                                    pageEvent$paging_common = pageFetcherSnapshotState4.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                                                    c07031.L$0 = loadResult5;
                                                    c07031.L$1 = yg5Var5;
                                                    c07031.L$2 = null;
                                                    c07031.label = 6;
                                                    if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                                                        loadResult4 = loadResult5;
                                                        r2 = yg5Var5;
                                                        j59 j59Var2 = j59.a;
                                                        r2.unlock(null);
                                                        if (this.remoteMediatorConnection != null) {
                                                            page = (PagingSource.LoadResult.Page) loadResult4;
                                                            if (page.getPrevKey() != null || page.getNextKey() == null) {
                                                                holder5 = this.stateHolder;
                                                                yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                                                c07031.L$0 = loadResult4;
                                                                c07031.L$1 = holder5;
                                                                c07031.L$2 = yg5Var6;
                                                                c07031.label = 7;
                                                                if (yg5Var6.lock(null, c07031) != a32Var) {
                                                                    yg5Var7 = yg5Var6;
                                                                    loadResult6 = loadResult4;
                                                                    try {
                                                                        pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                                        yg5Var7.unlock(null);
                                                                        page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                                        if (page2.getPrevKey() == null) {
                                                                            this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                                        }
                                                                        if (page2.getNextKey() == null) {
                                                                            this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                                        }
                                                                    } catch (Throwable th) {
                                                                        yg5Var7.unlock(null);
                                                                        throw th;
                                                                    }
                                                                }
                                                            }
                                                        }
                                                        return j59.a;
                                                    }
                                                }
                                            } catch (Throwable th2) {
                                                yg5Var3.unlock(null);
                                                throw th2;
                                            }
                                        }
                                        break;
                                    } else {
                                        if (loadResult instanceof PagingSource.LoadResult.Error) {
                                            if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                                                me0.e();
                                                return null;
                                            }
                                            pagingLogger2 = PagingLogger.INSTANCE;
                                            if (pagingLogger2.isLoggable(2)) {
                                                pagingLogger2.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                            }
                                            onInvalidLoad();
                                            return j59.a;
                                        }
                                        pagingLogger3 = PagingLogger.INSTANCE;
                                        if (pagingLogger3.isLoggable(2)) {
                                            pagingLogger3.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                        }
                                        holder2 = this.stateHolder;
                                        yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
                                        c07031.L$0 = loadResult;
                                        c07031.L$1 = holder2;
                                        c07031.L$2 = yg5Var2;
                                        c07031.label = 8;
                                        if (yg5Var2.lock(null, c07031) != a32Var) {
                                            loadResult2 = loadResult;
                                            try {
                                                pageFetcherSnapshotState3 = ((PageFetcherSnapshotState.Holder) holder2).state;
                                                error = new LoadState.Error(((PagingSource.LoadResult.Error) loadResult2).getThrowable());
                                                loadType3 = LoadType.REFRESH;
                                                c07031.L$0 = yg5Var2;
                                                c07031.L$1 = null;
                                                c07031.L$2 = null;
                                                c07031.label = 9;
                                                if (setError(pageFetcherSnapshotState3, loadType3, error, c07031) != a32Var) {
                                                    yg5Var8 = yg5Var2;
                                                    j59 j59Var3 = j59.a;
                                                    yg5Var8.unlock(null);
                                                    return j59.a;
                                                }
                                            } catch (Throwable th3) {
                                                th = th3;
                                                yg5Var8 = yg5Var2;
                                                yg5Var8.unlock(null);
                                                throw th;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        return a32Var;
                    case 1:
                        yg5 yg5Var10 = (yg5) c07031.L$1;
                        holder = (PageFetcherSnapshotState.Holder) c07031.L$0;
                        r57.b(objLoad);
                        yg5Var = yg5Var10;
                        pageFetcherSnapshotState = ((PageFetcherSnapshotState.Holder) holder).state;
                        loadType = LoadType.REFRESH;
                        c07031.L$0 = yg5Var;
                        c07031.L$1 = null;
                        c07031.label = 2;
                        r2 = yg5Var;
                        if (setLoading(pageFetcherSnapshotState, loadType, c07031) == a32Var) {
                            j59 j59Var4 = j59.a;
                            r2.unlock(null);
                            PagingSource.LoadParams<Key> loadParams2 = loadParams(LoadType.REFRESH, this.initialKey);
                            pagingLogger = PagingLogger.INSTANCE;
                            if (pagingLogger.isLoggable(3)) {
                                pagingLogger.log(3, "Start REFRESH with loadKey " + this.initialKey + " on " + this.pagingSource, null);
                            }
                            PagingSource<Key, Value> pagingSource2 = this.pagingSource;
                            c07031.L$0 = null;
                            c07031.label = 3;
                            objLoad = pagingSource2.load(loadParams2, c07031);
                            if (objLoad != a32Var) {
                                loadResult = (PagingSource.LoadResult) objLoad;
                                if (loadResult instanceof PagingSource.LoadResult.Page) {
                                    holder3 = this.stateHolder;
                                    yg5Var3 = ((PageFetcherSnapshotState.Holder) holder3).lock;
                                    c07031.L$0 = loadResult;
                                    c07031.L$1 = holder3;
                                    c07031.L$2 = yg5Var3;
                                    c07031.label = 4;
                                    if (yg5Var3.lock(null, c07031) != a32Var) {
                                        loadResult3 = loadResult;
                                        pageFetcherSnapshotState2 = ((PageFetcherSnapshotState.Holder) holder3).state;
                                        loadType2 = LoadType.REFRESH;
                                        zInsert = pageFetcherSnapshotState2.insert(0, loadType2, (PagingSource.LoadResult.Page) loadResult3, this.initialKey);
                                        MutableLoadStateCollection sourceLoadStates$paging_common2 = pageFetcherSnapshotState2.getSourceLoadStates$paging_common();
                                        companion = LoadState.NotLoading.Companion;
                                        sourceLoadStates$paging_common2.set(loadType2, companion.getIncomplete$paging_common());
                                        if (((PagingSource.LoadResult.Page) loadResult3).getPrevKey() == null) {
                                            pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.PREPEND, companion.getComplete$paging_common());
                                        }
                                        if (((PagingSource.LoadResult.Page) loadResult3).getNextKey() == null) {
                                            pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.APPEND, companion.getComplete$paging_common());
                                        }
                                        yg5Var3.unlock(null);
                                        if (!zInsert) {
                                            pagingLogger4 = PagingLogger.INSTANCE;
                                            if (pagingLogger4.isLoggable(2)) {
                                                pagingLogger4.log(2, loadResultLog(loadType2, this.initialKey, null), null);
                                            }
                                            loadResult4 = loadResult3;
                                            if (this.remoteMediatorConnection != null) {
                                                page = (PagingSource.LoadResult.Page) loadResult4;
                                                if (page.getPrevKey() != null) {
                                                }
                                                holder5 = this.stateHolder;
                                                yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                                c07031.L$0 = loadResult4;
                                                c07031.L$1 = holder5;
                                                c07031.L$2 = yg5Var6;
                                                c07031.label = 7;
                                                if (yg5Var6.lock(null, c07031) != a32Var) {
                                                    yg5Var7 = yg5Var6;
                                                    loadResult6 = loadResult4;
                                                    pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                    yg5Var7.unlock(null);
                                                    page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                    if (page2.getPrevKey() == null) {
                                                        this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                    }
                                                    if (page2.getNextKey() == null) {
                                                        this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                    }
                                                }
                                                break;
                                            }
                                            return j59.a;
                                        }
                                        pagingLogger5 = PagingLogger.INSTANCE;
                                        if (pagingLogger5.isLoggable(3)) {
                                            pagingLogger5.log(3, loadResultLog(loadType2, this.initialKey, loadResult3), null);
                                        }
                                        holder4 = this.stateHolder;
                                        yg5Var4 = ((PageFetcherSnapshotState.Holder) holder4).lock;
                                        c07031.L$0 = loadResult3;
                                        c07031.L$1 = holder4;
                                        c07031.L$2 = yg5Var4;
                                        c07031.label = 5;
                                        if (yg5Var4.lock(null, c07031) != a32Var) {
                                            yg5Var5 = yg5Var4;
                                            loadResult5 = loadResult3;
                                            PageFetcherSnapshotState pageFetcherSnapshotState5 = ((PageFetcherSnapshotState.Holder) holder4).state;
                                            x81Var = this.pageEventCh;
                                            pageEvent$paging_common = pageFetcherSnapshotState5.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                                            c07031.L$0 = loadResult5;
                                            c07031.L$1 = yg5Var5;
                                            c07031.L$2 = null;
                                            c07031.label = 6;
                                            if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                                                loadResult4 = loadResult5;
                                                r2 = yg5Var5;
                                                j59 j59Var5 = j59.a;
                                                r2.unlock(null);
                                                if (this.remoteMediatorConnection != null) {
                                                    page = (PagingSource.LoadResult.Page) loadResult4;
                                                    if (page.getPrevKey() != null) {
                                                    }
                                                    holder5 = this.stateHolder;
                                                    yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                                    c07031.L$0 = loadResult4;
                                                    c07031.L$1 = holder5;
                                                    c07031.L$2 = yg5Var6;
                                                    c07031.label = 7;
                                                    if (yg5Var6.lock(null, c07031) != a32Var) {
                                                        yg5Var7 = yg5Var6;
                                                        loadResult6 = loadResult4;
                                                        pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                        yg5Var7.unlock(null);
                                                        page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                        if (page2.getPrevKey() == null) {
                                                            this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                        }
                                                        if (page2.getNextKey() == null) {
                                                            this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                        }
                                                    }
                                                    break;
                                                }
                                                return j59.a;
                                            }
                                        }
                                    }
                                } else {
                                    if (loadResult instanceof PagingSource.LoadResult.Error) {
                                        if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                                            me0.e();
                                            return null;
                                        }
                                        pagingLogger2 = PagingLogger.INSTANCE;
                                        if (pagingLogger2.isLoggable(2)) {
                                            pagingLogger2.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                        }
                                        onInvalidLoad();
                                        return j59.a;
                                    }
                                    pagingLogger3 = PagingLogger.INSTANCE;
                                    if (pagingLogger3.isLoggable(2)) {
                                        pagingLogger3.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                    }
                                    holder2 = this.stateHolder;
                                    yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
                                    c07031.L$0 = loadResult;
                                    c07031.L$1 = holder2;
                                    c07031.L$2 = yg5Var2;
                                    c07031.label = 8;
                                    if (yg5Var2.lock(null, c07031) != a32Var) {
                                        loadResult2 = loadResult;
                                        pageFetcherSnapshotState3 = ((PageFetcherSnapshotState.Holder) holder2).state;
                                        error = new LoadState.Error(((PagingSource.LoadResult.Error) loadResult2).getThrowable());
                                        loadType3 = LoadType.REFRESH;
                                        c07031.L$0 = yg5Var2;
                                        c07031.L$1 = null;
                                        c07031.L$2 = null;
                                        c07031.label = 9;
                                        if (setError(pageFetcherSnapshotState3, loadType3, error, c07031) != a32Var) {
                                            yg5Var8 = yg5Var2;
                                            j59 j59Var6 = j59.a;
                                            yg5Var8.unlock(null);
                                            return j59.a;
                                        }
                                    }
                                }
                            }
                            break;
                        }
                        return a32Var;
                    case 2:
                        yg5 yg5Var11 = (yg5) c07031.L$0;
                        r57.b(objLoad);
                        r2 = yg5Var11;
                        j59 j59Var7 = j59.a;
                        r2.unlock(null);
                        PagingSource.LoadParams<Key> loadParams3 = loadParams(LoadType.REFRESH, this.initialKey);
                        pagingLogger = PagingLogger.INSTANCE;
                        if (pagingLogger.isLoggable(3)) {
                            pagingLogger.log(3, "Start REFRESH with loadKey " + this.initialKey + " on " + this.pagingSource, null);
                        }
                        PagingSource<Key, Value> pagingSource3 = this.pagingSource;
                        c07031.L$0 = null;
                        c07031.label = 3;
                        objLoad = pagingSource3.load(loadParams3, c07031);
                        if (objLoad != a32Var) {
                            loadResult = (PagingSource.LoadResult) objLoad;
                            if (loadResult instanceof PagingSource.LoadResult.Page) {
                                holder3 = this.stateHolder;
                                yg5Var3 = ((PageFetcherSnapshotState.Holder) holder3).lock;
                                c07031.L$0 = loadResult;
                                c07031.L$1 = holder3;
                                c07031.L$2 = yg5Var3;
                                c07031.label = 4;
                                if (yg5Var3.lock(null, c07031) != a32Var) {
                                    loadResult3 = loadResult;
                                    pageFetcherSnapshotState2 = ((PageFetcherSnapshotState.Holder) holder3).state;
                                    loadType2 = LoadType.REFRESH;
                                    zInsert = pageFetcherSnapshotState2.insert(0, loadType2, (PagingSource.LoadResult.Page) loadResult3, this.initialKey);
                                    MutableLoadStateCollection sourceLoadStates$paging_common3 = pageFetcherSnapshotState2.getSourceLoadStates$paging_common();
                                    companion = LoadState.NotLoading.Companion;
                                    sourceLoadStates$paging_common3.set(loadType2, companion.getIncomplete$paging_common());
                                    if (((PagingSource.LoadResult.Page) loadResult3).getPrevKey() == null) {
                                        pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.PREPEND, companion.getComplete$paging_common());
                                    }
                                    if (((PagingSource.LoadResult.Page) loadResult3).getNextKey() == null) {
                                        pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.APPEND, companion.getComplete$paging_common());
                                    }
                                    yg5Var3.unlock(null);
                                    if (!zInsert) {
                                        pagingLogger4 = PagingLogger.INSTANCE;
                                        if (pagingLogger4.isLoggable(2)) {
                                            pagingLogger4.log(2, loadResultLog(loadType2, this.initialKey, null), null);
                                        }
                                        loadResult4 = loadResult3;
                                        if (this.remoteMediatorConnection != null) {
                                            page = (PagingSource.LoadResult.Page) loadResult4;
                                            if (page.getPrevKey() != null) {
                                            }
                                            holder5 = this.stateHolder;
                                            yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                            c07031.L$0 = loadResult4;
                                            c07031.L$1 = holder5;
                                            c07031.L$2 = yg5Var6;
                                            c07031.label = 7;
                                            if (yg5Var6.lock(null, c07031) != a32Var) {
                                                yg5Var7 = yg5Var6;
                                                loadResult6 = loadResult4;
                                                pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                yg5Var7.unlock(null);
                                                page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                if (page2.getPrevKey() == null) {
                                                    this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                }
                                                if (page2.getNextKey() == null) {
                                                    this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                }
                                            }
                                            break;
                                        }
                                        return j59.a;
                                    }
                                    pagingLogger5 = PagingLogger.INSTANCE;
                                    if (pagingLogger5.isLoggable(3)) {
                                        pagingLogger5.log(3, loadResultLog(loadType2, this.initialKey, loadResult3), null);
                                    }
                                    holder4 = this.stateHolder;
                                    yg5Var4 = ((PageFetcherSnapshotState.Holder) holder4).lock;
                                    c07031.L$0 = loadResult3;
                                    c07031.L$1 = holder4;
                                    c07031.L$2 = yg5Var4;
                                    c07031.label = 5;
                                    if (yg5Var4.lock(null, c07031) != a32Var) {
                                        yg5Var5 = yg5Var4;
                                        loadResult5 = loadResult3;
                                        PageFetcherSnapshotState pageFetcherSnapshotState6 = ((PageFetcherSnapshotState.Holder) holder4).state;
                                        x81Var = this.pageEventCh;
                                        pageEvent$paging_common = pageFetcherSnapshotState6.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                                        c07031.L$0 = loadResult5;
                                        c07031.L$1 = yg5Var5;
                                        c07031.L$2 = null;
                                        c07031.label = 6;
                                        if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                                            loadResult4 = loadResult5;
                                            r2 = yg5Var5;
                                            j59 j59Var8 = j59.a;
                                            r2.unlock(null);
                                            if (this.remoteMediatorConnection != null) {
                                                page = (PagingSource.LoadResult.Page) loadResult4;
                                                if (page.getPrevKey() != null) {
                                                }
                                                holder5 = this.stateHolder;
                                                yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                                c07031.L$0 = loadResult4;
                                                c07031.L$1 = holder5;
                                                c07031.L$2 = yg5Var6;
                                                c07031.label = 7;
                                                if (yg5Var6.lock(null, c07031) != a32Var) {
                                                    yg5Var7 = yg5Var6;
                                                    loadResult6 = loadResult4;
                                                    pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                    yg5Var7.unlock(null);
                                                    page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                    if (page2.getPrevKey() == null) {
                                                        this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                    }
                                                    if (page2.getNextKey() == null) {
                                                        this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                    }
                                                }
                                                break;
                                            }
                                            return j59.a;
                                        }
                                    }
                                }
                            } else {
                                if (loadResult instanceof PagingSource.LoadResult.Error) {
                                    if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                                        me0.e();
                                        return null;
                                    }
                                    pagingLogger2 = PagingLogger.INSTANCE;
                                    if (pagingLogger2.isLoggable(2)) {
                                        pagingLogger2.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                    }
                                    onInvalidLoad();
                                    return j59.a;
                                }
                                pagingLogger3 = PagingLogger.INSTANCE;
                                if (pagingLogger3.isLoggable(2)) {
                                    pagingLogger3.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                }
                                holder2 = this.stateHolder;
                                yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
                                c07031.L$0 = loadResult;
                                c07031.L$1 = holder2;
                                c07031.L$2 = yg5Var2;
                                c07031.label = 8;
                                if (yg5Var2.lock(null, c07031) != a32Var) {
                                    loadResult2 = loadResult;
                                    pageFetcherSnapshotState3 = ((PageFetcherSnapshotState.Holder) holder2).state;
                                    error = new LoadState.Error(((PagingSource.LoadResult.Error) loadResult2).getThrowable());
                                    loadType3 = LoadType.REFRESH;
                                    c07031.L$0 = yg5Var2;
                                    c07031.L$1 = null;
                                    c07031.L$2 = null;
                                    c07031.label = 9;
                                    if (setError(pageFetcherSnapshotState3, loadType3, error, c07031) != a32Var) {
                                        yg5Var8 = yg5Var2;
                                        j59 j59Var9 = j59.a;
                                        yg5Var8.unlock(null);
                                        return j59.a;
                                    }
                                }
                            }
                        }
                        return a32Var;
                    case 3:
                        r57.b(objLoad);
                        loadResult = (PagingSource.LoadResult) objLoad;
                        if (loadResult instanceof PagingSource.LoadResult.Page) {
                            holder3 = this.stateHolder;
                            yg5Var3 = ((PageFetcherSnapshotState.Holder) holder3).lock;
                            c07031.L$0 = loadResult;
                            c07031.L$1 = holder3;
                            c07031.L$2 = yg5Var3;
                            c07031.label = 4;
                            if (yg5Var3.lock(null, c07031) != a32Var) {
                                loadResult3 = loadResult;
                                pageFetcherSnapshotState2 = ((PageFetcherSnapshotState.Holder) holder3).state;
                                loadType2 = LoadType.REFRESH;
                                zInsert = pageFetcherSnapshotState2.insert(0, loadType2, (PagingSource.LoadResult.Page) loadResult3, this.initialKey);
                                MutableLoadStateCollection sourceLoadStates$paging_common4 = pageFetcherSnapshotState2.getSourceLoadStates$paging_common();
                                companion = LoadState.NotLoading.Companion;
                                sourceLoadStates$paging_common4.set(loadType2, companion.getIncomplete$paging_common());
                                if (((PagingSource.LoadResult.Page) loadResult3).getPrevKey() == null) {
                                    pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.PREPEND, companion.getComplete$paging_common());
                                }
                                if (((PagingSource.LoadResult.Page) loadResult3).getNextKey() == null) {
                                    pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.APPEND, companion.getComplete$paging_common());
                                }
                                yg5Var3.unlock(null);
                                if (!zInsert) {
                                    pagingLogger4 = PagingLogger.INSTANCE;
                                    if (pagingLogger4.isLoggable(2)) {
                                        pagingLogger4.log(2, loadResultLog(loadType2, this.initialKey, null), null);
                                    }
                                    loadResult4 = loadResult3;
                                    if (this.remoteMediatorConnection != null) {
                                        page = (PagingSource.LoadResult.Page) loadResult4;
                                        if (page.getPrevKey() != null) {
                                        }
                                        holder5 = this.stateHolder;
                                        yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                        c07031.L$0 = loadResult4;
                                        c07031.L$1 = holder5;
                                        c07031.L$2 = yg5Var6;
                                        c07031.label = 7;
                                        if (yg5Var6.lock(null, c07031) != a32Var) {
                                            yg5Var7 = yg5Var6;
                                            loadResult6 = loadResult4;
                                            pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                            yg5Var7.unlock(null);
                                            page2 = (PagingSource.LoadResult.Page) loadResult6;
                                            if (page2.getPrevKey() == null) {
                                                this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                            }
                                            if (page2.getNextKey() == null) {
                                                this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                            }
                                        }
                                        break;
                                    }
                                    return j59.a;
                                }
                                pagingLogger5 = PagingLogger.INSTANCE;
                                if (pagingLogger5.isLoggable(3)) {
                                    pagingLogger5.log(3, loadResultLog(loadType2, this.initialKey, loadResult3), null);
                                }
                                holder4 = this.stateHolder;
                                yg5Var4 = ((PageFetcherSnapshotState.Holder) holder4).lock;
                                c07031.L$0 = loadResult3;
                                c07031.L$1 = holder4;
                                c07031.L$2 = yg5Var4;
                                c07031.label = 5;
                                if (yg5Var4.lock(null, c07031) != a32Var) {
                                    yg5Var5 = yg5Var4;
                                    loadResult5 = loadResult3;
                                    PageFetcherSnapshotState pageFetcherSnapshotState7 = ((PageFetcherSnapshotState.Holder) holder4).state;
                                    x81Var = this.pageEventCh;
                                    pageEvent$paging_common = pageFetcherSnapshotState7.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                                    c07031.L$0 = loadResult5;
                                    c07031.L$1 = yg5Var5;
                                    c07031.L$2 = null;
                                    c07031.label = 6;
                                    if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                                        loadResult4 = loadResult5;
                                        r2 = yg5Var5;
                                        j59 j59Var10 = j59.a;
                                        r2.unlock(null);
                                        if (this.remoteMediatorConnection != null) {
                                            page = (PagingSource.LoadResult.Page) loadResult4;
                                            if (page.getPrevKey() != null) {
                                            }
                                            holder5 = this.stateHolder;
                                            yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                            c07031.L$0 = loadResult4;
                                            c07031.L$1 = holder5;
                                            c07031.L$2 = yg5Var6;
                                            c07031.label = 7;
                                            if (yg5Var6.lock(null, c07031) != a32Var) {
                                                yg5Var7 = yg5Var6;
                                                loadResult6 = loadResult4;
                                                pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                                yg5Var7.unlock(null);
                                                page2 = (PagingSource.LoadResult.Page) loadResult6;
                                                if (page2.getPrevKey() == null) {
                                                    this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                                }
                                                if (page2.getNextKey() == null) {
                                                    this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                                }
                                            }
                                            break;
                                        }
                                        return j59.a;
                                    }
                                }
                            }
                            break;
                        } else {
                            if (loadResult instanceof PagingSource.LoadResult.Error) {
                                if (loadResult instanceof PagingSource.LoadResult.Invalid) {
                                    me0.e();
                                    return null;
                                }
                                pagingLogger2 = PagingLogger.INSTANCE;
                                if (pagingLogger2.isLoggable(2)) {
                                    pagingLogger2.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                                }
                                onInvalidLoad();
                                return j59.a;
                            }
                            pagingLogger3 = PagingLogger.INSTANCE;
                            if (pagingLogger3.isLoggable(2)) {
                                pagingLogger3.log(2, loadResultLog(LoadType.REFRESH, this.initialKey, loadResult), null);
                            }
                            holder2 = this.stateHolder;
                            yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
                            c07031.L$0 = loadResult;
                            c07031.L$1 = holder2;
                            c07031.L$2 = yg5Var2;
                            c07031.label = 8;
                            if (yg5Var2.lock(null, c07031) != a32Var) {
                                loadResult2 = loadResult;
                                pageFetcherSnapshotState3 = ((PageFetcherSnapshotState.Holder) holder2).state;
                                error = new LoadState.Error(((PagingSource.LoadResult.Error) loadResult2).getThrowable());
                                loadType3 = LoadType.REFRESH;
                                c07031.L$0 = yg5Var2;
                                c07031.L$1 = null;
                                c07031.L$2 = null;
                                c07031.label = 9;
                                if (setError(pageFetcherSnapshotState3, loadType3, error, c07031) != a32Var) {
                                    yg5Var8 = yg5Var2;
                                    j59 j59Var11 = j59.a;
                                    yg5Var8.unlock(null);
                                    return j59.a;
                                }
                            }
                        }
                        return a32Var;
                    case 4:
                        yg5Var3 = (yg5) c07031.L$2;
                        holder3 = (PageFetcherSnapshotState.Holder) c07031.L$1;
                        loadResult3 = (PagingSource.LoadResult) c07031.L$0;
                        r57.b(objLoad);
                        pageFetcherSnapshotState2 = ((PageFetcherSnapshotState.Holder) holder3).state;
                        loadType2 = LoadType.REFRESH;
                        zInsert = pageFetcherSnapshotState2.insert(0, loadType2, (PagingSource.LoadResult.Page) loadResult3, this.initialKey);
                        MutableLoadStateCollection sourceLoadStates$paging_common5 = pageFetcherSnapshotState2.getSourceLoadStates$paging_common();
                        companion = LoadState.NotLoading.Companion;
                        sourceLoadStates$paging_common5.set(loadType2, companion.getIncomplete$paging_common());
                        if (((PagingSource.LoadResult.Page) loadResult3).getPrevKey() == null) {
                            pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.PREPEND, companion.getComplete$paging_common());
                        }
                        if (((PagingSource.LoadResult.Page) loadResult3).getNextKey() == null) {
                            pageFetcherSnapshotState2.getSourceLoadStates$paging_common().set(LoadType.APPEND, companion.getComplete$paging_common());
                            break;
                        }
                        yg5Var3.unlock(null);
                        if (!zInsert) {
                            pagingLogger4 = PagingLogger.INSTANCE;
                            if (pagingLogger4.isLoggable(2)) {
                                pagingLogger4.log(2, loadResultLog(loadType2, this.initialKey, null), null);
                            }
                            loadResult4 = loadResult3;
                            if (this.remoteMediatorConnection != null) {
                                page = (PagingSource.LoadResult.Page) loadResult4;
                                if (page.getPrevKey() != null) {
                                }
                                holder5 = this.stateHolder;
                                yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                c07031.L$0 = loadResult4;
                                c07031.L$1 = holder5;
                                c07031.L$2 = yg5Var6;
                                c07031.label = 7;
                                if (yg5Var6.lock(null, c07031) != a32Var) {
                                    yg5Var7 = yg5Var6;
                                    loadResult6 = loadResult4;
                                    pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                    yg5Var7.unlock(null);
                                    page2 = (PagingSource.LoadResult.Page) loadResult6;
                                    if (page2.getPrevKey() == null) {
                                        this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                    }
                                    if (page2.getNextKey() == null) {
                                        this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                    }
                                }
                                break;
                            }
                            return j59.a;
                        }
                        pagingLogger5 = PagingLogger.INSTANCE;
                        if (pagingLogger5.isLoggable(3)) {
                            pagingLogger5.log(3, loadResultLog(loadType2, this.initialKey, loadResult3), null);
                        }
                        holder4 = this.stateHolder;
                        yg5Var4 = ((PageFetcherSnapshotState.Holder) holder4).lock;
                        c07031.L$0 = loadResult3;
                        c07031.L$1 = holder4;
                        c07031.L$2 = yg5Var4;
                        c07031.label = 5;
                        if (yg5Var4.lock(null, c07031) != a32Var) {
                            yg5Var5 = yg5Var4;
                            loadResult5 = loadResult3;
                            PageFetcherSnapshotState pageFetcherSnapshotState8 = ((PageFetcherSnapshotState.Holder) holder4).state;
                            x81Var = this.pageEventCh;
                            pageEvent$paging_common = pageFetcherSnapshotState8.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                            c07031.L$0 = loadResult5;
                            c07031.L$1 = yg5Var5;
                            c07031.L$2 = null;
                            c07031.label = 6;
                            if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                                loadResult4 = loadResult5;
                                r2 = yg5Var5;
                                j59 j59Var12 = j59.a;
                                r2.unlock(null);
                                if (this.remoteMediatorConnection != null) {
                                    page = (PagingSource.LoadResult.Page) loadResult4;
                                    if (page.getPrevKey() != null) {
                                    }
                                    holder5 = this.stateHolder;
                                    yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                    c07031.L$0 = loadResult4;
                                    c07031.L$1 = holder5;
                                    c07031.L$2 = yg5Var6;
                                    c07031.label = 7;
                                    if (yg5Var6.lock(null, c07031) != a32Var) {
                                        yg5Var7 = yg5Var6;
                                        loadResult6 = loadResult4;
                                        pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                        yg5Var7.unlock(null);
                                        page2 = (PagingSource.LoadResult.Page) loadResult6;
                                        if (page2.getPrevKey() == null) {
                                            this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                        }
                                        if (page2.getNextKey() == null) {
                                            this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                        }
                                    }
                                    break;
                                }
                                return j59.a;
                            }
                        }
                        return a32Var;
                    case 5:
                        yg5 yg5Var12 = (yg5) c07031.L$2;
                        holder4 = (PageFetcherSnapshotState.Holder) c07031.L$1;
                        loadResult5 = (PagingSource.LoadResult) c07031.L$0;
                        r57.b(objLoad);
                        yg5Var5 = yg5Var12;
                        PageFetcherSnapshotState pageFetcherSnapshotState9 = ((PageFetcherSnapshotState.Holder) holder4).state;
                        x81Var = this.pageEventCh;
                        pageEvent$paging_common = pageFetcherSnapshotState9.toPageEvent$paging_common((PagingSource.LoadResult.Page) loadResult5, LoadType.REFRESH);
                        c07031.L$0 = loadResult5;
                        c07031.L$1 = yg5Var5;
                        c07031.L$2 = null;
                        c07031.label = 6;
                        if (x81Var.send(pageEvent$paging_common, c07031) == a32Var) {
                            loadResult4 = loadResult5;
                            r2 = yg5Var5;
                            j59 j59Var13 = j59.a;
                            r2.unlock(null);
                            if (this.remoteMediatorConnection != null) {
                                page = (PagingSource.LoadResult.Page) loadResult4;
                                if (page.getPrevKey() != null) {
                                }
                                holder5 = this.stateHolder;
                                yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                                c07031.L$0 = loadResult4;
                                c07031.L$1 = holder5;
                                c07031.L$2 = yg5Var6;
                                c07031.label = 7;
                                if (yg5Var6.lock(null, c07031) != a32Var) {
                                    yg5Var7 = yg5Var6;
                                    loadResult6 = loadResult4;
                                    pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                    yg5Var7.unlock(null);
                                    page2 = (PagingSource.LoadResult.Page) loadResult6;
                                    if (page2.getPrevKey() == null) {
                                        this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                    }
                                    if (page2.getNextKey() == null) {
                                        this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                    }
                                }
                                break;
                            }
                            return j59.a;
                        }
                        return a32Var;
                    case 6:
                        yg5 yg5Var13 = (yg5) c07031.L$1;
                        loadResult4 = (PagingSource.LoadResult) c07031.L$0;
                        r57.b(objLoad);
                        r2 = yg5Var13;
                        j59 j59Var14 = j59.a;
                        r2.unlock(null);
                        if (this.remoteMediatorConnection != null) {
                            page = (PagingSource.LoadResult.Page) loadResult4;
                            if (page.getPrevKey() != null) {
                                break;
                            }
                            holder5 = this.stateHolder;
                            yg5Var6 = ((PageFetcherSnapshotState.Holder) holder5).lock;
                            c07031.L$0 = loadResult4;
                            c07031.L$1 = holder5;
                            c07031.L$2 = yg5Var6;
                            c07031.label = 7;
                            if (yg5Var6.lock(null, c07031) != a32Var) {
                                yg5Var7 = yg5Var6;
                                loadResult6 = loadResult4;
                                pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                                yg5Var7.unlock(null);
                                page2 = (PagingSource.LoadResult.Page) loadResult6;
                                if (page2.getPrevKey() == null) {
                                    this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                                }
                                if (page2.getNextKey() == null) {
                                    this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                                }
                            }
                            return a32Var;
                        }
                        return j59.a;
                    case 7:
                        yg5Var7 = (yg5) c07031.L$2;
                        holder5 = (PageFetcherSnapshotState.Holder) c07031.L$1;
                        loadResult6 = (PagingSource.LoadResult) c07031.L$0;
                        r57.b(objLoad);
                        pagingStateCurrentPagingState$paging_common = ((PageFetcherSnapshotState.Holder) holder5).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
                        yg5Var7.unlock(null);
                        page2 = (PagingSource.LoadResult.Page) loadResult6;
                        if (page2.getPrevKey() == null) {
                            this.remoteMediatorConnection.requestLoad(LoadType.PREPEND, pagingStateCurrentPagingState$paging_common);
                        }
                        if (page2.getNextKey() == null) {
                            this.remoteMediatorConnection.requestLoad(LoadType.APPEND, pagingStateCurrentPagingState$paging_common);
                        }
                        return j59.a;
                    case 8:
                        yg5Var2 = (yg5) c07031.L$2;
                        holder2 = (PageFetcherSnapshotState.Holder) c07031.L$1;
                        loadResult2 = (PagingSource.LoadResult) c07031.L$0;
                        r57.b(objLoad);
                        pageFetcherSnapshotState3 = ((PageFetcherSnapshotState.Holder) holder2).state;
                        error = new LoadState.Error(((PagingSource.LoadResult.Error) loadResult2).getThrowable());
                        loadType3 = LoadType.REFRESH;
                        c07031.L$0 = yg5Var2;
                        c07031.L$1 = null;
                        c07031.L$2 = null;
                        c07031.label = 9;
                        if (setError(pageFetcherSnapshotState3, loadType3, error, c07031) != a32Var) {
                            yg5Var8 = yg5Var2;
                            j59 j59Var15 = j59.a;
                            yg5Var8.unlock(null);
                            return j59.a;
                        }
                        return a32Var;
                    case 9:
                        yg5Var8 = (yg5) c07031.L$0;
                        try {
                            r57.b(objLoad);
                            j59 j59Var16 = j59.a;
                            yg5Var8.unlock(null);
                            return j59.a;
                        } catch (Throwable th4) {
                            th = th4;
                            yg5Var8.unlock(null);
                            throw th;
                        }
                    default:
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                }
            } catch (Throwable th5) {
                r2.unlock(null);
                throw th5;
            }
        } catch (Throwable th6) {
            r2.unlock(null);
            throw th6;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:101:0x038c  */
    /* JADX WARN: Code duplicated, block: B:103:0x038f  */
    /* JADX WARN: Code duplicated, block: B:104:0x0397  */
    /* JADX WARN: Code duplicated, block: B:107:0x039d  */
    /* JADX WARN: Code duplicated, block: B:110:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:121:0x0407  */
    /* JADX WARN: Code duplicated, block: B:125:0x0420  */
    /* JADX WARN: Code duplicated, block: B:127:0x0429  */
    /* JADX WARN: Code duplicated, block: B:128:0x0434  */
    /* JADX WARN: Code duplicated, block: B:130:0x043d  */
    /* JADX WARN: Code duplicated, block: B:133:0x045a  */
    /* JADX WARN: Code duplicated, block: B:146:0x047d  */
    /* JADX WARN: Code duplicated, block: B:150:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:153:0x04bf A[Catch: all -> 0x04ff, TRY_LEAVE, TryCatch #8 {all -> 0x04ff, blocks: (B:151:0x04b1, B:153:0x04bf, B:165:0x0503, B:167:0x051a, B:169:0x0526, B:171:0x052e, B:173:0x053b, B:172:0x0535, B:174:0x053e, B:178:0x056c), top: B:266:0x04b1 }] */
    /* JADX WARN: Code duplicated, block: B:156:0x04e5  */
    /* JADX WARN: Code duplicated, block: B:167:0x051a A[Catch: all -> 0x04ff, TryCatch #8 {all -> 0x04ff, blocks: (B:151:0x04b1, B:153:0x04bf, B:165:0x0503, B:167:0x051a, B:169:0x0526, B:171:0x052e, B:173:0x053b, B:172:0x0535, B:174:0x053e, B:178:0x056c), top: B:266:0x04b1 }] */
    /* JADX WARN: Code duplicated, block: B:171:0x052e A[Catch: all -> 0x04ff, TryCatch #8 {all -> 0x04ff, blocks: (B:151:0x04b1, B:153:0x04bf, B:165:0x0503, B:167:0x051a, B:169:0x0526, B:171:0x052e, B:173:0x053b, B:172:0x0535, B:174:0x053e, B:178:0x056c), top: B:266:0x04b1 }] */
    /* JADX WARN: Code duplicated, block: B:172:0x0535 A[Catch: all -> 0x04ff, TryCatch #8 {all -> 0x04ff, blocks: (B:151:0x04b1, B:153:0x04bf, B:165:0x0503, B:167:0x051a, B:169:0x0526, B:171:0x052e, B:173:0x053b, B:172:0x0535, B:174:0x053e, B:178:0x056c), top: B:266:0x04b1 }] */
    /* JADX WARN: Code duplicated, block: B:176:0x0566  */
    /* JADX WARN: Code duplicated, block: B:177:0x0568  */
    /* JADX WARN: Code duplicated, block: B:181:0x0576  */
    /* JADX WARN: Code duplicated, block: B:184:0x0581  */
    /* JADX WARN: Code duplicated, block: B:187:0x0586  */
    /* JADX WARN: Code duplicated, block: B:190:0x0590  */
    /* JADX WARN: Code duplicated, block: B:193:0x0595 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:7:0x0019  */
    /* JADX WARN: Code duplicated, block: B:89:0x0320  */
    /* JADX WARN: Code duplicated, block: B:91:0x032d  */
    /* JADX WARN: Code duplicated, block: B:92:0x0355  */
    /* JADX WARN: Code duplicated, block: B:96:0x0373  */
    /* JADX WARN: Code duplicated, block: B:99:0x0381  */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r11v39, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v41 */
    /* JADX WARN: Type inference failed for: r11v42, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v44 */
    /* JADX WARN: Type inference failed for: r11v51 */
    /* JADX WARN: Type inference failed for: r11v52 */
    /* JADX WARN: Type inference failed for: r12v12, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v15 */
    /* JADX WARN: Type inference failed for: r12v16 */
    /* JADX WARN: Type inference failed for: r12v38, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v41 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v49 */
    /* JADX WARN: Type inference failed for: r12v5 */
    /* JADX WARN: Type inference failed for: r12v50 */
    /* JADX WARN: Type inference failed for: r12v51 */
    /* JADX WARN: Type inference failed for: r13v12, types: [androidx.paging.ViewportHint] */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v17, types: [androidx.paging.LoadType, java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v19, types: [androidx.paging.LoadType, java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r14v22 */
    /* JADX WARN: Type inference failed for: r14v24 */
    /* JADX WARN: Type inference failed for: r14v25 */
    /* JADX WARN: Type inference failed for: r14v28 */
    /* JADX WARN: Type inference failed for: r14v29 */
    /* JADX WARN: Type inference failed for: r14v30 */
    /* JADX WARN: Type inference failed for: r14v31 */
    /* JADX WARN: Type inference failed for: r14v32 */
    /* JADX WARN: Type inference failed for: r15v20 */
    /* JADX WARN: Type inference failed for: r15v5 */
    /* JADX WARN: Type inference failed for: r15v8 */
    /* JADX WARN: Type inference failed for: r18v0, types: [androidx.paging.PageFetcherSnapshot, androidx.paging.PageFetcherSnapshot<Key, Value>] */
    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v1, types: [yg5] */
    /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Enum, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v31, types: [yg5] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v71 */
    /* JADX WARN: Type inference failed for: r1v72 */
    /* JADX WARN: Type inference failed for: r1v73 */
    /* JADX WARN: Type inference failed for: r2v10, types: [T] */
    /* JADX WARN: Type inference failed for: r2v11 */
    /* JADX WARN: Type inference failed for: r2v23, types: [androidx.paging.PageFetcherSnapshotState] */
    /* JADX WARN: Type inference failed for: r2v27 */
    /* JADX WARN: Type inference failed for: r2v29, types: [androidx.paging.PageFetcherSnapshotState] */
    /* JADX WARN: Type inference failed for: r2v64 */
    /* JADX WARN: Type inference failed for: r2v8 */
    /* JADX WARN: Type inference failed for: r3v12 */
    /* JADX WARN: Type inference failed for: r3v15 */
    /* JADX WARN: Type inference failed for: r3v16 */
    /* JADX WARN: Type inference failed for: r3v3 */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v7, types: [androidx.paging.LoadType, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v55, types: [java.lang.StringBuilder] */
    /* JADX WARN: Type inference failed for: r8v28, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v33, types: [androidx.paging.MutableLoadStateCollection] */
    /* JADX WARN: Type inference failed for: r8v36, types: [androidx.paging.MutableLoadStateCollection] */
    /* JADX WARN: Type inference failed for: r9v47, types: [androidx.paging.ViewportHint] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:192:0x0593 -> B:205:0x05ea). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:194:0x0597 -> B:205:0x05ea). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:198:0x05c0 -> B:268:0x05c6). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    public final java.lang.Object doLoad(androidx.paging.LoadType r19, androidx.paging.GenerationalViewportHint r20, defpackage.e02<? super defpackage.j59> r21) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot.doLoad(androidx.paging.LoadType, androidx.paging.GenerationalViewportHint, e02):java.lang.Object");
    }

    private final PagingSource.LoadParams<Key> loadParams(LoadType loadType, Key key) {
        return PagingSource.LoadParams.Companion.create(loadType, key, loadType == LoadType.REFRESH ? this.initialLoadSize : this.config.pageSize, this.config.enablePlaceholders);
    }

    private final String loadResultLog(LoadType loadType, Key key, PagingSource.LoadResult<Key, Value> loadResult) {
        if (loadResult == null) {
            return "End " + loadType + " with loadkey " + key + ". Load CANCELLED.";
        }
        return "End " + loadType + " with loadKey " + key + ". Returned " + loadResult;
    }

    private final Key nextLoadKeyOrNull(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, int i, int i2) {
        if (i == pageFetcherSnapshotState.generationId$paging_common(loadType) && !(pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType) instanceof LoadState.Error) && i2 < this.config.prefetchDistance) {
            return loadType == LoadType.PREPEND ? (Key) ((PagingSource.LoadResult.Page) qn1.T(pageFetcherSnapshotState.getPages$paging_common())).getPrevKey() : (Key) ((PagingSource.LoadResult.Page) qn1.b0(pageFetcherSnapshotState.getPages$paging_common())).getNextKey();
        }
        return null;
    }

    private final void onInvalidLoad() {
        close();
        this.pagingSource.invalidate();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object retryLoadError(LoadType loadType, ViewportHint viewportHint, e02<? super j59> e02Var) throws Throwable {
        if (WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()] == 1) {
            Object objDoInitialLoad = doInitialLoad(e02Var);
            return objDoInitialLoad == a32.COROUTINE_SUSPENDED ? objDoInitialLoad : j59.a;
        }
        if (viewportHint != null) {
            this.hintHandler.forceSetHint(loadType, viewportHint);
            return j59.a;
        }
        ah.f("Cannot retry APPEND / PREPEND load on PagingSource without ViewportHint");
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setError(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, LoadState.Error error, e02<? super j59> e02Var) {
        if (aa4.e(pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType), error)) {
            return j59.a;
        }
        pageFetcherSnapshotState.getSourceLoadStates$paging_common().set(loadType, error);
        Object objSend = this.pageEventCh.send(new PageEvent.LoadStateUpdate(pageFetcherSnapshotState.getSourceLoadStates$paging_common().snapshot(), null), e02Var);
        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object setLoading(PageFetcherSnapshotState<Key, Value> pageFetcherSnapshotState, LoadType loadType, e02<? super j59> e02Var) {
        LoadState loadState = pageFetcherSnapshotState.getSourceLoadStates$paging_common().get(loadType);
        LoadState.Loading loading = LoadState.Loading.INSTANCE;
        if (aa4.e(loadState, loading)) {
            return j59.a;
        }
        pageFetcherSnapshotState.getSourceLoadStates$paging_common().set(loadType, loading);
        Object objSend = this.pageEventCh.send(new PageEvent.LoadStateUpdate(pageFetcherSnapshotState.getSourceLoadStates$paging_common().snapshot(), null), e02Var);
        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void startConsumingHints(y22 y22Var) {
        if (this.config.jumpThreshold != Integer.MIN_VALUE) {
            av0.c(y22Var, null, null, new C07061(this, null), 3);
        }
        av0.c(y22Var, null, null, new AnonymousClass2(this, null), 3);
        av0.c(y22Var, null, null, new C07073(this, null), 3);
    }

    public final void close() {
        this.pageEventChannelFlowJob.cancel(null);
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object currentPagingState(e02<? super PagingState<Key, Value>> e02Var) {
        AnonymousClass1 anonymousClass1;
        PageFetcherSnapshotState.Holder<Key, Value> holder;
        yg5 yg5Var;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(obj);
            PageFetcherSnapshotState.Holder<Key, Value> holder2 = this.stateHolder;
            yg5 yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
            anonymousClass1.L$0 = holder2;
            anonymousClass1.L$1 = yg5Var2;
            anonymousClass1.label = 1;
            if (yg5Var2.lock(null, anonymousClass1) == a32Var) {
                return a32Var;
            }
            holder = holder2;
            yg5Var = yg5Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) anonymousClass1.L$1;
            holder = (PageFetcherSnapshotState.Holder) anonymousClass1.L$0;
            r57.b(obj);
        }
        try {
            return ((PageFetcherSnapshotState.Holder) holder).state.currentPagingState$paging_common(this.hintHandler.getLastAccessHint());
        } finally {
            yg5Var.unlock(null);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object forceSetHint(LoadType loadType, e02<? super j59> e02Var) {
        C07051 c07051;
        yg5 yg5Var;
        PageFetcherSnapshotState.Holder<Key, Value> holder;
        if (e02Var instanceof C07051) {
            c07051 = (C07051) e02Var;
            int i = c07051.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07051.label = i - Integer.MIN_VALUE;
            } else {
                c07051 = new C07051(this, e02Var);
            }
        } else {
            c07051 = new C07051(this, e02Var);
        }
        Object obj = c07051.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07051.label;
        if (i2 == 0) {
            r57.b(obj);
            if (loadType == LoadType.REFRESH) {
                fg.c("Called for REFRESH but this should only be called for either APPEND or PREPEND loads. This error indicates a bug in the Paging library. Please file a bug report in Buganizer.");
                return null;
            }
            PageFetcherSnapshotState.Holder<Key, Value> holder2 = this.stateHolder;
            yg5Var = ((PageFetcherSnapshotState.Holder) holder2).lock;
            c07051.L$0 = loadType;
            c07051.L$1 = holder2;
            c07051.L$2 = yg5Var;
            c07051.label = 1;
            if (yg5Var.lock(null, c07051) == a32Var) {
                return a32Var;
            }
            holder = holder2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5 yg5Var2 = (yg5) c07051.L$2;
            holder = (PageFetcherSnapshotState.Holder) c07051.L$1;
            LoadType loadType2 = (LoadType) c07051.L$0;
            r57.b(obj);
            yg5Var = yg5Var2;
            loadType = loadType2;
        }
        try {
            PageFetcherSnapshotState pageFetcherSnapshotState = ((PageFetcherSnapshotState.Holder) holder).state;
            int i3 = -pageFetcherSnapshotState.getInitialPageIndex$paging_common();
            int size = (pageFetcherSnapshotState.getPages$paging_common().size() - pageFetcherSnapshotState.getInitialPageIndex$paging_common()) - 1;
            this.hintHandler.forceSetHint(loadType, loadType == LoadType.APPEND ? new ViewportHint.Access(size, u96.g(((PagingSource.LoadResult.Page) qn1.b0(pageFetcherSnapshotState.getPages$paging_common())).getData()), pageFetcherSnapshotState.getStorageCount$paging_common() - 1, 0, i3, size) : new ViewportHint.Access(i3, 0, 0, pageFetcherSnapshotState.getStorageCount$paging_common() - 1, i3, size));
            j59 j59Var = j59.a;
            return j59.a;
        } finally {
            yg5Var.unlock(null);
        }
    }

    public final Key getInitialKey$paging_common() {
        return this.initialKey;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object getLoadKey$paging_common(PagingSource.LoadResult.Page<Key, Value> page, e02<? super Key> e02Var) {
        PageFetcherSnapshot$getLoadKey$1 pageFetcherSnapshot$getLoadKey$1;
        PagingSource.LoadResult.Page<Key, Value> page2;
        PageFetcherSnapshotState.Holder<Key, Value> holder;
        yg5 yg5Var;
        if (e02Var instanceof PageFetcherSnapshot$getLoadKey$1) {
            pageFetcherSnapshot$getLoadKey$1 = (PageFetcherSnapshot$getLoadKey$1) e02Var;
            int i = pageFetcherSnapshot$getLoadKey$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                pageFetcherSnapshot$getLoadKey$1.label = i - Integer.MIN_VALUE;
            } else {
                pageFetcherSnapshot$getLoadKey$1 = new PageFetcherSnapshot$getLoadKey$1(this, e02Var);
            }
        } else {
            pageFetcherSnapshot$getLoadKey$1 = new PageFetcherSnapshot$getLoadKey$1(this, e02Var);
        }
        Object obj = pageFetcherSnapshot$getLoadKey$1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = pageFetcherSnapshot$getLoadKey$1.label;
        if (i2 == 0) {
            r57.b(obj);
            PageFetcherSnapshotState.Holder<Key, Value> holder2 = this.stateHolder;
            yg5 yg5Var2 = ((PageFetcherSnapshotState.Holder) holder2).lock;
            pageFetcherSnapshot$getLoadKey$1.L$0 = page;
            pageFetcherSnapshot$getLoadKey$1.L$1 = holder2;
            pageFetcherSnapshot$getLoadKey$1.L$2 = yg5Var2;
            pageFetcherSnapshot$getLoadKey$1.label = 1;
            if (yg5Var2.lock(null, pageFetcherSnapshot$getLoadKey$1) == a32Var) {
                return a32Var;
            }
            page2 = page;
            holder = holder2;
            yg5Var = yg5Var2;
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            yg5Var = (yg5) pageFetcherSnapshot$getLoadKey$1.L$2;
            holder = (PageFetcherSnapshotState.Holder) pageFetcherSnapshot$getLoadKey$1.L$1;
            page2 = (PagingSource.LoadResult.Page) pageFetcherSnapshot$getLoadKey$1.L$0;
            r57.b(obj);
        }
        try {
            return ((PageFetcherSnapshotState.Holder) holder).state.getLoadKey(page2);
        } finally {
            yg5Var.unlock(null);
        }
    }

    public final hd3<PageEvent<Value>> getPageEventFlow() {
        return this.pageEventFlow;
    }

    public final PagingSource<Key, Value> getPagingSource$paging_common() {
        return this.pagingSource;
    }

    public final RemoteMediatorConnection<Key, Value> getRemoteMediatorConnection() {
        return this.remoteMediatorConnection;
    }

    public final void processHint(ViewportHint viewportHint) {
        viewportHint.getClass();
        this.hintHandler.processHint(viewportHint);
    }

    public /* synthetic */ PageFetcherSnapshot(Object obj, PagingSource pagingSource, PagingConfig pagingConfig, hd3 hd3Var, int i, RemoteMediatorConnection remoteMediatorConnection, PagingState pagingState, ll3 ll3Var, int i2, jh2 jh2Var) {
        this(obj, pagingSource, pagingConfig, hd3Var, (i2 & 16) != 0 ? pagingConfig.initialLoadSize : i, (i2 & 32) != 0 ? null : remoteMediatorConnection, (i2 & 64) != 0 ? null : pagingState, (i2 & 128) != 0 ? new qt4(1) : ll3Var);
    }
}
