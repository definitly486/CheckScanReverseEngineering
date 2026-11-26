package androidx.work.impl.utils;

import androidx.work.Configuration;
import androidx.work.Operation;
import androidx.work.OperationKt;
import androidx.work.Tracer;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import defpackage.j59;
import defpackage.nf0;

/* JADX INFO: loaded from: classes3.dex */
public final class PruneWorkRunnableKt {
    public static final Operation pruneWork(WorkDatabase workDatabase, Configuration configuration, TaskExecutor taskExecutor) {
        workDatabase.getClass();
        configuration.getClass();
        taskExecutor.getClass();
        Tracer tracer = configuration.getTracer();
        SerialExecutor serialTaskExecutor = taskExecutor.getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return OperationKt.launchOperation(tracer, "PruneWork", serialTaskExecutor, new nf0(workDatabase, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final j59 pruneWork$lambda$0(WorkDatabase workDatabase) {
        workDatabase.workSpecDao().pruneFinishedWorkWithZeroDependentsIgnoringKeepForAtLeast();
        return j59.a;
    }
}
