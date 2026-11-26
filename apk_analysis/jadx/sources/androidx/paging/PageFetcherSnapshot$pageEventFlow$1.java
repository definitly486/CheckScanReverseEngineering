package androidx.paging;

import androidx.appcompat.app.AppCompatDelegate;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.l91;
import defpackage.mu0;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sd3;
import defpackage.x81;
import defpackage.y22;
import defpackage.yg5;
import defpackage.z81;
import kotlinx.coroutines.channels.ClosedSendChannelException;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1", f = "PageFetcherSnapshot.kt", l = {694, 178, TypedValues.TransitionType.TYPE_STAGGERED}, m = "invokeSuspend", v = 1)
public final class PageFetcherSnapshot$pageEventFlow$1<Value> extends pg8 implements bm3<SimpleProducerScope<PageEvent<Value>>, e02<? super j59>, Object> {
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    Object L$3;
    int label;
    final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$3, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$3", f = "PageFetcherSnapshot.kt", l = {AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass3 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ x81<j59> $retryChannel;
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass3(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, x81<j59> x81Var, e02<? super AnonymousClass3> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshot;
            this.$retryChannel = x81Var;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass3(this.this$0, this.$retryChannel, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass3) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                hd3 hd3Var = ((PageFetcherSnapshot) this.this$0).retryFlow;
                final x81<j59> x81Var = this.$retryChannel;
                id3 id3Var = new id3() { // from class: androidx.paging.PageFetcherSnapshot.pageEventFlow.1.3.1
                    public final Object emit(j59 j59Var, e02<? super j59> e02Var) {
                        x81Var.mo0trySendJP2dKIU(j59Var);
                        return j59.a;
                    }

                    @Override // defpackage.id3
                    public /* bridge */ /* synthetic */ Object emit(Object obj2, e02 e02Var) {
                        return emit((j59) obj2, (e02<? super j59>) e02Var);
                    }
                };
                this.label = 1;
                if (hd3Var.collect(id3Var, this) == a32Var) {
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
    public PageFetcherSnapshot$pageEventFlow$1(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super PageFetcherSnapshot$pageEventFlow$1> e02Var) {
        super(2, e02Var);
        this.this$0 = pageFetcherSnapshot;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcherSnapshot$pageEventFlow$1 pageFetcherSnapshot$pageEventFlow$1 = new PageFetcherSnapshot$pageEventFlow$1(this.this$0, e02Var);
        pageFetcherSnapshot$pageEventFlow$1.L$0 = obj;
        return pageFetcherSnapshot$pageEventFlow$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(SimpleProducerScope<PageEvent<Value>> simpleProducerScope, e02<? super j59> e02Var) {
        return ((PageFetcherSnapshot$pageEventFlow$1) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
    }

    /* JADX WARN: Code duplicated, block: B:31:0x00ce  */
    /* JADX WARN: Code duplicated, block: B:35:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:39:0x0100  */
    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        SimpleProducerScope simpleProducerScope;
        RemoteMediatorConnection remoteMediatorConnection;
        PagingState pagingState;
        yg5 yg5Var;
        PageFetcherSnapshotState.Holder holder;
        PageFetcherSnapshot<Key, Value> pageFetcherSnapshot;
        SimpleProducerScope simpleProducerScope2;
        PageFetcherSnapshotState.Holder holder2;
        yg5 yg5Var2;
        SimpleProducerScope simpleProducerScope3;
        yg5 yg5Var3;
        PageFetcherSnapshotState.Holder holder3;
        LoadState loadState;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        try {
            if (i != 0) {
                if (i == 1) {
                    yg5Var = (yg5) this.L$3;
                    holder = (PageFetcherSnapshotState.Holder) this.L$2;
                    remoteMediatorConnection = (RemoteMediatorConnection) this.L$1;
                    simpleProducerScope = (SimpleProducerScope) this.L$0;
                    r57.b(obj);
                } else {
                    if (i == 2) {
                        simpleProducerScope2 = (SimpleProducerScope) this.L$0;
                        r57.b(obj);
                        holder2 = ((PageFetcherSnapshot) this.this$0).stateHolder;
                        yg5Var2 = holder2.lock;
                        this.L$0 = simpleProducerScope2;
                        this.L$1 = holder2;
                        this.L$2 = yg5Var2;
                        this.label = 3;
                        if (yg5Var2.lock(null, this) != a32Var) {
                            simpleProducerScope3 = simpleProducerScope2;
                            yg5Var3 = yg5Var2;
                            holder3 = holder2;
                        }
                        return a32Var;
                    }
                    if (i != 3) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    yg5Var3 = (yg5) this.L$2;
                    holder3 = (PageFetcherSnapshotState.Holder) this.L$1;
                    simpleProducerScope3 = (SimpleProducerScope) this.L$0;
                    r57.b(obj);
                }
                try {
                    loadState = holder3.state.getSourceLoadStates$paging_common().get(LoadType.REFRESH);
                    yg5Var3.unlock(null);
                    if (!(loadState instanceof LoadState.Error)) {
                        this.this$0.startConsumingHints(simpleProducerScope3);
                    }
                    return j59.a;
                } catch (Throwable th) {
                    yg5Var3.unlock(null);
                    throw th;
                }
            }
            r57.b(obj);
            simpleProducerScope = (SimpleProducerScope) this.L$0;
            if (!((PageFetcherSnapshot) this.this$0).pageEventChCollected.compareAndSet(false, true)) {
                ah.f("Attempt to collect twice from pageEventFlow, which is an illegal operation. Did you forget to call Flow<PagingData<*>>.cachedIn(coroutineScope)?");
                return null;
            }
            av0.c(simpleProducerScope, null, null, new AnonymousClass2(this.this$0, simpleProducerScope, null), 3);
            mu0 mu0VarA = l91.a(0, null, null, 6);
            av0.c(simpleProducerScope, null, null, new AnonymousClass3(this.this$0, mu0VarA, null), 3);
            av0.c(simpleProducerScope, null, null, new AnonymousClass4(mu0VarA, this.this$0, null), 3);
            remoteMediatorConnection = this.this$0.getRemoteMediatorConnection();
            if (remoteMediatorConnection != null) {
                PageFetcherSnapshot<Key, Value> pageFetcherSnapshot2 = this.this$0;
                pagingState = ((PageFetcherSnapshot) pageFetcherSnapshot2).cachedInitialState;
                if (pagingState == null) {
                    PageFetcherSnapshotState.Holder holder4 = ((PageFetcherSnapshot) pageFetcherSnapshot2).stateHolder;
                    yg5Var = holder4.lock;
                    this.L$0 = simpleProducerScope;
                    this.L$1 = remoteMediatorConnection;
                    this.L$2 = holder4;
                    this.L$3 = yg5Var;
                    this.label = 1;
                    if (yg5Var.lock(null, this) != a32Var) {
                        holder = holder4;
                    }
                } else {
                    remoteMediatorConnection.requestRefreshIfAllowed(pagingState);
                    pageFetcherSnapshot = this.this$0;
                    this.L$0 = simpleProducerScope;
                    this.L$1 = null;
                    this.L$2 = null;
                    this.L$3 = null;
                    this.label = 2;
                    if (pageFetcherSnapshot.doInitialLoad(this) != a32Var) {
                        simpleProducerScope2 = simpleProducerScope;
                        holder2 = ((PageFetcherSnapshot) this.this$0).stateHolder;
                        yg5Var2 = holder2.lock;
                        this.L$0 = simpleProducerScope2;
                        this.L$1 = holder2;
                        this.L$2 = yg5Var2;
                        this.label = 3;
                        if (yg5Var2.lock(null, this) != a32Var) {
                            simpleProducerScope3 = simpleProducerScope2;
                            yg5Var3 = yg5Var2;
                            holder3 = holder2;
                            loadState = holder3.state.getSourceLoadStates$paging_common().get(LoadType.REFRESH);
                            yg5Var3.unlock(null);
                            if (!(loadState instanceof LoadState.Error)) {
                                this.this$0.startConsumingHints(simpleProducerScope3);
                            }
                            return j59.a;
                        }
                    }
                }
            } else {
                pageFetcherSnapshot = this.this$0;
                this.L$0 = simpleProducerScope;
                this.L$1 = null;
                this.L$2 = null;
                this.L$3 = null;
                this.label = 2;
                if (pageFetcherSnapshot.doInitialLoad(this) != a32Var) {
                    simpleProducerScope2 = simpleProducerScope;
                    holder2 = ((PageFetcherSnapshot) this.this$0).stateHolder;
                    yg5Var2 = holder2.lock;
                    this.L$0 = simpleProducerScope2;
                    this.L$1 = holder2;
                    this.L$2 = yg5Var2;
                    this.label = 3;
                    if (yg5Var2.lock(null, this) != a32Var) {
                        simpleProducerScope3 = simpleProducerScope2;
                        yg5Var3 = yg5Var2;
                        holder3 = holder2;
                        loadState = holder3.state.getSourceLoadStates$paging_common().get(LoadType.REFRESH);
                        yg5Var3.unlock(null);
                        if (!(loadState instanceof LoadState.Error)) {
                            this.this$0.startConsumingHints(simpleProducerScope3);
                        }
                        return j59.a;
                    }
                }
            }
            return a32Var;
            PagingState pagingStateCurrentPagingState$paging_common = holder.state.currentPagingState$paging_common(null);
            yg5Var.unlock(null);
            pagingState = pagingStateCurrentPagingState$paging_common;
            remoteMediatorConnection.requestRefreshIfAllowed(pagingState);
            pageFetcherSnapshot = this.this$0;
            this.L$0 = simpleProducerScope;
            this.L$1 = null;
            this.L$2 = null;
            this.L$3 = null;
            this.label = 2;
            if (pageFetcherSnapshot.doInitialLoad(this) != a32Var) {
                simpleProducerScope2 = simpleProducerScope;
                holder2 = ((PageFetcherSnapshot) this.this$0).stateHolder;
                yg5Var2 = holder2.lock;
                this.L$0 = simpleProducerScope2;
                this.L$1 = holder2;
                this.L$2 = yg5Var2;
                this.label = 3;
                if (yg5Var2.lock(null, this) != a32Var) {
                    simpleProducerScope3 = simpleProducerScope2;
                    yg5Var3 = yg5Var2;
                    holder3 = holder2;
                    loadState = holder3.state.getSourceLoadStates$paging_common().get(LoadType.REFRESH);
                    yg5Var3.unlock(null);
                    if (!(loadState instanceof LoadState.Error)) {
                        this.this$0.startConsumingHints(simpleProducerScope3);
                    }
                    return j59.a;
                }
            }
            return a32Var;
        } catch (Throwable th2) {
            yg5Var.unlock(null);
            throw th2;
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2", f = "PageFetcherSnapshot.kt", l = {92}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$cancelableChannelFlow;
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, SimpleProducerScope<PageEvent<Value>> simpleProducerScope, e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
            this.this$0 = pageFetcherSnapshot;
            this.$$this$cancelableChannelFlow = simpleProducerScope;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.this$0, this.$$this$cancelableChannelFlow, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                z81 z81VarA = sd3.a(((PageFetcherSnapshot) this.this$0).pageEventCh);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$cancelableChannelFlow);
                this.label = 1;
                if (z81VarA.collect(anonymousClass1, this) == a32Var) {
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

        /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$2$1, reason: invalid class name */
        public static final class AnonymousClass1<T> implements id3 {
            final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$cancelableChannelFlow;

            public AnonymousClass1(SimpleProducerScope<PageEvent<Value>> simpleProducerScope) {
                this.$$this$cancelableChannelFlow = simpleProducerScope;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            public final Object emit(PageEvent<Value> pageEvent, e02<? super j59> e02Var) {
                PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1;
                if (e02Var instanceof PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) {
                    pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = (PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) e02Var;
                    int i = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.label;
                    if ((i & Integer.MIN_VALUE) != 0) {
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.label = i - Integer.MIN_VALUE;
                    } else {
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = new PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1(this, e02Var);
                    }
                } else {
                    pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1 = new PageFetcherSnapshot$pageEventFlow$1$2$1$emit$1(this, e02Var);
                }
                Object obj = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.result;
                a32 a32Var = a32.COROUTINE_SUSPENDED;
                int i2 = pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.label;
                try {
                    if (i2 == 0) {
                        r57.b(obj);
                        SimpleProducerScope<PageEvent<Value>> simpleProducerScope = this.$$this$cancelableChannelFlow;
                        pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1.label = 1;
                        if (simpleProducerScope.send(pageEvent, pageFetcherSnapshot$pageEventFlow$1$2$1$emit$1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj);
                    }
                } catch (ClosedSendChannelException unused) {
                }
                return j59.a;
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
                return emit((PageEvent) obj, (e02<? super j59>) e02Var);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4", f = "PageFetcherSnapshot.kt", l = {112}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ x81<j59> $retryChannel;
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(x81<j59> x81Var, PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$retryChannel = x81Var;
            this.this$0 = pageFetcherSnapshot;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            AnonymousClass4 anonymousClass4 = new AnonymousClass4(this.$retryChannel, this.this$0, e02Var);
            anonymousClass4.L$0 = obj;
            return anonymousClass4;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                y22 y22Var = (y22) this.L$0;
                z81 z81VarA = sd3.a(this.$retryChannel);
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.this$0, y22Var);
                this.label = 1;
                if (z81VarA.collect(anonymousClass1, this) == a32Var) {
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

        /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1, reason: invalid class name */
        public static final class AnonymousClass1<T> implements id3 {
            final /* synthetic */ y22 $$this$launch;
            final /* synthetic */ PageFetcherSnapshot<Key, Value> this$0;

            /* JADX INFO: renamed from: androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1$WhenMappings */
            public static final /* synthetic */ class WhenMappings {
                public static final /* synthetic */ int[] $EnumSwitchMapping$0;

                static {
                    int[] iArr = new int[LoadType.values().length];
                    try {
                        iArr[LoadType.REFRESH.ordinal()] = 1;
                    } catch (NoSuchFieldError unused) {
                    }
                    $EnumSwitchMapping$0 = iArr;
                }
            }

            public AnonymousClass1(PageFetcherSnapshot<Key, Value> pageFetcherSnapshot, y22 y22Var) {
                this.this$0 = pageFetcherSnapshot;
                this.$$this$launch = y22Var;
            }

            /* JADX WARN: Code duplicated, block: B:103:0x035e  */
            /* JADX WARN: Code duplicated, block: B:106:0x036c  */
            /* JADX WARN: Code duplicated, block: B:107:0x0370  */
            /* JADX WARN: Code duplicated, block: B:110:0x0394  */
            /* JADX WARN: Code duplicated, block: B:116:0x03c8  */
            /* JADX WARN: Code duplicated, block: B:119:0x03d0  */
            /* JADX WARN: Code duplicated, block: B:130:0x040f  */
            /* JADX WARN: Code duplicated, block: B:134:0x0416 A[PHI: r1 r5 r11 r13
              0x0416: PHI (r1v52 androidx.paging.LoadType) = (r1v25 androidx.paging.LoadType), (r1v55 androidx.paging.LoadType) binds: [B:89:0x030b, B:126:0x0406] A[DONT_GENERATE, DONT_INLINE]
              0x0416: PHI (r5v50 androidx.paging.LoadStates) = (r5v24 androidx.paging.LoadStates), (r5v56 androidx.paging.LoadStates) binds: [B:89:0x030b, B:126:0x0406] A[DONT_GENERATE, DONT_INLINE]
              0x0416: PHI (r11v52 y22) = (r11v25 y22), (r11v55 y22) binds: [B:89:0x030b, B:126:0x0406] A[DONT_GENERATE, DONT_INLINE]
              0x0416: PHI (r13v49 androidx.paging.PageFetcherSnapshot) = (r13v26 androidx.paging.PageFetcherSnapshot), (r13v50 androidx.paging.PageFetcherSnapshot) binds: [B:89:0x030b, B:126:0x0406] A[DONT_GENERATE, DONT_INLINE]] */
            /* JADX WARN: Code duplicated, block: B:136:0x0420 A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:137:0x0422  */
            /* JADX WARN: Code duplicated, block: B:140:0x0440  */
            /* JADX WARN: Code duplicated, block: B:143:0x045b  */
            /* JADX WARN: Code duplicated, block: B:144:0x045d  */
            /* JADX WARN: Code duplicated, block: B:149:0x046c  */
            /* JADX WARN: Code duplicated, block: B:152:0x0479  */
            /* JADX WARN: Code duplicated, block: B:153:0x047d  */
            /* JADX WARN: Code duplicated, block: B:156:0x049e  */
            /* JADX WARN: Code duplicated, block: B:162:0x04cf  */
            /* JADX WARN: Code duplicated, block: B:165:0x04d6  */
            /* JADX WARN: Code duplicated, block: B:168:0x04f1  */
            /* JADX WARN: Code duplicated, block: B:172:0x0509  */
            /* JADX WARN: Code duplicated, block: B:60:0x025c  */
            /* JADX WARN: Code duplicated, block: B:61:0x0260  */
            /* JADX WARN: Code duplicated, block: B:64:0x0283  */
            /* JADX WARN: Code duplicated, block: B:70:0x02b6  */
            /* JADX WARN: Code duplicated, block: B:73:0x02be  */
            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code duplicated, block: B:84:0x02fc  */
            /* JADX WARN: Code duplicated, block: B:90:0x030d A[DONT_INVERT] */
            /* JADX WARN: Code duplicated, block: B:91:0x030f  */
            /* JADX WARN: Code duplicated, block: B:94:0x032e  */
            /* JADX WARN: Code duplicated, block: B:97:0x034c  */
            /* JADX WARN: Code duplicated, block: B:98:0x034e  */
            /* JADX WARN: Code restructure failed: missing block: B:120:0x03ea, code lost:
            
                if (r11.lock(null, r12) == r0) goto L167;
             */
            /* JADX WARN: Code restructure failed: missing block: B:49:0x0215, code lost:
            
                if (r1.lock(null, r12) == r0) goto L167;
             */
            /* JADX WARN: Code restructure failed: missing block: B:74:0x02d7, code lost:
            
                if (r11.lock(null, r12) == r0) goto L167;
             */
            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference failed for: r11v0, types: [androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1, androidx.paging.PageFetcherSnapshot$pageEventFlow$1$4$1<T>] */
            /* JADX WARN: Type inference failed for: r11v1, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v10, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v2, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v3, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v37, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v64, types: [yg5] */
            /* JADX WARN: Type inference failed for: r11v91 */
            /* JADX WARN: Type inference failed for: r11v92 */
            /* JADX WARN: Type inference failed for: r11v94 */
            /* JADX WARN: Type inference failed for: r11v95 */
            /* JADX WARN: Type inference failed for: r11v97 */
            /* JADX WARN: Type inference failed for: r11v98 */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(defpackage.j59 r12, defpackage.e02<? super defpackage.j59> r13) {
                /*
                    Method dump skipped, instruction units count: 1350
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcherSnapshot$pageEventFlow$1.AnonymousClass4.AnonymousClass1.emit(j59, e02):java.lang.Object");
            }

            @Override // defpackage.id3
            public /* bridge */ /* synthetic */ Object emit(Object obj, e02 e02Var) {
                return emit((j59) obj, (e02<? super j59>) e02Var);
            }
        }
    }
}
