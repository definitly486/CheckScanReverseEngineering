package androidx.paging;

import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.me0;
import defpackage.nl3;
import defpackage.pg8;
import defpackage.qm3;
import defpackage.r57;
import defpackage.vg;

/* JADX INFO: loaded from: classes3.dex */
public final class PageFetcher<Key, Value> {
    private final PagingConfig config;
    private final hd3<PagingData<Value>> flow;
    private final Key initialKey;
    private final ConflatedEventBus<LoadRequest> loadRequests;
    private final nl3<e02<? super PagingSource<Key, Value>>, Object> pagingSourceFactory;
    private final ConflatedEventBus<j59> retryEvents;

    public static final class GenerationInfo<Key, Value> {
        private final PagingState<Key, Value> cachedInitialState;
        private final mb4 job;
        private final PageFetcherSnapshot<Key, Value> snapshot;

        public GenerationInfo(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, PagingState<Key, Value> pagingState, mb4 mb4Var) {
            pageFetcherSnapshot.getClass();
            mb4Var.getClass();
            this.snapshot = pageFetcherSnapshot;
            this.cachedInitialState = pagingState;
            this.job = mb4Var;
        }

        public final PagingState<Key, Value> getCachedInitialState() {
            return this.cachedInitialState;
        }

        public final mb4 getJob() {
            return this.job;
        }

        public final PageFetcherSnapshot<Key, Value> getSnapshot() {
            return this.snapshot;
        }
    }

    public final class PagerHintReceiver<Key, Value> implements HintReceiver {
        private final PageFetcherSnapshot<Key, Value> pageFetcherSnapshot;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        public PagerHintReceiver(PageFetcher pageFetcher, PageFetcherSnapshot<Key, Value> pageFetcherSnapshot) {
            pageFetcherSnapshot.getClass();
            this.this$0 = pageFetcher;
            this.pageFetcherSnapshot = pageFetcherSnapshot;
        }

        public final PageFetcherSnapshot<Key, Value> getPageFetcherSnapshot$paging_common() {
            return this.pageFetcherSnapshot;
        }

        @Override // androidx.paging.HintReceiver
        public void processHint(ViewportHint viewportHint) {
            viewportHint.getClass();
            this.pageFetcherSnapshot.processHint(viewportHint);
        }
    }

    public final class PagerUiReceiver implements UiReceiver {
        private final ConflatedEventBus<j59> retryEventBus;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        public PagerUiReceiver(PageFetcher pageFetcher, ConflatedEventBus<j59> conflatedEventBus) {
            conflatedEventBus.getClass();
            this.this$0 = pageFetcher;
            this.retryEventBus = conflatedEventBus;
        }

        @Override // androidx.paging.UiReceiver
        public void refresh() {
            PageFetcher.refresh$default(this.this$0, null, 1, null);
        }

        @Override // androidx.paging.UiReceiver
        public void retry() {
            this.retryEventBus.send(j59.a);
        }
    }

