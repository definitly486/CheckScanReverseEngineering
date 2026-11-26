package androidx.paging;

import androidx.media3.muxer.WebmConstants;
import androidx.paging.internal.CopyOnWriteArrayList;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.b80;
import defpackage.bd2;
import defpackage.bf3;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.cu0;
import defpackage.e02;
import defpackage.f02;
import defpackage.fg;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.na8;
import defpackage.nl3;
import defpackage.o22;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.px;
import defpackage.qn1;
import defpackage.qo2;
import defpackage.qz0;
import defpackage.r57;
import defpackage.uy4;
import defpackage.vg5;
import defpackage.xg5;
import defpackage.y22;
import defpackage.y68;
import java.util.List;
import java.util.concurrent.CancellationException;

/* JADX INFO: loaded from: classes3.dex */
public abstract class PagingDataPresenter<T> {
    private final vg5<j59> _onPagesUpdatedFlow;
    private final SingleRunner collectFromRunner;
    private final MutableCombinedLoadStateCollection combinedLoadStatesCollection;
    private HintReceiver hintReceiver;
    private final xg5<Boolean> inGetItem;
    private volatile int lastAccessedIndex;
    private volatile boolean lastAccessedIndexUnfulfilled;
    private final y68<CombinedLoadStates> loadStateFlow;
    private final o22 mainContext;
    private final CopyOnWriteArrayList<ll3<j59>> onPagesUpdatedListeners;
    private PageStore<T> pageStore;
    private UiReceiver uiReceiver;

    public static final class InitialUiReceiver implements UiReceiver {
        private boolean shouldRefresh;
        private boolean shouldRetry;

        public final boolean getShouldRefresh() {
            return this.shouldRefresh;
        }

        public final boolean getShouldRetry() {
            return this.shouldRetry;
        }

        @Override // androidx.paging.UiReceiver
        public void refresh() {
            this.shouldRefresh = true;
        }

        @Override // androidx.paging.UiReceiver
        public void retry() {
            this.shouldRetry = true;
        }

        public final void setShouldRefresh(boolean z) {
            this.shouldRefresh = z;
        }

        public final void setShouldRetry(boolean z) {
            this.shouldRetry = z;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PagingDataPresenter$collectFrom$2, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataPresenter$collectFrom$2", f = "PagingDataPresenter.kt", l = {119}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements nl3<e02<? super j59>, Object> {
        final /* synthetic */ PagingData<T> $pagingData;
        int label;
        final /* synthetic */ PagingDataPresenter<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PagingDataPresenter<T> pagingDataPresenter, PagingData<T> pagingData, e02<? super AnonymousClass2> e02Var) {
            super(1, e02Var);
            this.this$0 = pagingDataPresenter;
            this.$pagingData = pagingData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$pagingData, e02Var);
        }

