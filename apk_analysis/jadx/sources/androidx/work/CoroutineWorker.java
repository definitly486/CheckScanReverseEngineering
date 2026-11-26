package androidx.work;

import android.content.Context;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.j59;
import defpackage.o22;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.qo2;
import defpackage.r22;
import defpackage.r57;
import defpackage.ul2;
import defpackage.y22;

/* JADX INFO: loaded from: classes3.dex */
public abstract class CoroutineWorker extends ListenableWorker {
    private final r22 coroutineContext;
    private final WorkerParameters params;

    public static final class DeprecatedDispatcher extends r22 {
        public static final DeprecatedDispatcher INSTANCE = new DeprecatedDispatcher();
        private static final r22 dispatcher = qo2.a;

        private DeprecatedDispatcher() {
        }

        @Override // defpackage.r22
        public void dispatch(o22 o22Var, Runnable runnable) {
            o22Var.getClass();
            runnable.getClass();
            dispatcher.dispatch(o22Var, runnable);
        }

        public final r22 getDispatcher() {
            return dispatcher;
        }

        @Override // defpackage.r22
        public boolean isDispatchNeeded(o22 o22Var) {
            o22Var.getClass();
            return dispatcher.isDispatchNeeded(o22Var);
        }
    }

    /* JADX INFO: renamed from: androidx.work.CoroutineWorker$getForegroundInfoAsync$1, reason: invalid class name */
    @bd2(c = "androidx.work.CoroutineWorker$getForegroundInfoAsync$1", f = "CoroutineWorker.kt", l = {121}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super ForegroundInfo>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CoroutineWorker.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super ForegroundInfo> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CoroutineWorker coroutineWorker = CoroutineWorker.this;
            this.label = 1;
            Object foregroundInfo = coroutineWorker.getForegroundInfo(this);
            return foregroundInfo == a32Var ? a32Var : foregroundInfo;
        }
    }

    /* JADX INFO: renamed from: androidx.work.CoroutineWorker$startWork$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.work.CoroutineWorker$startWork$1", f = "CoroutineWorker.kt", l = {67}, m = "invokeSuspend")
    public static final class C07481 extends pg8 implements bm3<y22, e02<? super ListenableWorker.Result>, Object> {
        int label;

        public C07481(e02<? super C07481> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return CoroutineWorker.this.new C07481(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super ListenableWorker.Result> e02Var) {
            return ((C07481) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            if (i != 0) {
                if (i == 1) {
                    r57.b(obj);
                    return obj;
                }
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(obj);
            CoroutineWorker coroutineWorker = CoroutineWorker.this;
            this.label = 1;
            Object objDoWork = coroutineWorker.doWork(this);
            return objDoWork == a32Var ? a32Var : objDoWork;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.params = workerParameters;
        this.coroutineContext = DeprecatedDispatcher.INSTANCE;
    }

    @ul2
    public static /* synthetic */ void getCoroutineContext$annotations() {
    }

    public static /* synthetic */ Object getForegroundInfo$suspendImpl(CoroutineWorker coroutineWorker, e02<? super ForegroundInfo> e02Var) {
        throw new IllegalStateException("Not implemented");
    }

    public abstract Object doWork(e02<? super ListenableWorker.Result> e02Var);

    public r22 getCoroutineContext() {
        return this.coroutineContext;
    }

    public Object getForegroundInfo(e02<? super ForegroundInfo> e02Var) {
        return getForegroundInfo$suspendImpl(this, e02Var);
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        return ListenableFutureKt.launchFuture$default(getCoroutineContext().plus(qb4.a()), null, new AnonymousClass1(null), 2, null);
    }

    @Override // androidx.work.ListenableWorker
    public final void onStopped() {
        super.onStopped();
    }

    public final Object setForeground(ForegroundInfo foregroundInfo, e02<? super j59> e02Var) throws Throwable {
        ListenableFuture<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        foregroundAsync.getClass();
        Object objAwait = androidx.concurrent.futures.ListenableFutureKt.await(foregroundAsync, e02Var);
        return objAwait == a32.COROUTINE_SUSPENDED ? objAwait : j59.a;
    }

    public final Object setProgress(Data data, e02<? super j59> e02Var) throws Throwable {
        ListenableFuture<Void> progressAsync = setProgressAsync(data);
        progressAsync.getClass();
        Object objAwait = androidx.concurrent.futures.ListenableFutureKt.await(progressAsync, e02Var);
        return objAwait == a32.COROUTINE_SUSPENDED ? objAwait : j59.a;
    }

    @Override // androidx.work.ListenableWorker
    public final ListenableFuture<ListenableWorker.Result> startWork() {
        o22 coroutineContext = !aa4.e(getCoroutineContext(), DeprecatedDispatcher.INSTANCE) ? getCoroutineContext() : this.params.getWorkerContext();
        coroutineContext.getClass();
        return ListenableFutureKt.launchFuture$default(coroutineContext.plus(qb4.a()), null, new C07481(null), 2, null);
    }
}
