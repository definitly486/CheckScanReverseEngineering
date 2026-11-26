package androidx.work.impl.workers;

import android.content.Context;
import android.os.Build;
import androidx.compose.runtime.GapComposerKt;
import androidx.concurrent.futures.ListenableFutureKt;
import androidx.core.util.Consumer;
import androidx.work.CoroutineWorker;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerFactory;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.constraints.WorkConstraintsTracker;
import androidx.work.impl.constraints.trackers.Trackers;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.e02;
import defpackage.f02;
import defpackage.j59;
import defpackage.mb4;
import defpackage.pg8;
import defpackage.r22;
import defpackage.r57;
import defpackage.s68;
import defpackage.y22;
import defpackage.z22;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes3.dex */
public final class ConstraintTrackingWorker extends CoroutineWorker {
    private final WorkerParameters workerParameters;

    public static final class ConstraintUnsatisfiedException extends CancellationException {
        private final int stopReason;

        public ConstraintUnsatisfiedException(int i) {
            this.stopReason = i;
        }

        public final int getStopReason() {
            return this.stopReason;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2, reason: invalid class name */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorker$doWork$2", f = "ConstraintTrackingWorker.kt", l = {58}, m = "invokeSuspend")
    public static final class AnonymousClass2 extends pg8 implements bm3<y22, e02<? super ListenableWorker.Result>, Object> {
        int label;

        public AnonymousClass2(e02<? super AnonymousClass2> e02Var) {
            super(2, e02Var);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ConstraintTrackingWorker.this.new AnonymousClass2(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super ListenableWorker.Result> e02Var) {
            return ((AnonymousClass2) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) throws Throwable {
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
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            this.label = 1;
            Object obj2 = constraintTrackingWorker.setupAndRunConstraintTrackingWork(this);
            return obj2 == a32Var ? a32Var : obj2;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorker", f = "ConstraintTrackingWorker.kt", l = {GapComposerKt.nodeKey}, m = "runWorker")
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
            return ConstraintTrackingWorker.this.runWorker(null, null, null, this);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorker$runWorker$2", f = "ConstraintTrackingWorker.kt", l = {134}, m = "invokeSuspend")
    public static final class C07502 extends pg8 implements bm3<y22, e02<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        private /* synthetic */ Object L$0;
        Object L$1;
        Object L$2;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C07502(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, e02<? super C07502> e02Var) {
            super(2, e02Var);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            C07502 c07502 = new C07502(this.$delegate, this.$workConstraintsTracker, this.$workSpec, e02Var);
            c07502.L$0 = obj;
            return c07502;
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super ListenableWorker.Result> e02Var) {
            return ((C07502) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Code duplicated, block: B:30:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:31:0x00bd  */
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r1v0, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [mb4] */
        /* JADX WARN: Type inference failed for: r1v5, types: [mb4] */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9 */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            CancellationException cancellationException;
            AtomicInteger atomicInteger;
            ListenableFuture<ListenableWorker.Result> listenableFuture;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            ?? r1 = this.label;
            boolean z = true;
            try {
                try {
                    if (r1 == 0) {
                        r57.b(obj);
                        y22 y22Var = (y22) this.L$0;
                        AtomicInteger atomicInteger2 = new AtomicInteger(-256);
                        ListenableFuture<ListenableWorker.Result> listenableFutureStartWork = this.$delegate.startWork();
                        listenableFutureStartWork.getClass();
                        s68 s68VarC = av0.c(y22Var, null, null, new ConstraintTrackingWorker$runWorker$2$constraintTrackingJob$1(this.$workConstraintsTracker, this.$workSpec, atomicInteger2, listenableFutureStartWork, null), 3);
                        try {
                            this.L$0 = atomicInteger2;
                            this.L$1 = listenableFutureStartWork;
                            this.L$2 = s68VarC;
                            this.label = 1;
                            obj = ListenableFutureKt.await(listenableFutureStartWork, this);
                            if (obj == a32Var) {
                                return a32Var;
                            }
                            atomicInteger = atomicInteger2;
                            listenableFuture = listenableFutureStartWork;
                            r1 = s68VarC;
                        } catch (CancellationException e) {
                            cancellationException = e;
                            atomicInteger = atomicInteger2;
                            listenableFuture = listenableFutureStartWork;
                            String str = ConstraintTrackingWorkerKt.TAG;
                            ListenableWorker listenableWorker = this.$delegate;
                            Logger.get().debug(str, "Delegated worker " + listenableWorker.getClass() + " was cancelled", cancellationException);
                            if (atomicInteger.get() != -256) {
                                z = false;
                            }
                            if (listenableFuture.isCancelled() || !z) {
                                throw cancellationException;
                            }
                            throw new ConstraintUnsatisfiedException(atomicInteger.get());
                        }
                    } else {
                        if (r1 != 1) {
                            ah.f("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        mb4 mb4Var = (mb4) this.L$2;
                        listenableFuture = (ListenableFuture) this.L$1;
                        atomicInteger = (AtomicInteger) this.L$0;
                        try {
                            r57.b(obj);
                            r1 = mb4Var;
                        } catch (CancellationException e2) {
                            cancellationException = e2;
                            String str2 = ConstraintTrackingWorkerKt.TAG;
                            ListenableWorker listenableWorker2 = this.$delegate;
                            Logger.get().debug(str2, "Delegated worker " + listenableWorker2.getClass() + " was cancelled", cancellationException);
                            if (atomicInteger.get() != -256) {
                                z = false;
                            }
                            if (listenableFuture.isCancelled()) {
                                throw cancellationException;
                            }
                            throw cancellationException;
                        }
                    }
                    ListenableWorker.Result result = (ListenableWorker.Result) obj;
                    r1.cancel(null);
                    return result;
                } catch (Throwable th) {
                    String str3 = ConstraintTrackingWorkerKt.TAG;
                    ListenableWorker listenableWorker3 = this.$delegate;
                    Logger.get().debug(str3, "Delegated worker " + listenableWorker3.getClass() + " threw exception in startWork.", th);
                    throw th;
                }
            } catch (Throwable th2) {
                r1.cancel(null);
                throw th2;
            }
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorker", f = "ConstraintTrackingWorker.kt", l = {97}, m = "setupAndRunConstraintTrackingWork")
    public static final class C07511 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C07511(e02<? super C07511> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return ConstraintTrackingWorker.this.setupAndRunConstraintTrackingWork(this);
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5, reason: invalid class name */
    @bd2(c = "androidx.work.impl.workers.ConstraintTrackingWorker$setupAndRunConstraintTrackingWork$5", f = "ConstraintTrackingWorker.kt", l = {98}, m = "invokeSuspend")
    public static final class AnonymousClass5 extends pg8 implements bm3<y22, e02<? super ListenableWorker.Result>, Object> {
        final /* synthetic */ ListenableWorker $delegate;
        final /* synthetic */ WorkConstraintsTracker $workConstraintsTracker;
        final /* synthetic */ WorkSpec $workSpec;
        int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass5(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, e02<? super AnonymousClass5> e02Var) {
            super(2, e02Var);
            this.$delegate = listenableWorker;
            this.$workConstraintsTracker = workConstraintsTracker;
            this.$workSpec = workSpec;
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return ConstraintTrackingWorker.this.new AnonymousClass5(this.$delegate, this.$workConstraintsTracker, this.$workSpec, e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super ListenableWorker.Result> e02Var) {
            return ((AnonymousClass5) create(y22Var, e02Var)).invokeSuspend(j59.a);
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
            ConstraintTrackingWorker constraintTrackingWorker = ConstraintTrackingWorker.this;
            ListenableWorker listenableWorker = this.$delegate;
            WorkConstraintsTracker workConstraintsTracker = this.$workConstraintsTracker;
            WorkSpec workSpec = this.$workSpec;
            this.label = 1;
            Object objRunWorker = constraintTrackingWorker.runWorker(listenableWorker, workConstraintsTracker, workSpec, this);
            return objRunWorker == a32Var ? a32Var : objRunWorker;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConstraintTrackingWorker(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
        context.getClass();
        workerParameters.getClass();
        this.workerParameters = workerParameters;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object runWorker(ListenableWorker listenableWorker, WorkConstraintsTracker workConstraintsTracker, WorkSpec workSpec, e02<? super ListenableWorker.Result> e02Var) {
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
        Object objC = anonymousClass1.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            r57.b(objC);
            C07502 c07502 = new C07502(listenableWorker, workConstraintsTracker, workSpec, null);
            anonymousClass1.label = 1;
            objC = z22.c(c07502, anonymousClass1);
            if (objC == a32Var) {
                return a32Var;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            r57.b(objC);
        }
        objC.getClass();
        return objC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object setupAndRunConstraintTrackingWork(e02<? super ListenableWorker.Result> e02Var) throws Throwable {
        C07511 c07511;
        ConstraintTrackingWorker constraintTrackingWorker;
        CancellationException cancellationException;
        ListenableWorker listenableWorker;
        int stopReason;
        if (e02Var instanceof C07511) {
            c07511 = (C07511) e02Var;
            int i = c07511.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07511.label = i - Integer.MIN_VALUE;
            } else {
                c07511 = new C07511(e02Var);
            }
        } else {
            c07511 = new C07511(e02Var);
        }
        Object objD = c07511.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07511.label;
        if (i2 == 0) {
            r57.b(objD);
            String string = getInputData().getString(ConstraintTrackingWorkerKt.ARGUMENT_CLASS_NAME);
            if (string == null || string.length() == 0) {
                Logger.get().error(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                ListenableWorker.Result resultFailure = ListenableWorker.Result.failure();
                resultFailure.getClass();
                return resultFailure;
            }
            WorkManagerImpl workManagerImpl = WorkManagerImpl.getInstance(getApplicationContext());
            workManagerImpl.getClass();
            WorkSpecDao workSpecDao = workManagerImpl.getWorkDatabase().workSpecDao();
            String string2 = getId().toString();
            string2.getClass();
            WorkSpec workSpec = workSpecDao.getWorkSpec(string2);
            if (workSpec == null) {
                ListenableWorker.Result resultFailure2 = ListenableWorker.Result.failure();
                resultFailure2.getClass();
                return resultFailure2;
            }
            Trackers trackers = workManagerImpl.getTrackers();
            trackers.getClass();
            WorkConstraintsTracker workConstraintsTracker = new WorkConstraintsTracker(trackers);
            if (!workConstraintsTracker.areAllConstraintsMet(workSpec)) {
                String str = ConstraintTrackingWorkerKt.TAG;
                Logger.get().debug(str, "Constraints not met for delegate " + string + ". Requesting retry.");
                ListenableWorker.Result resultRetry = ListenableWorker.Result.retry();
                resultRetry.getClass();
                return resultRetry;
            }
            String str2 = ConstraintTrackingWorkerKt.TAG;
            Logger.get().debug(str2, "Constraints met for delegate " + string);
            try {
                WorkerFactory workerFactory = getWorkerFactory();
                Context applicationContext = getApplicationContext();
                applicationContext.getClass();
                ListenableWorker listenableWorkerCreateWorkerWithDefaultFallback = workerFactory.createWorkerWithDefaultFallback(applicationContext, string, this.workerParameters);
                Executor mainThreadExecutor = this.workerParameters.getTaskExecutor().getMainThreadExecutor();
                mainThreadExecutor.getClass();
                try {
                    r22 r22VarX = aq5.x(mainThreadExecutor);
                    constraintTrackingWorker = this;
                    try {
                        AnonymousClass5 anonymousClass5 = constraintTrackingWorker.new AnonymousClass5(listenableWorkerCreateWorkerWithDefaultFallback, workConstraintsTracker, workSpec, null);
                        c07511.L$0 = listenableWorkerCreateWorkerWithDefaultFallback;
                        c07511.label = 1;
                        objD = av0.d(r22VarX, anonymousClass5, c07511);
                        if (objD == a32Var) {
                            return a32Var;
                        }
                        listenableWorker = listenableWorkerCreateWorkerWithDefaultFallback;
                        return (ListenableWorker.Result) objD;
                    } catch (CancellationException e) {
                        e = e;
                        cancellationException = e;
                        listenableWorker = listenableWorkerCreateWorkerWithDefaultFallback;
                    }
                } catch (CancellationException e2) {
                    e = e2;
                    constraintTrackingWorker = this;
                }
            } catch (Throwable th) {
                Logger.get().debug(ConstraintTrackingWorkerKt.TAG, "No worker to delegate to.");
                Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = workManagerImpl.getConfiguration().getWorkerInitializationExceptionHandler();
                if (workerInitializationExceptionHandler != null) {
                    WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(string, this.workerParameters, th), ConstraintTrackingWorkerKt.TAG);
                }
                ListenableWorker.Result resultFailure3 = ListenableWorker.Result.failure();
                resultFailure3.getClass();
                return resultFailure3;
            }
        } else {
            if (i2 != 1) {
                ah.f("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            listenableWorker = (ListenableWorker) c07511.L$0;
            try {
                r57.b(objD);
                constraintTrackingWorker = this;
                try {
                    return (ListenableWorker.Result) objD;
                } catch (CancellationException e3) {
                    cancellationException = e3;
                }
            } catch (CancellationException e4) {
                cancellationException = e4;
                constraintTrackingWorker = this;
            }
        }
        if (constraintTrackingWorker.isStopped() || (cancellationException instanceof ConstraintUnsatisfiedException)) {
            if (Build.VERSION.SDK_INT < 31) {
                stopReason = WorkInfo.STOP_REASON_UNKNOWN;
            } else if (constraintTrackingWorker.isStopped()) {
                stopReason = constraintTrackingWorker.getStopReason();
            } else {
                if (!(cancellationException instanceof ConstraintUnsatisfiedException)) {
                    ah.f("Unreachable");
                    return null;
                }
                stopReason = ((ConstraintUnsatisfiedException) cancellationException).getStopReason();
            }
            listenableWorker.stop(stopReason);
        }
        if (!(cancellationException instanceof ConstraintUnsatisfiedException)) {
            throw cancellationException;
        }
        ListenableWorker.Result resultRetry2 = ListenableWorker.Result.retry();
        resultRetry2.getClass();
        return resultRetry2;
    }

    @Override // androidx.work.CoroutineWorker
    public Object doWork(e02<? super ListenableWorker.Result> e02Var) {
        Executor backgroundExecutor = getBackgroundExecutor();
        backgroundExecutor.getClass();
        return av0.d(aq5.x(backgroundExecutor), new AnonymousClass2(null), e02Var);
    }
}