        @Override // defpackage.nl3
        public final Object invoke(e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                this.this$0.setUiReceiver(this.$pagingData.getUiReceiver$paging_common());
                hd3<PageEvent<T>> flow$paging_common = this.$pagingData.getFlow$paging_common();
                final PagingDataPresenter<T> pagingDataPresenter = this.this$0;
                final PagingData<T> pagingData = this.$pagingData;
                id3<? super PageEvent<T>> id3Var = new id3() { // from class: androidx.paging.PagingDataPresenter.collectFrom.2.1

                    /* JADX INFO: renamed from: androidx.paging.PagingDataPresenter$collectFrom$2$1$2, reason: invalid class name and collision with other inner class name */
                    @bd2(c = "androidx.paging.PagingDataPresenter$collectFrom$2$1$2", f = "PagingDataPresenter.kt", l = {137, 153, WebmConstants.MkvEbmlElement.BLOCK_ADDITIONAL, 168, 223, 226}, m = "invokeSuspend", v = 1)
                    public static final class C01032 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
                        final /* synthetic */ PageEvent<T> $event;
                        final /* synthetic */ PagingData<T> $pagingData;
                        int label;
                        final /* synthetic */ PagingDataPresenter<T> this$0;

                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        public C01032(PageEvent<T> pageEvent, PagingDataPresenter<T> pagingDataPresenter, PagingData<T> pagingData, e02<? super C01032> e02Var) {
                            super(2, e02Var);
                            this.$event = pageEvent;
                            this.this$0 = pagingDataPresenter;
                            this.$pagingData = pagingData;
                        }

                        @Override // defpackage.cd0
                        public final e02<j59> create(Object obj, e02<?> e02Var) {
                            return new C01032(this.$event, this.this$0, this.$pagingData, e02Var);
                        }

                        @Override // defpackage.bm3
                        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
                            return ((C01032) create(y22Var, e02Var)).invokeSuspend(j59.a);
                        }

                        /* JADX WARN: Code duplicated, block: B:103:0x029a  */
                        /* JADX WARN: Code duplicated, block: B:106:0x02aa A[LOOP:0: B:104:0x02a4->B:106:0x02aa, LOOP_END] */
                        /* JADX WARN: Code duplicated, block: B:37:0x0102 A[PHI: r9
                          0x0102: PHI (r9v6 androidx.paging.PagingDataPresenter$collectFrom$2$1$2) = 
                          (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                          (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                          (r9v7 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                         binds: [B:33:0x00f5, B:35:0x00fe, B:9:0x0022] A[DONT_GENERATE, DONT_INLINE]] */
                        /* JADX WARN: Code duplicated, block: B:78:0x01f9  */
                        /* JADX WARN: Code duplicated, block: B:80:0x0201  */
                        /* JADX WARN: Code duplicated, block: B:90:0x023c A[PHI: r9
                          0x023c: PHI (r9v10 androidx.paging.PagingDataPresenter$collectFrom$2$1$2) = 
                          (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                          (r9v0 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                          (r9v11 androidx.paging.PagingDataPresenter$collectFrom$2$1$2)
                         binds: [B:86:0x0230, B:88:0x0239, B:7:0x0016] A[DONT_GENERATE, DONT_INLINE]] */
                        /* JADX WARN: Code duplicated, block: B:99:0x0292  */
                        /* JADX WARN: Code restructure failed: missing block: B:21:0x0090, code lost:
                        
                            if (r14 == r0) goto L92;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:28:0x00db, code lost:
                        
                            if (r1.presentNewList(r2, r3, r4, true, r6, r7, r8, r9) == r0) goto L92;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:38:0x0115, code lost:
                        
                            if (r14.presentPagingDataEvent(r15, r9) == r0) goto L92;
                         */
                        /* JADX WARN: Code restructure failed: missing block: B:91:0x024f, code lost:
                        
                            if (r14.presentPagingDataEvent(r15, r9) == r0) goto L92;
                         */
                        @Override // defpackage.cd0
                        /*
                            Code decompiled incorrectly, please refer to instructions dump.
                            To view partially-correct add '--show-bad-code' argument
                        */
                        public final java.lang.Object invokeSuspend(java.lang.Object r15) {
                            /*
                                Method dump skipped, instruction units count: 714
                                To view this dump add '--comments-level debug' option
                            */
                            throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PagingDataPresenter.AnonymousClass2.AnonymousClass1.C01032.invokeSuspend(java.lang.Object):java.lang.Object");
                        }
                    }

