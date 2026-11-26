package androidx.paging;

import defpackage.a32;
import defpackage.af3;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bf3;
import defpackage.bh8;
import defpackage.bm3;
import defpackage.bt7;
import defpackage.c32;
import defpackage.ce3;
import defpackage.dm3;
import defpackage.du7;
import defpackage.e02;
import defpackage.eu7;
import defpackage.f02;
import defpackage.fy6;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.o22;
import defpackage.pg8;
import defpackage.r57;
import defpackage.sj0;
import defpackage.v68;
import defpackage.y22;
import defpackage.zs7;

/* JADX INFO: loaded from: classes3.dex */
public final class CachedPagingDataKt {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$2, reason: invalid class name */
    @bd2(c = "androidx.paging.CachedPagingDataKt$cachedIn$2", f = "CachedPagingData.kt", l = {99}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2<T> extends pg8 implements dm3<MulticastedPagingData<T>, MulticastedPagingData<T>, e02<? super MulticastedPagingData<T>>, Object> {
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
        }

        @Override // defpackage.dm3
        public final Object invoke(MulticastedPagingData<T> multicastedPagingData, MulticastedPagingData<T> multicastedPagingData2, e02<? super MulticastedPagingData<T>> e02Var) {
            AnonymousClass2 anonymousClass2 = new AnonymousClass2(e02Var);
            anonymousClass2.L$0 = multicastedPagingData;
            anonymousClass2.L$1 = multicastedPagingData2;
            return anonymousClass2.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                MulticastedPagingData multicastedPagingData = (MulticastedPagingData) this.L$0;
                r57.b(obj);
                return multicastedPagingData;
            }
            r57.b(obj);
            MulticastedPagingData multicastedPagingData2 = (MulticastedPagingData) this.L$0;
            MulticastedPagingData multicastedPagingData3 = (MulticastedPagingData) this.L$1;
            this.L$0 = multicastedPagingData3;
            this.label = 1;
            return multicastedPagingData2.close(this) == a32Var ? a32Var : multicastedPagingData3;
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$4, reason: invalid class name */
    @bd2(c = "androidx.paging.CachedPagingDataKt$cachedIn$4", f = "CachedPagingData.kt", l = {103}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass4<T> extends pg8 implements bm3<id3<? super PagingData<T>>, e02<? super j59>, Object> {
        final /* synthetic */ ActiveFlowTracker $tracker;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass4(ActiveFlowTracker activeFlowTracker, e02<? super AnonymousClass4> e02Var) {
            super(2, e02Var);
            this.$tracker = activeFlowTracker;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass4(this.$tracker, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super PagingData<T>> id3Var, e02<? super j59> e02Var) {
            return ((AnonymousClass4) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ActiveFlowTracker activeFlowTracker = this.$tracker;
                if (activeFlowTracker != null) {
                    ActiveFlowTracker.FlowType flowType = ActiveFlowTracker.FlowType.PAGED_DATA_FLOW;
                    this.label = 1;
                    if (activeFlowTracker.onStart(flowType, this) == a32Var) {
                        return a32Var;
                    }
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

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$5, reason: invalid class name */
    @bd2(c = "androidx.paging.CachedPagingDataKt$cachedIn$5", f = "CachedPagingData.kt", l = {104}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass5<T> extends pg8 implements dm3<id3<? super PagingData<T>>, Throwable, e02<? super j59>, Object> {
        final /* synthetic */ ActiveFlowTracker $tracker;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(ActiveFlowTracker activeFlowTracker, e02<? super AnonymousClass5> e02Var) {
            super(3, e02Var);
            this.$tracker = activeFlowTracker;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super PagingData<T>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return new AnonymousClass5(this.$tracker, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ActiveFlowTracker activeFlowTracker = this.$tracker;
                if (activeFlowTracker != null) {
                    ActiveFlowTracker.FlowType flowType = ActiveFlowTracker.FlowType.PAGED_DATA_FLOW;
                    this.label = 1;
                    if (activeFlowTracker.onComplete(flowType, this) == a32Var) {
                        return a32Var;
                    }
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

    public static final <T> hd3<PagingData<T>> cachedIn(hd3<PagingData<T>> hd3Var, y22 y22Var, ActiveFlowTracker activeFlowTracker) {
        hd3Var.getClass();
        y22Var.getClass();
        final hd3 hd3VarSimpleRunningReduce = FlowExtKt.simpleRunningReduce(FlowExtKt.simpleTransformLatest(hd3Var, new CachedPagingDataKt$cachedIn$$inlined$simpleMapLatest$1(null, y22Var, activeFlowTracker)), new AnonymousClass2(null));
        du7 du7VarC = bf3.c(new be3(new ce3(new hd3<PagingData<T>>() { // from class: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1

            /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2, reason: invalid class name */
            public static final class AnonymousClass2<T> implements id3 {
                final /* synthetic */ id3 $this_unsafeFlow;

                /* JADX INFO: renamed from: androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2$1, reason: invalid class name */
                @bd2(c = "androidx.paging.CachedPagingDataKt$cachedIn$$inlined$map$1$2", f = "CachedPagingData.kt", l = {50}, m = "emit", v = 1)
                public static final class AnonymousClass1 extends f02 {
                    Object L$0;
                    int label;
                    /* synthetic */ Object result;

                    public AnonymousClass1(e02 e02Var) {
                        super(e02Var);
                    }

                    @Override // defpackage.cd0
                    public final Object invokeSuspend(Object obj) {
                        this.result = obj;
                        this.label |= Integer.MIN_VALUE;
                        return AnonymousClass2.this.emit(null, this);
                    }
                }

                public AnonymousClass2(id3 id3Var) {
                    this.$this_unsafeFlow = id3Var;
                }

                /* JADX WARN: Code duplicated, block: B:7:0x0013  */
                @Override // defpackage.id3
                public final Object emit(Object obj, e02 e02Var) {
                    AnonymousClass1 anonymousClass1;
                    if (e02Var instanceof AnonymousClass1) {
                        anonymousClass1 = (AnonymousClass1) e02Var;
                        int i = anonymousClass1.label;
                        if ((i & Integer.MIN_VALUE) != 0) {
                            anonymousClass1.label = i - Integer.MIN_VALUE;
                        } else {
                            anonymousClass1 = new AnonymousClass1(e02Var);
                        }
                    } else {
                        anonymousClass1 = new AnonymousClass1(e02Var);
                    }
                    Object obj2 = anonymousClass1.result;
                    a32 a32Var = a32.COROUTINE_SUSPENDED;
                    int i2 = anonymousClass1.label;
                    if (i2 == 0) {
                        r57.b(obj2);
                        id3 id3Var = this.$this_unsafeFlow;
                        PagingData<T> pagingDataAsPagingData = ((MulticastedPagingData) obj).asPagingData();
                        anonymousClass1.label = 1;
                        if (id3Var.emit(pagingDataAsPagingData, anonymousClass1) == a32Var) {
                            return a32Var;
                        }
                    } else {
                        if (i2 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        r57.b(obj2);
                    }
                    return j59.a;
                }
            }

            @Override // defpackage.hd3
            public Object collect(id3 id3Var, e02 e02Var) {
                Object objCollect = hd3VarSimpleRunningReduce.collect(new AnonymousClass2(id3Var), e02Var);
                return objCollect == a32.COROUTINE_SUSPENDED ? objCollect : j59.a;
            }
        }, new AnonymousClass4(activeFlowTracker, null)), new AnonymousClass5(activeFlowTracker, null)));
        zs7 zs7VarA = bt7.a(1, du7VarC.b, du7VarC.c);
        o22 o22Var = du7VarC.d;
        hd3<T> hd3Var2 = du7VarC.a;
        bh8 bh8Var = bt7.b;
        sj0 sj0Var = eu7.a.a;
        v68 v68Var = eu7.a.b;
        return new fy6(zs7VarA, av0.b(y22Var, o22Var, v68Var != sj0Var ? c32.UNDISPATCHED : c32.DEFAULT, new af3(v68Var, hd3Var2, zs7VarA, bh8Var, null)));
    }

    public static /* synthetic */ hd3 cachedIn$default(hd3 hd3Var, y22 y22Var, ActiveFlowTracker activeFlowTracker, int i, Object obj) {
        if ((i & 2) != 0) {
            activeFlowTracker = null;
        }
        return cachedIn(hd3Var, y22Var, activeFlowTracker);
    }

    public static final <T> hd3<PagingData<T>> cachedIn(hd3<PagingData<T>> hd3Var, y22 y22Var) {
        hd3Var.getClass();
        y22Var.getClass();
        return cachedIn(hd3Var, y22Var, null);
    }
}
