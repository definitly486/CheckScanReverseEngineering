package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.fm3;
import defpackage.hd3;
import defpackage.id3;
import defpackage.j59;
import defpackage.ll3;
import defpackage.me0;
import defpackage.nb4;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.r57;
import defpackage.y22;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Add missing generic type declarations: [Value] */
/* JADX INFO: loaded from: classes3.dex */
@bd2(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1", f = "PageFetcher.kt", l = {146}, m = "invokeSuspend", v = 1)
public final class PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1<Value> extends pg8 implements bm3<SimpleProducerScope<PageEvent<Value>>, e02<? super j59>, Object> {
    final /* synthetic */ hd3 $otherFlow;
    final /* synthetic */ MutableLoadStateCollection $sourceStates$inlined;
    final /* synthetic */ hd3 $this_combineWithoutBatching;
    private /* synthetic */ Object L$0;
    int label;

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1, reason: invalid class name */
    @bd2(c = "androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$1", f = "PageFetcher.kt", l = {126}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements fm3<LoadStates, PageEvent<Value>, CombineSource, e02<? super j59>, Object> {
        final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$simpleChannelFlow;
        final /* synthetic */ MutableLoadStateCollection $sourceStates$inlined;
        /* synthetic */ Object L$0;
        /* synthetic */ Object L$1;
        /* synthetic */ Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SimpleProducerScope simpleProducerScope, e02 e02Var, MutableLoadStateCollection mutableLoadStateCollection) {
            super(4, e02Var);
            this.$sourceStates$inlined = mutableLoadStateCollection;
            this.$$this$simpleChannelFlow = simpleProducerScope;
        }

        @Override // defpackage.fm3
        public final Object invoke(LoadStates loadStates, PageEvent<Value> pageEvent, CombineSource combineSource, e02<? super j59> e02Var) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$$this$simpleChannelFlow, e02Var, this.$sourceStates$inlined);
            anonymousClass1.L$0 = loadStates;
            anonymousClass1.L$1 = pageEvent;
            anonymousClass1.L$2 = combineSource;
            return anonymousClass1.invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                Object obj2 = this.L$0;
                Object obj3 = this.L$1;
                CombineSource combineSource = (CombineSource) this.L$2;
                SimpleProducerScope<PageEvent<Value>> simpleProducerScope = this.$$this$simpleChannelFlow;
                Object loadStateUpdate = (PageEvent) obj3;
                LoadStates loadStates = (LoadStates) obj2;
                if (combineSource == CombineSource.RECEIVER) {
                    loadStateUpdate = new PageEvent.LoadStateUpdate(this.$sourceStates$inlined.snapshot(), loadStates);
                } else if (loadStateUpdate instanceof PageEvent.Insert) {
                    PageEvent.Insert insert = (PageEvent.Insert) loadStateUpdate;
                    this.$sourceStates$inlined.set(insert.getSourceLoadStates());
                    loadStateUpdate = PageEvent.Insert.copy$default(insert, null, null, 0, 0, insert.getSourceLoadStates(), loadStates, 15, null);
                } else if (loadStateUpdate instanceof PageEvent.Drop) {
                    this.$sourceStates$inlined.set(((PageEvent.Drop) loadStateUpdate).getLoadType(), LoadState.NotLoading.Companion.getIncomplete$paging_common());
                } else {
                    if (!(loadStateUpdate instanceof PageEvent.LoadStateUpdate)) {
                        if (loadStateUpdate instanceof PageEvent.StaticList) {
                            ah.f("Paging generated an event to display a static list that\n originated from a paginated source. If you see this\n exception, it is most likely a bug in the library.\n Please file a bug so we can fix it at:\n https://issuetracker.google.com/issues/new?component=413106");
                            return null;
                        }
                        me0.e();
                        return null;
                    }
                    PageEvent.LoadStateUpdate loadStateUpdate2 = (PageEvent.LoadStateUpdate) loadStateUpdate;
                    this.$sourceStates$inlined.set(loadStateUpdate2.getSource());
                    loadStateUpdate = new PageEvent.LoadStateUpdate(loadStateUpdate2.getSource(), loadStates);
                }
                this.label = 1;
                if (simpleProducerScope.send(loadStateUpdate, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2, reason: invalid class name */
    @bd2(c = "androidx.paging.FlowExtKt$combineWithoutBatching$2$1$1", f = "FlowExt.kt", l = {132}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        final /* synthetic */ SimpleProducerScope<PageEvent<Value>> $$this$simpleChannelFlow;
        final /* synthetic */ hd3 $flow;
        final /* synthetic */ AtomicInteger $incompleteFlows;
        final /* synthetic */ int $index;
        final /* synthetic */ UnbatchedFlowCombiner $unbatchedFlowCombiner;
        int label;

        /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1, reason: invalid class name */
        public static final class AnonymousClass1<T> implements id3 {
            final /* synthetic */ int $index;
            final /* synthetic */ UnbatchedFlowCombiner $unbatchedFlowCombiner;

            /* JADX INFO: renamed from: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1, reason: invalid class name and collision with other inner class name */
            public static final class C01021 extends f02 {
                int label;
                /* synthetic */ Object result;

                public C01021(e02 e02Var) {
                    super(e02Var);
                }

                @Override // defpackage.cd0
                public final Object invokeSuspend(Object obj) {
                    this.result = obj;
                    this.label |= Integer.MIN_VALUE;
                    return AnonymousClass1.this.emit(null, this);
                }
            }

            public AnonymousClass1(UnbatchedFlowCombiner unbatchedFlowCombiner, int i) {
                this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
                this.$index = i;
            }

            /* JADX WARN: Code duplicated, block: B:7:0x0013  */
            /* JADX WARN: Code restructure failed: missing block: B:20:0x004b, code lost:
            
                if (defpackage.h.g(r0) == r1) goto L21;
             */
            @Override // defpackage.id3
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object emit(java.lang.Object r6, defpackage.e02<? super defpackage.j59> r7) {
                /*
                    r5 = this;
                    boolean r0 = r7 instanceof androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C01021
                    if (r0 == 0) goto L13
                    r0 = r7
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = (androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.C01021) r0
                    int r1 = r0.label
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.label = r1
                    goto L18
                L13:
                    androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1 r0 = new androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1$2$1$1
                    r0.<init>(r7)
                L18:
                    java.lang.Object r7 = r0.result
                    a32 r1 = defpackage.a32.COROUTINE_SUSPENDED
                    int r2 = r0.label
                    r3 = 2
                    r4 = 1
                    if (r2 == 0) goto L35
                    if (r2 == r4) goto L31
                    if (r2 != r3) goto L2a
                    defpackage.r57.b(r7)
                    goto L4e
                L2a:
                    java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
                    defpackage.ah.f(r5)
                    r5 = 0
                    return r5
                L31:
                    defpackage.r57.b(r7)
                    goto L45
                L35:
                    defpackage.r57.b(r7)
                    androidx.paging.UnbatchedFlowCombiner r7 = r5.$unbatchedFlowCombiner
                    int r5 = r5.$index
                    r0.label = r4
                    java.lang.Object r5 = r7.onNext(r5, r6, r0)
                    if (r5 != r1) goto L45
                    goto L4d
                L45:
                    r0.label = r3
                    java.lang.Object r5 = defpackage.h.g(r0)
                    if (r5 != r1) goto L4e
                L4d:
                    return r1
                L4e:
                    j59 r5 = defpackage.j59.a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.AnonymousClass2.AnonymousClass1.emit(java.lang.Object, e02):java.lang.Object");
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(hd3 hd3Var, AtomicInteger atomicInteger, SimpleProducerScope simpleProducerScope, UnbatchedFlowCombiner unbatchedFlowCombiner, int i, e02 e02Var) {
            super(2, e02Var);
            this.$flow = hd3Var;
            this.$incompleteFlows = atomicInteger;
            this.$unbatchedFlowCombiner = unbatchedFlowCombiner;
            this.$index = i;
            this.$$this$simpleChannelFlow = simpleProducerScope;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass2(this.$flow, this.$incompleteFlows, this.$$this$simpleChannelFlow, this.$unbatchedFlowCombiner, this.$index, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            try {
                if (i == 0) {
                    r57.b(obj);
                    hd3 hd3Var = this.$flow;
                    AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.$unbatchedFlowCombiner, this.$index);
                    this.label = 1;
                    if (hd3Var.collect(anonymousClass1, this) == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                if (this.$incompleteFlows.decrementAndGet() == 0) {
                    this.$$this$simpleChannelFlow.close(null);
                }
                return j59.a;
            } catch (Throwable th) {
                if (this.$incompleteFlows.decrementAndGet() == 0) {
                    this.$$this$simpleChannelFlow.close(null);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(hd3 hd3Var, hd3 hd3Var2, e02 e02Var, MutableLoadStateCollection mutableLoadStateCollection) {
        super(2, e02Var);
        this.$this_combineWithoutBatching = hd3Var;
        this.$otherFlow = hd3Var2;
        this.$sourceStates$inlined = mutableLoadStateCollection;
    }

    @Override // defpackage.cd0
    public final e02<j59> create(Object obj, e02<?> e02Var) {
        PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1 = new PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1(this.$this_combineWithoutBatching, this.$otherFlow, e02Var, this.$sourceStates$inlined);
        pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.L$0 = obj;
        return pageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1;
    }

    @Override // defpackage.bm3
    public final Object invoke(SimpleProducerScope<PageEvent<Value>> simpleProducerScope, e02<? super j59> e02Var) {
        return ((PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1) create(simpleProducerScope, e02Var)).invokeSuspend(j59.a);
    }

    @Override // defpackage.cd0
    public final Object invokeSuspend(Object obj) {
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i = this.label;
        if (i == 0) {
            r57.b(obj);
            SimpleProducerScope simpleProducerScope = (SimpleProducerScope) this.L$0;
            AtomicInteger atomicInteger = new AtomicInteger(2);
            UnbatchedFlowCombiner unbatchedFlowCombiner = new UnbatchedFlowCombiner(new AnonymousClass1(simpleProducerScope, null, this.$sourceStates$inlined));
            final nb4 nb4VarA = qb4.a();
            int i2 = 0;
            hd3[] hd3VarArr = {this.$this_combineWithoutBatching, this.$otherFlow};
            int i3 = 0;
            while (i3 < 2) {
                av0.c(simpleProducerScope, nb4VarA, null, new AnonymousClass2(hd3VarArr[i3], atomicInteger, simpleProducerScope, unbatchedFlowCombiner, i2, null), 2);
                i3++;
                i2++;
            }
            ll3<j59> ll3Var = new ll3<j59>() { // from class: androidx.paging.PageFetcher$injectRemoteEvents$1$invokeSuspend$$inlined$combineWithoutBatching$1.3
                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                    nb4VarA.cancel(null);
                }

                @Override // defpackage.ll3
                public /* bridge */ /* synthetic */ j59 invoke() {
                    invoke2();
                    return j59.a;
                }
            };
            this.label = 1;
            if (simpleProducerScope.awaitClose(ll3Var, this) == a32Var) {
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
