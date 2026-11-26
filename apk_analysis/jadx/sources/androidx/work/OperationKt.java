package androidx.work;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import androidx.lifecycle.MutableLiveData;
import androidx.work.OperationKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.bd2;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.ll3;
import defpackage.r57;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class OperationKt {

    /* JADX INFO: renamed from: androidx.work.OperationKt$await$1, reason: invalid class name */
    @bd2(c = "androidx.work.OperationKt", f = "Operation.kt", l = {36}, m = "await")
    public static final class AnonymousClass1 extends f02 {
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return OperationKt.await(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object await(Operation operation, e02<? super Operation.State.SUCCESS> e02Var) throws Throwable {
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
        Object objAwait = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objAwait);
            ListenableFuture<Operation.State.SUCCESS> result = operation.getResult();
            result.getClass();
            anonymousClass1.label = 1;
            objAwait = androidx.concurrent.futures.ListenableFutureKt.await(result, anonymousClass1);
            if (objAwait == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objAwait);
        }
        objAwait.getClass();
        return objAwait;
    }

    private static final Object await$$forInline(Operation operation, e02<? super Operation.State.SUCCESS> e02Var) throws Throwable {
        ListenableFuture<Operation.State.SUCCESS> result = operation.getResult();
        result.getClass();
        Object objAwait = androidx.concurrent.futures.ListenableFutureKt.await(result, e02Var);
        objAwait.getClass();
        return objAwait;
    }

    public static final Operation launchOperation(final Tracer tracer, final String str, final Executor executor, final ll3<j59> ll3Var) {
        tracer.getClass();
        str.getClass();
        executor.getClass();
        ll3Var.getClass();
        final MutableLiveData mutableLiveData = new MutableLiveData(Operation.IN_PROGRESS);
        ListenableFuture future = CallbackToFutureAdapter.getFuture(new CallbackToFutureAdapter.Resolver() { // from class: zy5
            @Override // androidx.concurrent.futures.CallbackToFutureAdapter.Resolver
            public final Object attachCompleter(CallbackToFutureAdapter.Completer completer) {
                return OperationKt.launchOperation$lambda$2(executor, tracer, str, ll3Var, mutableLiveData, completer);
            }
        });
        future.getClass();
        return new OperationImpl(mutableLiveData, future);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 launchOperation$lambda$2(Executor executor, final Tracer tracer, final String str, final ll3 ll3Var, final MutableLiveData mutableLiveData, final CallbackToFutureAdapter.Completer completer) {
        completer.getClass();
        executor.execute(new Runnable() { // from class: bz5
            @Override // java.lang.Runnable
            public final void run() {
                OperationKt.launchOperation$lambda$2$lambda$1(tracer, str, ll3Var, mutableLiveData, completer);
            }
        });
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void launchOperation$lambda$2$lambda$1(Tracer tracer, String str, ll3 ll3Var, MutableLiveData mutableLiveData, CallbackToFutureAdapter.Completer completer) {
        boolean zIsEnabled = tracer.isEnabled();
        if (zIsEnabled) {
            try {
                tracer.beginSection(str);
            } catch (Throwable th) {
                if (zIsEnabled) {
                    tracer.endSection();
                }
                throw th;
            }
        }
        try {
            ll3Var.invoke();
            Operation.State.SUCCESS success = Operation.SUCCESS;
            mutableLiveData.postValue(success);
            completer.set(success);
        } catch (Throwable th2) {
            mutableLiveData.postValue(new Operation.State.FAILURE(th2));
            completer.setException(th2);
        }
        j59 j59Var = j59.a;
        if (zIsEnabled) {
            tracer.endSection();
        }
    }
}