                    public final Object emit(PageEvent<T> pageEvent, e02<? super j59> e02Var) throws Throwable {
                        PagingLogger pagingLogger = PagingLogger.INSTANCE;
                        if (pagingLogger.isLoggable(2)) {
                            pagingLogger.log(2, "Collected " + pageEvent, null);
                        }
                        Object objD = av0.d(((PagingDataPresenter) pagingDataPresenter).mainContext, new C01032(pageEvent, pagingDataPresenter, pagingData, null), e02Var);
                        return objD == a32.COROUTINE_SUSPENDED ? objD : j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((PageEvent) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (flow$paging_common.collect(id3Var, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.paging.PagingDataPresenter$presentNewList$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PagingDataPresenter", f = "PagingDataPresenter.kt", l = {468}, m = "presentNewList", v = 1)
    public static final class AnonymousClass1 extends f02 {
        int I$0;
        int I$1;
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        Object L$5;
        Object L$6;
        boolean Z$0;
        int label;
        /* synthetic */ Object result;
        final /* synthetic */ PagingDataPresenter<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(PagingDataPresenter<T> pagingDataPresenter, e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
            this.this$0 = pagingDataPresenter;
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return this.this$0.presentNewList(null, 0, 0, false, null, null, null, this);
        }
    }

    public PagingDataPresenter(o22 o22Var, PagingData<T> pagingData) {
        PageEvent.Insert<T> insertCachedEvent$paging_common;
        o22Var.getClass();
        this.mainContext = o22Var;
        this.uiReceiver = new InitialUiReceiver();
        jh2 jh2Var = null;
        this.pageStore = PageStore.Companion.initial$paging_common(pagingData != null ? pagingData.cachedEvent$paging_common() : null);
        MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection = new MutableCombinedLoadStateCollection();
        if (pagingData != null && (insertCachedEvent$paging_common = pagingData.cachedEvent$paging_common()) != null) {
            mutableCombinedLoadStateCollection.set(insertCachedEvent$paging_common.getSourceLoadStates(), insertCachedEvent$paging_common.getMediatorLoadStates());
        }
        this.combinedLoadStatesCollection = mutableCombinedLoadStateCollection;
        this.onPagesUpdatedListeners = new CopyOnWriteArrayList<>();
        this.collectFromRunner = new SingleRunner(false, 1, jh2Var);
        this.inGetItem = px.a(Boolean.FALSE);
        this.loadStateFlow = mutableCombinedLoadStateCollection.getStateFlow();
        this._onPagesUpdatedFlow = bt7.a(0, 64, cu0.DROP_OLDEST);
        addOnPagesUpdatedListener(new b80(this, 3));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 _init_$lambda$0(PagingDataPresenter pagingDataPresenter) {
        vg5<j59> vg5Var = pagingDataPresenter._onPagesUpdatedFlow;
        j59 j59Var = j59.a;
        vg5Var.e(j59Var);
        return j59Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0027  */
    public final Object presentNewList(List<TransformablePage<T>> list, int i, int i2, boolean z, LoadStates loadStates, LoadStates loadStates2, HintReceiver hintReceiver, e02<? super j59> e02Var) {
        AnonymousClass1 anonymousClass1;
        PageStore<T> pageStore;
        HintReceiver hintReceiver2;
        List<TransformablePage<T>> list2;
        boolean z2;
        LoadStates loadStates3;
        HintReceiver hintReceiver3;
        LoadStates loadStates4;
        PageStore<T> pageStore2;
        HintReceiver hintReceiver4;
        List<T> data;
        List<T> data2;
        int i3 = i;
        int i4 = i2;
        if (e02Var instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) e02Var;
            int i5 = anonymousClass1.label;
            if ((i5 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i5 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(this, e02Var);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(this, e02Var);
        }
        Object obj = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i6 = anonymousClass1.label;
        if (i6 == 0) {
            r57.b(obj);
            if (z && loadStates == null) {
                fg.c("Cannot dispatch LoadStates in PagingDataPresenter without source LoadStates set.");
                return null;
            }
            this.lastAccessedIndexUnfulfilled = false;
            PageStore<T> pageStore3 = this.pageStore;
            HintReceiver hintReceiver5 = this.hintReceiver;
            PageStore<T> pageStore4 = new PageStore<>(list, i3, i4);
            PageStore<T> pageStore5 = this.pageStore;
            pageStore5.getClass();
            this.pageStore = pageStore4;
            this.hintReceiver = hintReceiver;
            try {
                PagingDataEvent<T> refresh = new PagingDataEvent.Refresh<>(pageStore4, pageStore5);
                anonymousClass1.L$0 = list;
                anonymousClass1.L$1 = loadStates;
                anonymousClass1.L$2 = loadStates2;
                anonymousClass1.L$3 = hintReceiver;
                anonymousClass1.L$4 = pageStore3;
                anonymousClass1.L$5 = hintReceiver5;
                anonymousClass1.L$6 = pageStore4;
                anonymousClass1.I$0 = i3;
                anonymousClass1.I$1 = i4;
                anonymousClass1.Z$0 = z;
                anonymousClass1.label = 1;
                if (presentPagingDataEvent(refresh, anonymousClass1) == a32Var) {
                    return a32Var;
                }
                list2 = list;
                z2 = z;
                loadStates3 = loadStates;
                hintReceiver3 = hintReceiver;
                pageStore = pageStore3;
                hintReceiver2 = hintReceiver5;
                loadStates4 = loadStates2;
                pageStore2 = pageStore4;
            } catch (CancellationException e) {
                e = e;
                pageStore = pageStore3;
                hintReceiver2 = hintReceiver5;
                this.pageStore = pageStore;
                this.hintReceiver = hintReceiver2;
                throw e;
            }
        } else {
            if (i6 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            z2 = anonymousClass1.Z$0;
            int i7 = anonymousClass1.I$1;
            int i8 = anonymousClass1.I$0;
            pageStore2 = (PageStore) anonymousClass1.L$6;
            hintReceiver2 = (HintReceiver) anonymousClass1.L$5;
            pageStore = (PageStore) anonymousClass1.L$4;
            hintReceiver3 = (HintReceiver) anonymousClass1.L$3;
            loadStates4 = (LoadStates) anonymousClass1.L$2;
            loadStates3 = (LoadStates) anonymousClass1.L$1;
            list2 = (List) anonymousClass1.L$0;
            try {
                r57.b(obj);
                i4 = i7;
                i3 = i8;
            } catch (CancellationException e2) {
                e = e2;
                this.pageStore = pageStore;
                this.hintReceiver = hintReceiver2;
                throw e;
            }
        }
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(3)) {
            StringBuilder sb = new StringBuilder("Presenting data (\n                            |   first item: ");
            TransformablePage transformablePage = (TransformablePage) qn1.V(list2);
            sb.append((transformablePage == null || (data2 = transformablePage.getData()) == null) ? null : qn1.V(data2));
            sb.append("\n                            |   last item: ");
            TransformablePage transformablePage2 = (TransformablePage) qn1.c0(list2);
            sb.append((transformablePage2 == null || (data = transformablePage2.getData()) == null) ? null : qn1.c0(data));
            sb.append("\n                            |   placeholdersBefore: ");
            sb.append(i3);
            sb.append("\n                            |   placeholdersAfter: ");
            sb.append(i4);
            sb.append("\n                            |   hintReceiver: ");
            sb.append(hintReceiver3);
            sb.append("\n                            |   sourceLoadStates: ");
            sb.append(loadStates3);
            sb.append("\n                        ");
            String string = sb.toString();
            if (loadStates4 != null) {
                string = string + "|   mediatorLoadStates: " + loadStates4 + '\n';
            }
            pagingLogger.log(3, na8.j(string.concat("|)")), null);
        }
        if (z2) {
            MutableCombinedLoadStateCollection mutableCombinedLoadStateCollection = this.combinedLoadStatesCollection;
            loadStates3.getClass();
            mutableCombinedLoadStateCollection.set(loadStates3, loadStates4);
        }
        if (pageStore2.getSize() == 0 && (hintReceiver4 = this.hintReceiver) != null) {
            hintReceiver4.processHint(pageStore2.initializeHint());
        }
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void setUiReceiver(UiReceiver uiReceiver) {
        UiReceiver uiReceiver2 = this.uiReceiver;
        this.uiReceiver = uiReceiver;
        if (uiReceiver2 instanceof InitialUiReceiver) {
            InitialUiReceiver initialUiReceiver = (InitialUiReceiver) uiReceiver2;
            if (initialUiReceiver.getShouldRetry()) {
                uiReceiver.retry();
            }
            if (initialUiReceiver.getShouldRefresh()) {
                uiReceiver.refresh();
            }
        }
    }

    public final void addLoadStateListener(nl3<CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.combinedLoadStatesCollection.addListener(nl3Var);
    }

    public final void addOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.onPagesUpdatedListeners.add(ll3Var);
    }

    public final Object collectFrom(PagingData<T> pagingData, e02<j59> e02Var) {
        Object objRunInIsolation$default = SingleRunner.runInIsolation$default(this.collectFromRunner, 0, new AnonymousClass2(this, pagingData, null), e02Var, 1, null);
        return objRunInIsolation$default == a32.COROUTINE_SUSPENDED ? objRunInIsolation$default : j59.a;
    }

    public final T get(int i) {
        Boolean value;
        Boolean value2;
        xg5<Boolean> xg5Var = this.inGetItem;
        do {
            value = xg5Var.getValue();
            value.getClass();
        } while (!xg5Var.a(value, Boolean.TRUE));
        this.lastAccessedIndexUnfulfilled = true;
        this.lastAccessedIndex = i;
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(2)) {
            pagingLogger.log(2, qz0.d("Accessing item index[", i, ']'), null);
        }
        HintReceiver hintReceiver = this.hintReceiver;
        if (hintReceiver != null) {
            hintReceiver.processHint(this.pageStore.createAccessHintForIndex(i));
        }
        T t = this.pageStore.get(i);
        xg5<Boolean> xg5Var2 = this.inGetItem;
        do {
            value2 = xg5Var2.getValue();
            value2.getClass();
        } while (!xg5Var2.a(value2, Boolean.FALSE));
        return t;
    }

    public final y68<CombinedLoadStates> getLoadStateFlow() {
        return this.loadStateFlow;
    }

    public final hd3<j59> getOnPagesUpdatedFlow() {
        return bf3.a(this._onPagesUpdatedFlow);
    }

    public final int getSize() {
        return this.pageStore.getSize();
    }

    public final T peek(int i) {
        return this.pageStore.get(i);
    }

    public abstract Object presentPagingDataEvent(PagingDataEvent<T> pagingDataEvent, e02<j59> e02Var);

    public final void refresh() {
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(3)) {
            pagingLogger.log(3, "Refresh signal received", null);
        }
        this.uiReceiver.refresh();
    }

    public final void removeLoadStateListener(nl3<CombinedLoadStates, j59> nl3Var) {
        nl3Var.getClass();
        this.combinedLoadStatesCollection.removeListener(nl3Var);
    }

    public final void removeOnPagesUpdatedListener(ll3<j59> ll3Var) {
        ll3Var.getClass();
        this.onPagesUpdatedListeners.remove(ll3Var);
    }

    public final void retry() {
        PagingLogger pagingLogger = PagingLogger.INSTANCE;
        if (pagingLogger.isLoggable(3)) {
            pagingLogger.log(3, "Retry signal received", null);
        }
        this.uiReceiver.retry();
    }

    public final ItemSnapshotList<T> snapshot() {
        return this.pageStore.snapshot();
    }

    public PagingDataPresenter() {
        this(null, null, 3, null);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public PagingDataPresenter(o22 o22Var, PagingData pagingData, int i, jh2 jh2Var) {
        if ((i & 1) != 0) {
            oi2 oi2Var = qo2.a;
            o22Var = uy4.a;
        }
        this(o22Var, (i & 2) != 0 ? null : pagingData);
    }
}