    public static final /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[LoadType.values().length];
            try {
                iArr[LoadType.APPEND.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[LoadType.PREPEND.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                iArr[LoadType.REFRESH.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            $EnumSwitchMapping$0 = iArr;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$generateNewPagingSource$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcher", f = "PageFetcher.kt", l = {322}, m = "generateNewPagingSource", v = 1)
    public static final class AnonymousClass1 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PageFetcher<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PageFetcher<Key, Value> pageFetcher, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = pageFetcher;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.generateNewPagingSource(null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.paging.PageFetcher$injectRemoteEvents$1", f = "PageFetcher.kt", l = {315}, m = "invokeSuspend", v = 1)
    public static final class C07021 extends pg8 implements bm3<SimpleProducerScope<PageEvent<Value>>, e02<? super j59>, Object> {
        final /* synthetic */ RemoteMediatorAccessor<Key, Value> $accessor;
        final /* synthetic */ MutableLoadStateCollection $sourceStates;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> $this_injectRemoteEvents;
        private /* synthetic */ Object L$0;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07021(RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor, PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, MutableLoadStateCollection mutableLoadStateCollection, e02<? super C07021> e02Var) {
            super(2, e02Var);
            this.$accessor = remoteMediatorAccessor;
            this.$this_injectRemoteEvents = pageFetcherSnapshot;
            this.$sourceStates = mutableLoadStateCollection;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C07021 c07021 = new C07021(this.$accessor, this.$this_injectRemoteEvents, this.$sourceStates, e02Var);
            c07021.L$0 = obj;
            return c07021;
        }

        @Override // defpackage.bm3
        public final Object invoke(SimpleProducerScope<PageEvent<Value>> simpleProducerScope, e02<? super j59> e02Var) {
            return ((C07021) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                final SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
                hd3 hd3VarSimpleChannelFlow = SimpleChannelFlowKt.simpleChannelFlow(new PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(this.$accessor.getState(), this.$this_injectRemoteEvents.getPageEventFlow(), null, this.$sourceStates));
                id3 id3Var = new id3() { // from class: androidx.paging.PageFetcher.injectRemoteEvents.1.2
                    public final Object emit(PageEvent<Value> pageEvent, e02<? super j59> e02Var) {
                        Object objSend = simpleProducerScope.send(pageEvent, e02Var);
                        return objSend == a32.COROUTINE_SUSPENDED ? objSend : j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((PageEvent) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (hd3VarSimpleChannelFlow.collect(id3Var, this) == a32Var) {
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

    /* JADX WARN: Multi-variable type inference failed */
    public PageFetcher(nl3<? super e02<? super PagingSource<Key, Value>>, ? extends Object> nl3Var, Key key, PagingConfig pagingConfig, RemoteMediator<Key, Value> remoteMediator) {
        nl3Var.getClass();
        pagingConfig.getClass();
        this.pagingSourceFactory = nl3Var;
        this.initialKey = key;
        this.config = pagingConfig;
        this.loadRequests = new ConflatedEventBus<>(null, 1, null);
        this.retryEvents = new ConflatedEventBus<>(null, 1, null);
        this.flow = SimpleChannelFlowKt.simpleChannelFlow(new PageFetcher$flow$1(remoteMediator, this, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object generateNewPagingSource(PagingSource<Key, Value> pagingSource, e02<? super PagingSource<Key, Value>> e02Var) {
        AnonymousClass1 anonymousClass1;
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
        Object objInvoke = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objInvoke);
            nl3<e02<? super PagingSource<Key, Value>>, Object> nl3Var = this.pagingSourceFactory;
            anonymousClass1.L$0 = pagingSource;
            anonymousClass1.label = 1;
            objInvoke = nl3Var.invoke(anonymousClass1);
            if (objInvoke == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            pagingSource = (PagingSource) anonymousClass1.L$0;
            r57.b(objInvoke);
        }
        PagingSource pagingSource2 = (PagingSource) objInvoke;
        if (pagingSource2 instanceof CompatLegacyPagingSource) {
            ((CompatLegacyPagingSource) pagingSource2).setPageSize(this.config.pageSize);
        }
        if (pagingSource2 == pagingSource) {
            ah.f("An instance of PagingSource was re-used when Pager expected to create a new\ninstance. Ensure that the pagingSourceFactory passed to Pager always returns a\nnew instance of PagingSource.");
            return null;
        }
        pagingSource2.registerInvalidatedCallback(new AnonymousClass3(this));
        if (pagingSource != null) {
            pagingSource.unregisterInvalidatedCallback(new AnonymousClass4(this));
        }
        if (pagingSource != null) {
            pagingSource.invalidate();
        }
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(3)) {
            pagingLogger.log(3, "Generated new PagingSource " + pagingSource2, null);
        }
        return pagingSource2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final hd3<PageEvent<Value>> injectRemoteEvents(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, mb4 mb4Var, RemoteMediatorAccessor<Key, Value> remoteMediatorAccessor) {
        return remoteMediatorAccessor == null ? pageFetcherSnapshot.getPageEventFlow() : CancelableChannelFlowKt.cancelableChannelFlow(mb4Var, new C07021(remoteMediatorAccessor, pageFetcherSnapshot, new MutableLoadStateCollection(), null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void invalidate() {
        this.loadRequests.send(new LoadRequest.Refresh(false, RefreshType.Anchor.INSTANCE));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void refresh$default(PageFetcher pageFetcher, Object obj, int i, Object obj2) {
        if ((i & 1) != 0) {
            obj = null;
        }
        pageFetcher.refresh(obj);
    }

    public final hd3<PagingData<Value>> getFlow() {
        return this.flow;
    }

    public final void load(LoadType loadType) {
        LoadRequest loadRequest;
        loadType.getClass();
        int i = WhenMappings.$EnumSwitchMapping$0[loadType.ordinal()];
        if (i == 1) {
            loadRequest = LoadRequest.Append.INSTANCE;
        } else {
            if (i != 2) {
                if (i != 3) {
                    me0.e();
                    return;
                } else {
                    fg.c("Load only applies to APPEND or PREPEND");
                    return;
                }
            }
            loadRequest = LoadRequest.Prepend.INSTANCE;
        }
        this.loadRequests.send(loadRequest);
    }

    public final void refresh(Value value) {
        this.loadRequests.send(new LoadRequest.Refresh(true, value == null ? RefreshType.Anchor.INSTANCE : new RefreshType.Item(value)));
    }

    public final void refreshAll() {
        this.loadRequests.send(new LoadRequest.Refresh(true, RefreshType.All.INSTANCE));
    }

    public final void retry() {
        this.retryEvents.send(j59.a);
    }

    public static abstract class RefreshType {

        public static final class All extends RefreshType {
            public static final All INSTANCE = new All();

            private All() {
                super(null);
            }
        }

        public static final class Anchor extends RefreshType {
            public static final Anchor INSTANCE = new Anchor();

            private Anchor() {
                super(null);
            }
        }

        public static final class Initial extends RefreshType {
            public static final Initial INSTANCE = new Initial();

            private Initial() {
                super(null);
            }
        }

        public static final class Item extends RefreshType {
            private final Object item;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Item(Object obj) {
                super(null);
                obj.getClass();
                this.item = obj;
            }

            public static /* synthetic */ Item copy$default(Item item, Object obj, int i, Object obj2) {
                if ((i & 1) != 0) {
                    obj = item.item;
                }
                return item.copy(obj);
            }

            public final Object component1() {
                return this.item;
            }

            public final Item copy(Object obj) {
                obj.getClass();
                return new Item(obj);
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof Item) && aa4.e(this.item, ((Item) obj).item);
            }

            public final Object getItem() {
                return this.item;
            }

            public int hashCode() {
                return this.item.hashCode();
            }

            public String toString() {
                return vg.d(new StringBuilder("Item(item="), this.item, ')');
            }
        }

        public /* synthetic */ RefreshType(jh2 jh2Var) {
            this();
        }

        private RefreshType() {
        }
    }

    public static abstract class LoadRequest {
        private final LoadType loadType;

        public static final class Append extends LoadRequest {
            public static final Append INSTANCE = new Append();

            private Append() {
                super(LoadType.APPEND, null);
            }
        }

        public static final class Prepend extends LoadRequest {
            public static final Prepend INSTANCE = new Prepend();

            private Prepend() {
                super(LoadType.PREPEND, null);
            }
        }

        public static final class Refresh extends LoadRequest {
            private final boolean triggerRemoteRefresh;
            private final RefreshType type;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Refresh(boolean z, RefreshType refreshType) {
                super(LoadType.REFRESH, null);
                refreshType.getClass();
                this.triggerRemoteRefresh = z;
                this.type = refreshType;
            }

            public final boolean getTriggerRemoteRefresh() {
                return this.triggerRemoteRefresh;
            }

            public final RefreshType getType() {
                return this.type;
            }
        }

        private LoadRequest(LoadType loadType) {
            this.loadType = loadType;
        }

        public final LoadType getLoadType() {
            return this.loadType;
        }

        public /* synthetic */ LoadRequest(LoadType loadType, jh2 jh2Var) {
            this(loadType);
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$generateNewPagingSource$3, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass3 extends qm3 implements ll3<j59> {
        public AnonymousClass3(Object obj) {
            super(0, obj, PageFetcher.class, "invalidate", "invalidate()V", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((PageFetcher) this.receiver).invalidate();
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$generateNewPagingSource$4, reason: invalid class name */
    public static final /* synthetic */ class AnonymousClass4 extends qm3 implements ll3<j59> {
        public AnonymousClass4(Object obj) {
            super(0, obj, PageFetcher.class, "invalidate", "invalidate()V", 0);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final void invoke2() {
            ((PageFetcher) this.receiver).invalidate();
        }

        @Override // defpackage.ll3
        public /* bridge */ /* synthetic */ j59 invoke() {
            invoke2();
            return j59.a;
        }
    }

    public /* synthetic */ PageFetcher(nl3 nl3Var, Object obj, PagingConfig pagingConfig, RemoteMediator remoteMediator, int i, jh2 jh2Var) {
        this(nl3Var, obj, pagingConfig, (i & 8) != 0 ? null : remoteMediator);
    }
}
