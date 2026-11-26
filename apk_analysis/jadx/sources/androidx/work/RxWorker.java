package androidx.work;

import android.content.Context;
import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.work.impl.utils.SynchronousExecutor;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.cp2;
import defpackage.cq1;
import defpackage.d08;
import defpackage.e18;
import defpackage.gg3;
import defpackage.he7;
import defpackage.m97;
import defpackage.mz7;
import defpackage.ne7;
import defpackage.nq5;
import defpackage.ph3;
import defpackage.qp1;
import defpackage.rm3;
import defpackage.t08;
import defpackage.w13;
import defpackage.yg3;
import java.util.Objects;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public abstract class RxWorker extends ListenableWorker {
    static final Executor INSTANT_EXECUTOR = new SynchronousExecutor();

    public RxWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    private <T> ListenableFuture<T> convert(final mz7<T> mz7Var) {
        return CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: l97
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return this.b.lambda$convert$0(mz7Var, completer);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Object lambda$convert$0(mz7 mz7Var, final CallbackToFutureAdapter.Completer completer) {
        e18 e18VarI = mz7Var.i(getBackgroundScheduler());
        SerialExecutor serialTaskExecutor = getTaskExecutor().getSerialTaskExecutor();
        he7 he7Var = ne7.a;
        e18VarI.f(new w13(serialTaskExecutor)).d(new t08<T>() { // from class: androidx.work.RxWorker.1
            @Override // defpackage.t08
            public void onError(Throwable th) {
                completer.setException(th);
            }

            @Override // defpackage.t08
            public void onSubscribe(cp2 cp2Var) {
                CallbackToFutureAdapter.Completer completer2 = completer;
                Objects.requireNonNull(cp2Var);
                completer2.addCancellationListener(new m97(cp2Var, 0), RxWorker.INSTANT_EXECUTOR);
            }

            @Override // defpackage.t08
            public void onSuccess(T t) {
                completer.set(t);
            }
        });
        return "converted single to future";
    }

    public abstract mz7<ListenableWorker.Result> createWork();

    public he7 getBackgroundScheduler() {
        Executor backgroundExecutor = getBackgroundExecutor();
        he7 he7Var = ne7.a;
        return new w13(backgroundExecutor);
    }

    public mz7<ForegroundInfo> getForegroundInfo() {
        return new d08(new rm3.j(new IllegalStateException("Expedited WorkRequests require a RxWorker to provide an implementation for `getForegroundInfo()`")));
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ForegroundInfo> getForegroundInfoAsync() {
        return convert(getForegroundInfo());
    }

    public final qp1 setCompletableProgress(Data data) {
        ListenableFuture<Void> progressAsync = setProgressAsync(data);
        nq5.a(progressAsync, "future is null");
        return new cq1(new rm3.h(progressAsync));
    }

    public final qp1 setForeground(ForegroundInfo foregroundInfo) {
        ListenableFuture<Void> foregroundAsync = setForegroundAsync(foregroundInfo);
        nq5.a(foregroundAsync, "future is null");
        return new cq1(new rm3.h(foregroundAsync));
    }

    @Deprecated
    public final mz7<Void> setProgress(Data data) {
        ListenableFuture<Void> progressAsync = setProgressAsync(data);
        int i = gg3.b;
        nq5.a(progressAsync, "future is null");
        return new ph3(new yg3(progressAsync));
    }

    @Override // androidx.work.ListenableWorker
    public ListenableFuture<ListenableWorker.Result> startWork() {
        return convert(createWork());
    }
}
