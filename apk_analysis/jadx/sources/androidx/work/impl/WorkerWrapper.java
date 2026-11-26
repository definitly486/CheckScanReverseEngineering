package androidx.work.impl;

import android.content.Context;
import androidx.core.util.Consumer;
import androidx.work.Clock;
import androidx.work.Configuration;
import androidx.work.Data;
import androidx.work.ForegroundUpdater;
import androidx.work.InputMerger;
import androidx.work.ListenableFutureKt;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import androidx.work.WorkInfo;
import androidx.work.WorkerExceptionInfo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkerWrapper;
import androidx.work.impl.foreground.ForegroundProcessor;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkGenerationalId;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.model.WorkSpecKt;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.WorkerExceptionUtilsKt;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.a32;
import defpackage.aa4;
import defpackage.ah;
import defpackage.aq5;
import defpackage.av0;
import defpackage.bd2;
import defpackage.bm3;
import defpackage.bm4;
import defpackage.e02;
import defpackage.f02;
import defpackage.hq1;
import defpackage.j59;
import defpackage.jh2;
import defpackage.mb4;
import defpackage.me0;
import defpackage.nn1;
import defpackage.o22;
import defpackage.pg8;
import defpackage.qb4;
import defpackage.qn1;
import defpackage.r22;
import defpackage.r57;
import defpackage.u96;
import defpackage.y22;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkerWrapper {
    private final Context appContext;
    private final ListenableWorker builderWorker;
    private final Clock clock;
    private final Configuration configuration;
    private final DependencyDao dependencyDao;
    private final ForegroundProcessor foregroundProcessor;
    private final WorkerParameters.RuntimeExtras runtimeExtras;
    private final List<String> tags;
    private final WorkDatabase workDatabase;
    private final String workDescription;
    private final WorkSpec workSpec;
    private final WorkSpecDao workSpecDao;
    private final String workSpecId;
    private final TaskExecutor workTaskExecutor;
    private final hq1 workerJob;

    public static final class Builder {
        private final Context appContext;
        private final Configuration configuration;
        private final ForegroundProcessor foregroundProcessor;
        private WorkerParameters.RuntimeExtras runtimeExtras;
        private final List<String> tags;
        private final WorkDatabase workDatabase;
        private final WorkSpec workSpec;
        private final TaskExecutor workTaskExecutor;
        private ListenableWorker worker;

        public Builder(Context context, Configuration configuration, TaskExecutor taskExecutor, ForegroundProcessor foregroundProcessor, WorkDatabase workDatabase, WorkSpec workSpec, List<String> list) {
            context.getClass();
            configuration.getClass();
            taskExecutor.getClass();
            foregroundProcessor.getClass();
            workDatabase.getClass();
            workSpec.getClass();
            list.getClass();
            this.configuration = configuration;
            this.workTaskExecutor = taskExecutor;
            this.foregroundProcessor = foregroundProcessor;
            this.workDatabase = workDatabase;
            this.workSpec = workSpec;
            this.tags = list;
            Context applicationContext = context.getApplicationContext();
            applicationContext.getClass();
            this.appContext = applicationContext;
            this.runtimeExtras = new WorkerParameters.RuntimeExtras();
        }

        public final WorkerWrapper build() {
            return new WorkerWrapper(this);
        }

        public final Context getAppContext() {
            return this.appContext;
        }

        public final Configuration getConfiguration() {
            return this.configuration;
        }

        public final ForegroundProcessor getForegroundProcessor() {
            return this.foregroundProcessor;
        }

        public final WorkerParameters.RuntimeExtras getRuntimeExtras() {
            return this.runtimeExtras;
        }

        public final List<String> getTags() {
            return this.tags;
        }

        public final WorkDatabase getWorkDatabase() {
            return this.workDatabase;
        }

        public final WorkSpec getWorkSpec() {
            return this.workSpec;
        }

        public final TaskExecutor getWorkTaskExecutor() {
            return this.workTaskExecutor;
        }

        public final ListenableWorker getWorker() {
            return this.worker;
        }

        public final void setRuntimeExtras(WorkerParameters.RuntimeExtras runtimeExtras) {
            runtimeExtras.getClass();
            this.runtimeExtras = runtimeExtras;
        }

        public final void setWorker(ListenableWorker listenableWorker) {
            this.worker = listenableWorker;
        }

        public final Builder withRuntimeExtras(WorkerParameters.RuntimeExtras runtimeExtras) {
            if (runtimeExtras != null) {
                this.runtimeExtras = runtimeExtras;
            }
            return this;
        }

        public final Builder withWorker(ListenableWorker listenableWorker) {
            listenableWorker.getClass();
            this.worker = listenableWorker;
            return this;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.WorkerWrapper$launch$1, reason: invalid class name */
    @bd2(c = "androidx.work.impl.WorkerWrapper$launch$1", f = "WorkerWrapper.kt", l = {98}, m = "invokeSuspend")
    public static final class AnonymousClass1 extends pg8 implements bm3<y22, e02<? super Boolean>, Object> {
        int label;

        public AnonymousClass1(e02<? super AnonymousClass1> e02Var) {
            super(2, e02Var);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final Boolean invokeSuspend$lambda$1(Resolution resolution, WorkerWrapper workerWrapper) {
            boolean zResetWorkerStatus;
            if (resolution instanceof Resolution.Finished) {
                zResetWorkerStatus = workerWrapper.onWorkFinished(((Resolution.Finished) resolution).getResult());
            } else if (resolution instanceof Resolution.Failed) {
                zResetWorkerStatus = workerWrapper.onWorkFailed(((Resolution.Failed) resolution).getResult());
            } else {
                if (!(resolution instanceof Resolution.ResetWorkerStatus)) {
                    me0.e();
                    return null;
                }
                zResetWorkerStatus = workerWrapper.resetWorkerStatus(((Resolution.ResetWorkerStatus) resolution).getReason());
            }
            return Boolean.valueOf(zResetWorkerStatus);
        }

        @Override // defpackage.cd0
        public final e02<j59> create(Object obj, e02<?> e02Var) {
            return WorkerWrapper.this.new AnonymousClass1(e02Var);
        }

        @Override // defpackage.bm3
        public final Object invoke(y22 y22Var, e02<? super Boolean> e02Var) {
            return ((AnonymousClass1) create(y22Var, e02Var)).invokeSuspend(j59.a);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            final Resolution failed;
            a32 a32Var = a32.COROUTINE_SUSPENDED;
            int i = this.label;
            int i2 = 1;
            ListenableWorker.Result result = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            Object[] objArr3 = 0;
            try {
                if (i == 0) {
                    r57.b(obj);
                    hq1 hq1Var = WorkerWrapper.this.workerJob;
                    WorkerWrapper$launch$1$resolution$1 workerWrapper$launch$1$resolution$1 = new WorkerWrapper$launch$1$resolution$1(WorkerWrapper.this, null);
                    this.label = 1;
                    obj = av0.d(hq1Var, workerWrapper$launch$1$resolution$1, this);
                    if (obj == a32Var) {
                        return a32Var;
                    }
                } else {
                    if (i != 1) {
                        ah.f("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    r57.b(obj);
                }
                failed = (Resolution) obj;
            } catch (WorkerStoppedException e) {
                failed = new Resolution.ResetWorkerStatus(e.getReason());
            } catch (CancellationException unused) {
                failed = new Resolution.Failed(result, i2, objArr3 == true ? 1 : 0);
            } catch (Throwable th) {
                Logger.get().error(WorkerWrapperKt.TAG, "Unexpected error in WorkerWrapper", th);
                failed = new Resolution.Failed(objArr2 == true ? 1 : 0, i2, objArr == true ? 1 : 0);
            }
            WorkDatabase workDatabase = WorkerWrapper.this.workDatabase;
            final WorkerWrapper workerWrapper = WorkerWrapper.this;
            Object objRunInTransaction = workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: androidx.work.impl.a
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return WorkerWrapper.AnonymousClass1.invokeSuspend$lambda$1(failed, workerWrapper);
                }
            });
            objRunInTransaction.getClass();
            return objRunInTransaction;
        }
    }

    /* JADX INFO: renamed from: androidx.work.impl.WorkerWrapper$runWorker$1, reason: invalid class name and case insensitive filesystem */
    @bd2(c = "androidx.work.impl.WorkerWrapper", f = "WorkerWrapper.kt", l = {296}, m = "runWorker")
    public static final class C07491 extends f02 {
        Object L$0;
        int label;
        /* synthetic */ Object result;

        public C07491(e02<? super C07491> e02Var) {
            super(e02Var);
        }

        @Override // defpackage.cd0
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return WorkerWrapper.this.runWorker(this);
        }
    }

    public WorkerWrapper(Builder builder) {
        builder.getClass();
        WorkSpec workSpec = builder.getWorkSpec();
        this.workSpec = workSpec;
        this.appContext = builder.getAppContext();
        this.workSpecId = workSpec.id;
        this.runtimeExtras = builder.getRuntimeExtras();
        this.builderWorker = builder.getWorker();
        this.workTaskExecutor = builder.getWorkTaskExecutor();
        Configuration configuration = builder.getConfiguration();
        this.configuration = configuration;
        this.clock = configuration.getClock();
        this.foregroundProcessor = builder.getForegroundProcessor();
        WorkDatabase workDatabase = builder.getWorkDatabase();
        this.workDatabase = workDatabase;
        this.workSpecDao = workDatabase.workSpecDao();
        this.dependencyDao = workDatabase.dependencyDao();
        List<String> tags = builder.getTags();
        this.tags = tags;
        this.workDescription = createWorkDescription(tags);
        this.workerJob = qb4.a();
    }

    private final String createWorkDescription(List<String> list) {
        StringBuilder sb = new StringBuilder("Work [ id=");
        sb.append(this.workSpecId);
        sb.append(", tags={ ");
        return me0.d(sb, qn1.a0(list, StringUtils.COMMA, null, null, 0, null, 62), " } ]");
    }

    private final boolean handleResult(ListenableWorker.Result result) {
        if (result instanceof ListenableWorker.Result.Success) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().info(str, "Worker result SUCCESS for " + this.workDescription);
            return this.workSpec.isPeriodic() ? resetPeriodic() : setSucceeded(result);
        }
        if (result instanceof ListenableWorker.Result.Retry) {
            String str2 = WorkerWrapperKt.TAG;
            Logger.get().info(str2, "Worker result RETRY for " + this.workDescription);
            return reschedule(-256);
        }
        String str3 = WorkerWrapperKt.TAG;
        Logger.get().info(str3, "Worker result FAILURE for " + this.workDescription);
        if (this.workSpec.isPeriodic()) {
            return resetPeriodic();
        }
        if (result == null) {
            result = new ListenableWorker.Result.Failure();
        }
        return setFailed(result);
    }

    private final void iterativelyFailWorkAndDependents(String str) {
        ArrayList arrayListK = u96.k(str);
        while (!arrayListK.isEmpty()) {
            String str2 = (String) nn1.E(arrayListK);
            if (this.workSpecDao.getState(str2) != WorkInfo.State.CANCELLED) {
                this.workSpecDao.setState(WorkInfo.State.FAILED, str2);
            }
            arrayListK.addAll(this.dependencyDao.getDependentWorkIds(str2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean onWorkFailed(ListenableWorker.Result result) {
        String str = WorkerWrapperKt.TAG;
        Logger.get().info(str, "Worker result FAILURE for " + this.workDescription);
        if (this.workSpec.isPeriodic()) {
            resetPeriodic();
            return false;
        }
        setFailed(result);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean onWorkFinished(ListenableWorker.Result result) {
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        this.workDatabase.workProgressDao().delete(this.workSpecId);
        if (state == null) {
            return false;
        }
        if (state == WorkInfo.State.RUNNING) {
            return handleResult(result);
        }
        if (state.isFinished()) {
            return false;
        }
        return reschedule(WorkInfo.STOP_REASON_UNKNOWN);
    }

    private final boolean reschedule(int i) {
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        this.workSpecDao.setStopReason(this.workSpecId, i);
        return true;
    }

    private final boolean resetPeriodic() {
        this.workSpecDao.setLastEnqueueTime(this.workSpecId, this.clock.currentTimeMillis());
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.resetWorkSpecRunAttemptCount(this.workSpecId);
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.incrementPeriodCount(this.workSpecId);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final boolean resetWorkerStatus(int i) {
        if (aa4.e(this.workSpec.getBackOffOnSystemInterruptions(), Boolean.TRUE)) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().debug(str, "Worker " + this.workSpec.workerClassName + " was interrupted. Backing off.");
            reschedule(i);
            return true;
        }
        WorkInfo.State state = this.workSpecDao.getState(this.workSpecId);
        if (state == null || state.isFinished()) {
            String str2 = WorkerWrapperKt.TAG;
            Logger.get().debug(str2, "Status for " + this.workSpecId + " is " + state + " ; not doing any work");
            return false;
        }
        String str3 = WorkerWrapperKt.TAG;
        Logger.get().debug(str3, "Status for " + this.workSpecId + " is " + state + "; not doing any work and rescheduling for later execution");
        this.workSpecDao.setState(WorkInfo.State.ENQUEUED, this.workSpecId);
        this.workSpecDao.setStopReason(this.workSpecId, i);
        this.workSpecDao.markWorkSpecScheduled(this.workSpecId, -1L);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:66:0x0201  */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    /* JADX WARN: Multi-variable type inference failed */
    public final Object runWorker(e02<? super Resolution> e02Var) {
        C07491 c07491;
        Data dataMerge;
        WorkerParameters workerParameters;
        Consumer<WorkerExceptionInfo> workerExecutionExceptionHandler;
        if (e02Var instanceof C07491) {
            c07491 = (C07491) e02Var;
            int i = c07491.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                c07491.label = i - Integer.MIN_VALUE;
            } else {
                c07491 = new C07491(e02Var);
            }
        } else {
            c07491 = new C07491(e02Var);
        }
        Object objD = c07491.result;
        a32 a32Var = a32.COROUTINE_SUSPENDED;
        int i2 = c07491.label;
        int i3 = 1;
        jh2 jh2Var = null;
        Object[] objArr = 0;
        Object[] objArr2 = 0;
        try {
            if (i2 == 0) {
                r57.b(objD);
                boolean zIsEnabled = this.configuration.getTracer().isEnabled();
                String traceTag = this.workSpec.getTraceTag();
                if (zIsEnabled && traceTag != null) {
                    this.configuration.getTracer().beginAsyncSection(traceTag, this.workSpec.hashCode());
                }
                int i4 = 0;
                if (((Boolean) this.workDatabase.runInTransaction(new Callable() { // from class: fl9
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return WorkerWrapper.runWorker$lambda$1(this.b);
                    }
                })).booleanValue()) {
                    return new Resolution.ResetWorkerStatus(i4, i3, jh2Var);
                }
                if (this.workSpec.isPeriodic()) {
                    dataMerge = this.workSpec.input;
                } else {
                    InputMerger inputMergerCreateInputMergerWithDefaultFallback = this.configuration.getInputMergerFactory().createInputMergerWithDefaultFallback(this.workSpec.inputMergerClassName);
                    if (inputMergerCreateInputMergerWithDefaultFallback == null) {
                        String str = WorkerWrapperKt.TAG;
                        Logger.get().error(str, "Could not create Input Merger " + this.workSpec.inputMergerClassName);
                        return new Resolution.Failed(objArr2 == true ? 1 : 0, i3, objArr == true ? 1 : 0);
                    }
                    dataMerge = inputMergerCreateInputMergerWithDefaultFallback.merge(qn1.h0(this.workSpecDao.getInputsFromPrerequisites(this.workSpecId), u96.h(this.workSpec.input)));
                }
                Data data = dataMerge;
                UUID uuidFromString = UUID.fromString(this.workSpecId);
                List<String> list = this.tags;
                WorkerParameters.RuntimeExtras runtimeExtras = this.runtimeExtras;
                WorkSpec workSpec = this.workSpec;
                WorkerParameters workerParameters2 = new WorkerParameters(uuidFromString, data, list, runtimeExtras, workSpec.runAttemptCount, workSpec.getGeneration(), this.configuration.getExecutor(), this.configuration.getWorkerCoroutineContext(), this.workTaskExecutor, this.configuration.getWorkerFactory(), new WorkProgressUpdater(this.workDatabase, this.workTaskExecutor), new WorkForegroundUpdater(this.workDatabase, this.foregroundProcessor, this.workTaskExecutor));
                ListenableWorker listenableWorkerCreateWorkerWithDefaultFallback = this.builderWorker;
                if (listenableWorkerCreateWorkerWithDefaultFallback == null) {
                    try {
                        listenableWorkerCreateWorkerWithDefaultFallback = this.configuration.getWorkerFactory().createWorkerWithDefaultFallback(this.appContext, this.workSpec.workerClassName, workerParameters2);
                    } catch (Throwable th) {
                        String str2 = WorkerWrapperKt.TAG;
                        Logger.get().error(str2, "Could not create Worker " + this.workSpec.workerClassName);
                        Consumer<WorkerExceptionInfo> workerInitializationExceptionHandler = this.configuration.getWorkerInitializationExceptionHandler();
                        if (workerInitializationExceptionHandler != null) {
                            WorkerExceptionUtilsKt.safeAccept(workerInitializationExceptionHandler, new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters2, th), WorkerWrapperKt.TAG);
                        }
                        return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                    }
                }
                listenableWorkerCreateWorkerWithDefaultFallback.setUsed();
                o22.a aVar = c07491.getContext().get(mb4.a.b);
                aVar.getClass();
                mb4 mb4Var = (mb4) aVar;
                mb4Var.g(new bm4(listenableWorkerCreateWorkerWithDefaultFallback, zIsEnabled, traceTag, this));
                if (!trySetRunning()) {
                    return new Resolution.ResetWorkerStatus(0, 1, null);
                }
                int i5 = 0;
                int i6 = 1;
                jh2 jh2Var2 = null;
                if (mb4Var.isCancelled()) {
                    return new Resolution.ResetWorkerStatus(i5, i6, jh2Var2);
                }
                ForegroundUpdater foregroundUpdater = workerParameters2.getForegroundUpdater();
                foregroundUpdater.getClass();
                Executor mainThreadExecutor = this.workTaskExecutor.getMainThreadExecutor();
                mainThreadExecutor.getClass();
                r22 r22VarX = aq5.x(mainThreadExecutor);
                try {
                    WorkerWrapper$runWorker$result$1 workerWrapper$runWorker$result$1 = new WorkerWrapper$runWorker$result$1(this, listenableWorkerCreateWorkerWithDefaultFallback, foregroundUpdater, null);
                    c07491.L$0 = workerParameters2;
                    c07491.label = 1;
                    objD = av0.d(r22VarX, workerWrapper$runWorker$result$1, c07491);
                    if (objD == a32Var) {
                        return a32Var;
                    }
                    workerParameters = workerParameters2;
                } catch (Throwable th2) {
                    th = th2;
                    workerParameters = workerParameters2;
                    Logger.get().error(WorkerWrapperKt.TAG, me0.d(new StringBuilder(), this.workDescription, " failed because it threw an exception/error"), th);
                    workerExecutionExceptionHandler = this.configuration.getWorkerExecutionExceptionHandler();
                    if (workerExecutionExceptionHandler != null) {
                        WorkerExceptionUtilsKt.safeAccept(workerExecutionExceptionHandler, new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters, th), WorkerWrapperKt.TAG);
                    }
                    return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                }
            } else {
                if (i2 != 1) {
                    ah.f("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
                workerParameters = (WorkerParameters) c07491.L$0;
                try {
                    r57.b(objD);
                } catch (Throwable th3) {
                    th = th3;
                    Logger.get().error(WorkerWrapperKt.TAG, me0.d(new StringBuilder(), this.workDescription, " failed because it threw an exception/error"), th);
                    workerExecutionExceptionHandler = this.configuration.getWorkerExecutionExceptionHandler();
                    if (workerExecutionExceptionHandler != null) {
                        WorkerExceptionUtilsKt.safeAccept(workerExecutionExceptionHandler, new WorkerExceptionInfo(this.workSpec.workerClassName, workerParameters, th), WorkerWrapperKt.TAG);
                    }
                    return new Resolution.Failed(null, 1, 0 == true ? 1 : 0);
                }
            }
            ListenableWorker.Result result = (ListenableWorker.Result) objD;
            result.getClass();
            return new Resolution.Finished(result);
        } catch (CancellationException e) {
            Logger.get().info(WorkerWrapperKt.TAG, me0.d(new StringBuilder(), this.workDescription, " was cancelled"), e);
            throw e;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean runWorker$lambda$1(WorkerWrapper workerWrapper) {
        WorkSpec workSpec = workerWrapper.workSpec;
        if (workSpec.state != WorkInfo.State.ENQUEUED) {
            String str = WorkerWrapperKt.TAG;
            Logger.get().debug(str, workerWrapper.workSpec.workerClassName + " is not in ENQUEUED state. Nothing more to do");
            return Boolean.TRUE;
        }
        if ((!workSpec.isPeriodic() && !workerWrapper.workSpec.isBackedOff()) || workerWrapper.clock.currentTimeMillis() >= workerWrapper.workSpec.calculateNextRunTime()) {
            return Boolean.FALSE;
        }
        Logger.get().debug(WorkerWrapperKt.TAG, "Delaying execution for " + workerWrapper.workSpec.workerClassName + " because it is being executed before schedule.");
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 runWorker$lambda$4(ListenableWorker listenableWorker, boolean z, String str, WorkerWrapper workerWrapper, Throwable th) {
        if (th instanceof WorkerStoppedException) {
            listenableWorker.stop(((WorkerStoppedException) th).getReason());
        }
        if (z && str != null) {
            workerWrapper.configuration.getTracer().endAsyncSection(str, workerWrapper.workSpec.hashCode());
        }
        return j59.a;
    }

    private final boolean setSucceeded(ListenableWorker.Result result) {
        this.workSpecDao.setState(WorkInfo.State.SUCCEEDED, this.workSpecId);
        result.getClass();
        Data outputData = ((ListenableWorker.Result.Success) result).getOutputData();
        outputData.getClass();
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        long jCurrentTimeMillis = this.clock.currentTimeMillis();
        for (String str : this.dependencyDao.getDependentWorkIds(this.workSpecId)) {
            if (this.workSpecDao.getState(str) == WorkInfo.State.BLOCKED && this.dependencyDao.hasCompletedAllPrerequisites(str)) {
                String str2 = WorkerWrapperKt.TAG;
                Logger.get().info(str2, "Setting status to enqueued for " + str);
                this.workSpecDao.setState(WorkInfo.State.ENQUEUED, str);
                this.workSpecDao.setLastEnqueueTime(str, jCurrentTimeMillis);
            }
        }
        return false;
    }

    private final boolean trySetRunning() {
        Object objRunInTransaction = this.workDatabase.runInTransaction((Callable<Object>) new Callable() { // from class: gl9
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return WorkerWrapper.trySetRunning$lambda$14(this.b);
            }
        });
        objRunInTransaction.getClass();
        return ((Boolean) objRunInTransaction).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Boolean trySetRunning$lambda$14(WorkerWrapper workerWrapper) {
        boolean z;
        if (workerWrapper.workSpecDao.getState(workerWrapper.workSpecId) == WorkInfo.State.ENQUEUED) {
            workerWrapper.workSpecDao.setState(WorkInfo.State.RUNNING, workerWrapper.workSpecId);
            workerWrapper.workSpecDao.incrementWorkSpecRunAttemptCount(workerWrapper.workSpecId);
            workerWrapper.workSpecDao.setStopReason(workerWrapper.workSpecId, -256);
            z = true;
        } else {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public final WorkGenerationalId getWorkGenerationalId() {
        return WorkSpecKt.generationalId(this.workSpec);
    }

    public final WorkSpec getWorkSpec() {
        return this.workSpec;
    }

    public final void interrupt(int i) {
        this.workerJob.cancel(new WorkerStoppedException(i));
    }

    public final ListenableFuture<Boolean> launch() {
        return ListenableFutureKt.launchFuture$default(this.workTaskExecutor.getTaskCoroutineDispatcher().plus(qb4.a()), null, new AnonymousClass1(null), 2, null);
    }

    public final boolean setFailed(ListenableWorker.Result result) {
        result.getClass();
        iterativelyFailWorkAndDependents(this.workSpecId);
        Data outputData = ((ListenableWorker.Result.Failure) result).getOutputData();
        outputData.getClass();
        this.workSpecDao.resetWorkSpecNextScheduleTimeOverride(this.workSpecId, this.workSpec.getNextScheduleTimeOverrideGeneration());
        this.workSpecDao.setOutput(this.workSpecId, outputData);
        return false;
    }

    public static abstract class Resolution {

        public static final class Finished extends Resolution {
            private final ListenableWorker.Result result;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Finished(ListenableWorker.Result result) {
                super(null);
                result.getClass();
                this.result = result;
            }

            public final ListenableWorker.Result getResult() {
                return this.result;
            }
        }

        public /* synthetic */ Resolution(jh2 jh2Var) {
            this();
        }

        private Resolution() {
        }

        public static final class ResetWorkerStatus extends Resolution {
            private final int reason;

            public /* synthetic */ ResetWorkerStatus(int i, int i2, jh2 jh2Var) {
                this((i2 & 1) != 0 ? -256 : i);
            }

            public final int getReason() {
                return this.reason;
            }

            public ResetWorkerStatus(int i) {
                super(null);
                this.reason = i;
            }

            public ResetWorkerStatus() {
                this(0, 1, null);
            }
        }

        public static final class Failed extends Resolution {
            private final ListenableWorker.Result result;

            public /* synthetic */ Failed(ListenableWorker.Result result, int i, jh2 jh2Var) {
                this((i & 1) != 0 ? new ListenableWorker.Result.Failure() : result);
            }

            public final ListenableWorker.Result getResult() {
                return this.result;
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Failed(ListenableWorker.Result result) {
                super(null);
                result.getClass();
                this.result = result;
            }

            /* JADX WARN: Multi-variable type inference failed */
            public Failed() {
                this(null, 1, 0 == true ? 1 : 0);
            }
        }
    }
}
