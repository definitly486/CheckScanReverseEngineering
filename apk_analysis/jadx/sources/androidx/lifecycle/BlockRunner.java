package androidx.lifecycle;

import defpackage.a32;
import defpackage.ah;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.mb4;
import defpackage.oi2;
import defpackage.pg8;
import defpackage.qo2;
import defpackage.r57;
import defpackage.uy4;
import defpackage.y22;
import defpackage.yk2;

/* JADX INFO: loaded from: classes3.dex */
public final class BlockRunner<T> {
    private final bm3<LiveDataScope<T>, e02<? super j59>, Object> block;
    private mb4 cancellationJob;
    private final CoroutineLiveData<T> liveData;
    private final ll3<j59> onDone;
    private mb4 runningJob;
    private final y22 scope;
    private final long timeoutInMs;

    /* JADX INFO: renamed from: androidx.lifecycle.BlockRunner$cancel$1, reason: invalid class name */
    @bd2(c = "androidx.lifecycle.BlockRunner$cancel$1", f = "CoroutineLiveData.kt", l = {182}, m = "invokeSuspend", v = 1)
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        int label;
        final /* synthetic */ BlockRunner<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(BlockRunner<T> blockRunner, e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
            this.this$0 = blockRunner;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return new AnonymousClass1(this.this$0, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                long j = ((BlockRunner) this.this$0).timeoutInMs;
                this.label = 1;
                if (yk2.b(j, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            if (!((BlockRunner) this.this$0).liveData.hasActiveObservers()) {
                mb4 mb4Var = ((BlockRunner) this.this$0).runningJob;
                if (mb4Var != null) {
                    mb4Var.cancel(null);
                }
                ((BlockRunner) this.this$0).runningJob = null;
            }
            return j59.a;
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.BlockRunner$maybeRun$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.lifecycle.BlockRunner$maybeRun$1", f = "CoroutineLiveData.kt", l = {170}, m = "invokeSuspend", v = 1)
    public static final class C06921 extends pg8 implements bm3<y22, e02<? super j59>, Object> {
        private /* synthetic */ Object L$0;
        int label;
        final /* synthetic */ BlockRunner<T> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C06921(BlockRunner<T> blockRunner, e02<? super C06921> e02Var) {
            super(2, e02Var);
            this.this$0 = blockRunner;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C06921 c06921 = new C06921(this.this$0, e02Var);
            c06921.L$0 = obj;
            return c06921;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super j59> e02Var) {
            return ((C06921) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i == 0) {
                r57.b(obj);
                LiveDataScopeImpl liveDataScopeImpl = new LiveDataScopeImpl(((BlockRunner) this.this$0).liveData, ((y22) this.L$0).getCoroutineContext());
                bm3 bm3Var = ((BlockRunner) this.this$0).block;
                this.label = 1;
                if (bm3Var.invoke(liveDataScopeImpl, this) == a32Var) {
                    return a32Var;
                }
            } else {
                if (i != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                r57.b(obj);
            }
            ((BlockRunner) this.this$0).onDone.invoke();
            return j59.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public BlockRunner(CoroutineLiveData<T> coroutineLiveData, bm3<? super LiveDataScope<T>, ? super e02<? super j59>, ? extends Object> bm3Var, long j, y22 y22Var, ll3<j59> ll3Var) {
        coroutineLiveData.getClass();
        bm3Var.getClass();
        y22Var.getClass();
        ll3Var.getClass();
        this.liveData = coroutineLiveData;
        this.block = bm3Var;
        this.timeoutInMs = j;
        this.scope = y22Var;
        this.onDone = ll3Var;
    }

    public final void cancel() {
        if (this.cancellationJob != null) {
            ah.f("Cancel call cannot happen without a maybeRun");
            return;
        }
        y22 y22Var = this.scope;
        oi2 oi2Var = qo2.a;
        this.cancellationJob = av0.c(y22Var, uy4.a.k0(), null, new AnonymousClass1(this, null), 2);
    }

    public final void maybeRun() {
        mb4 mb4Var = this.cancellationJob;
        if (mb4Var != null) {
            mb4Var.cancel(null);
        }
        this.cancellationJob = null;
        if (this.runningJob != null) {
            return;
        }
        this.runningJob = av0.c(this.scope, null, null, new C06921(this, null), 3);
    }
}
