package androidx.work.impl.utils;

import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.WorkInfo;
import androidx.work.impl.Processor;
import androidx.work.impl.Scheduler;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.DependencyDao;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.CancelWorkRunnable;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import defpackage.j59;
import defpackage.ll3;
import defpackage.nn1;
import defpackage.r21;
import defpackage.u96;
import defpackage.w21;
import defpackage.x21;
import defpackage.y21;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class CancelWorkRunnable {
    private static final void cancel(WorkManagerImpl workManagerImpl, String str) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.getClass();
        iterativelyCancelWorkAndDependents(workDatabase, str);
        Processor processor = workManagerImpl.getProcessor();
        processor.getClass();
        processor.stopAndCancelWork(str, 1);
        Iterator<Scheduler> it = workManagerImpl.getSchedulers().iterator();
        while (it.hasNext()) {
            it.next().cancel(str);
        }
    }

    public static final Operation forAll(WorkManagerImpl workManagerImpl) {
        workManagerImpl.getClass();
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return OperationKt.launchOperation(tracer, "CancelAllWork", serialTaskExecutor, new w21(workManagerImpl, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 forAll$lambda$7(WorkManagerImpl workManagerImpl) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.getClass();
        workDatabase.runInTransaction(new y21(0, workDatabase, workManagerImpl));
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forAll$lambda$7$lambda$6(WorkDatabase workDatabase, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getAllUnfinishedWork().iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, it.next());
        }
        new PreferenceUtils(workDatabase).setLastCancelAllTimeMillis(workManagerImpl.getConfiguration().getClock().currentTimeMillis());
    }

    public static final Operation forId(UUID uuid, WorkManagerImpl workManagerImpl) {
        uuid.getClass();
        workManagerImpl.getClass();
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return OperationKt.launchOperation(tracer, "CancelWorkById", serialTaskExecutor, new x21(0, workManagerImpl, uuid));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 forId$lambda$1(final WorkManagerImpl workManagerImpl, final UUID uuid) {
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.getClass();
        workDatabase.runInTransaction(new Runnable() { // from class: v21
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forId$lambda$1$lambda$0(workManagerImpl, uuid);
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forId$lambda$1$lambda$0(WorkManagerImpl workManagerImpl, UUID uuid) {
        String string = uuid.toString();
        string.getClass();
        cancel(workManagerImpl, string);
    }

    public static final Operation forName(final String str, final WorkManagerImpl workManagerImpl) {
        str.getClass();
        workManagerImpl.getClass();
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String strConcat = "CancelWorkByName_".concat(str);
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return OperationKt.launchOperation(tracer, strConcat, serialTaskExecutor, new ll3() { // from class: u21
            @Override // defpackage.ll3
            public final Object invoke() {
                return CancelWorkRunnable.forName$lambda$4(str, workManagerImpl);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 forName$lambda$4(String str, WorkManagerImpl workManagerImpl) {
        forNameInline(str, workManagerImpl);
        reschedulePendingWorkers(workManagerImpl);
        return j59.a;
    }

    public static final void forNameInline(String str, WorkManagerImpl workManagerImpl) {
        str.getClass();
        workManagerImpl.getClass();
        WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.getClass();
        workDatabase.runInTransaction(new r21(workDatabase, str, workManagerImpl, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forNameInline$lambda$5(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getUnfinishedWorkWithName(str).iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, it.next());
        }
    }

    public static final Operation forTag(final String str, final WorkManagerImpl workManagerImpl) {
        str.getClass();
        workManagerImpl.getClass();
        Tracer tracer = workManagerImpl.getConfiguration().getTracer();
        String strConcat = "CancelWorkByTag_".concat(str);
        SerialExecutor serialTaskExecutor = workManagerImpl.getWorkTaskExecutor().getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return OperationKt.launchOperation(tracer, strConcat, serialTaskExecutor, new ll3() { // from class: t21
            @Override // defpackage.ll3
            public final Object invoke() {
                return CancelWorkRunnable.forTag$lambda$3(workManagerImpl, str);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 forTag$lambda$3(final WorkManagerImpl workManagerImpl, final String str) {
        final WorkDatabase workDatabase = workManagerImpl.getWorkDatabase();
        workDatabase.getClass();
        workDatabase.runInTransaction(new Runnable() { // from class: s21
            @Override // java.lang.Runnable
            public final void run() {
                CancelWorkRunnable.forTag$lambda$3$lambda$2(workDatabase, str, workManagerImpl);
            }
        });
        reschedulePendingWorkers(workManagerImpl);
        return j59.a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void forTag$lambda$3$lambda$2(WorkDatabase workDatabase, String str, WorkManagerImpl workManagerImpl) {
        Iterator<String> it = workDatabase.workSpecDao().getUnfinishedWorkWithTag(str).iterator();
        while (it.hasNext()) {
            cancel(workManagerImpl, it.next());
        }
    }

    private static final void iterativelyCancelWorkAndDependents(WorkDatabase workDatabase, String str) {
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        DependencyDao dependencyDao = workDatabase.dependencyDao();
        ArrayList arrayListK = u96.k(str);
        while (!arrayListK.isEmpty()) {
            String str2 = (String) nn1.E(arrayListK);
            WorkInfo.State state = workSpecDao.getState(str2);
            if (state != WorkInfo.State.SUCCEEDED && state != WorkInfo.State.FAILED) {
                workSpecDao.setCancelledState(str2);
            }
            arrayListK.addAll(dependencyDao.getDependentWorkIds(str2));
        }
    }

    private static final void reschedulePendingWorkers(WorkManagerImpl workManagerImpl) {
        Schedulers.schedule(workManagerImpl.getConfiguration(), workManagerImpl.getWorkDatabase(), workManagerImpl.getSchedulers());
    }
}
