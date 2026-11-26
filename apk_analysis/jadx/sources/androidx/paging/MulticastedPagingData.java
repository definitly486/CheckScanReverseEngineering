package androidx.paging;

import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.be3;
import defpackage.bm3;
import defpackage.ce3;
import defpackage.dm3;
import defpackage.e02;
import defpackage.id3;
import defpackage.j59;
import defpackage.jh2;
import defpackage.ll3;
import defpackage.pg8;
import defpackage.r57;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
final class MulticastedPagingData<T> {
    private final CachedPageEventFlow<T> accumulated;
    private final PagingData<T> parent;
    private final y22 scope;
    private final ActiveFlowTracker tracker;

    /* JADX INFO: renamed from: androidx.paging.MulticastedPagingData$asPagingData$1, reason: invalid class name */
    @bd2(c = "androidx.paging.MulticastedPagingData$asPagingData$1", f = "CachedPagingData.kt", l = {53}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<id3<? super PageEvent<T>>, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ MulticastedPagingData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(MulticastedPagingData<T> multicastedPagingData, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = multicastedPagingData;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(id3<? super PageEvent<T>> id3Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(id3Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ActiveFlowTracker tracker = this.this$0.getTracker();
                if (tracker != null) {
                    ActiveFlowTracker.FlowType flowType = ActiveFlowTracker.FlowType.PAGE_EVENT_FLOW;
                    this.label = 1;
                    if (tracker.onStart(flowType, this) == a32Var) {
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

    /* JADX INFO: renamed from: androidx.paging.MulticastedPagingData$asPagingData$2, reason: invalid class name */
    @bd2(c = "androidx.paging.MulticastedPagingData$asPagingData$2", f = "CachedPagingData.kt", l = {54}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass2 extends pg8 implements dm3<id3<? super PageEvent<T>>, Throwable, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ MulticastedPagingData<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(MulticastedPagingData<T> multicastedPagingData, e02<? super AnonymousClass2> e02Var) {
            super(3, e02Var);
            this.this$0 = multicastedPagingData;
        }

        @Override // defpackage.dm3
        public final Object invoke(id3<? super PageEvent<T>> id3Var, Throwable th, e02<? super j59> e02Var) {
            return new AnonymousClass2(this.this$0, e02Var).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                ActiveFlowTracker tracker = this.this$0.getTracker();
                if (tracker != null) {
                    ActiveFlowTracker.FlowType flowType = ActiveFlowTracker.FlowType.PAGE_EVENT_FLOW;
                    this.label = 1;
                    if (tracker.onComplete(flowType, this) == a32Var) {
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

    public MulticastedPagingData(y22 y22Var, PagingData<T> pagingData, ActiveFlowTracker activeFlowTracker) {
        y22Var.getClass();
        pagingData.getClass();
        this.scope = y22Var;
        this.parent = pagingData;
        this.tracker = activeFlowTracker;
        CachedPageEventFlow<T> cachedPageEventFlow = new CachedPageEventFlow<>(pagingData.getFlow$paging_common(), y22Var);
        if (activeFlowTracker != null) {
            activeFlowTracker.onNewCachedEventFlow(cachedPageEventFlow);
        }
        this.accumulated = cachedPageEventFlow;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final PageEvent.Insert asPagingData$lambda$0(MulticastedPagingData multicastedPagingData) {
        return multicastedPagingData.accumulated.getCachedEvent$paging_common();
    }

    public final PagingData<T> asPagingData() {
        return new PagingData<>(new be3(new ce3(this.accumulated.getDownstreamFlow(), new AnonymousClass1(this, null)), new AnonymousClass2(this, null)), this.parent.getUiReceiver$paging_common(), this.parent.getHintReceiver$paging_common(), new ll3() { // from class: androidx.paging.f
            @Override // defpackage.ll3
            public final Object invoke() {
                return MulticastedPagingData.asPagingData$lambda$0(this.b);
            }
        });
    }

    public final Object close(e02<? super j59> e02Var) {
        this.accumulated.close();
        return j59.a;
    }

    public final PagingData<T> getParent() {
        return this.parent;
    }

    public final y22 getScope() {
        return this.scope;
    }

    public final ActiveFlowTracker getTracker() {
        return this.tracker;
    }

    public /* synthetic */ MulticastedPagingData(y22 y22Var, PagingData pagingData, ActiveFlowTracker activeFlowTracker, int i, jh2 jh2Var) {
        this(y22Var, pagingData, (i & 4) != 0 ? null : activeFlowTracker);
    }
}
