package androidx.work.impl.utils;

import androidx.work.ListenableFutureKt;
import androidx.work.WorkInfo;
import androidx.work.WorkQuery;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.model.WorkSpecDao;
import androidx.work.impl.utils.taskexecutor.SerialExecutor;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;
import com.google.common.util.concurrent.ListenableFuture;
import defpackage.ff6;
import defpackage.gf6;
import defpackage.ll3;
import defpackage.nl3;
import defpackage.p88;
import defpackage.vf3;
import defpackage.x12;
import java.util.List;
import java.util.UUID;

/* JADX INFO: loaded from: classes3.dex */
public final class StatusRunnable {
    public static final ListenableFuture<List<WorkInfo>> forStringIds(WorkDatabase workDatabase, TaskExecutor taskExecutor, List<String> list) {
        workDatabase.getClass();
        taskExecutor.getClass();
        list.getClass();
        return loadStatusFuture(workDatabase, taskExecutor, new vf3(list, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forStringIds$lambda$0(List list, WorkDatabase workDatabase) {
        workDatabase.getClass();
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForIds(list));
        listApply.getClass();
        return listApply;
    }

    public static final ListenableFuture<List<WorkInfo>> forTag(WorkDatabase workDatabase, TaskExecutor taskExecutor, String str) {
        workDatabase.getClass();
        taskExecutor.getClass();
        str.getClass();
        return loadStatusFuture(workDatabase, taskExecutor, new ff6(str, 1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forTag$lambda$2(String str, WorkDatabase workDatabase) {
        workDatabase.getClass();
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForTag(str));
        listApply.getClass();
        return listApply;
    }

    public static final ListenableFuture<WorkInfo> forUUID(WorkDatabase workDatabase, TaskExecutor taskExecutor, UUID uuid) {
        workDatabase.getClass();
        taskExecutor.getClass();
        uuid.getClass();
        return loadStatusFuture(workDatabase, taskExecutor, new x12(uuid, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final WorkInfo forUUID$lambda$1(UUID uuid, WorkDatabase workDatabase) {
        workDatabase.getClass();
        WorkSpecDao workSpecDao = workDatabase.workSpecDao();
        String string = uuid.toString();
        string.getClass();
        WorkSpec.WorkInfoPojo workStatusPojoForId = workSpecDao.getWorkStatusPojoForId(string);
        if (workStatusPojoForId != null) {
            return workStatusPojoForId.toWorkInfo();
        }
        return null;
    }

    public static final ListenableFuture<List<WorkInfo>> forUniqueWork(WorkDatabase workDatabase, TaskExecutor taskExecutor, String str) {
        workDatabase.getClass();
        taskExecutor.getClass();
        str.getClass();
        return loadStatusFuture(workDatabase, taskExecutor, new p88(str, 0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forUniqueWork$lambda$3(String str, WorkDatabase workDatabase) {
        workDatabase.getClass();
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.workSpecDao().getWorkStatusPojoForName(str));
        listApply.getClass();
        return listApply;
    }

    public static final ListenableFuture<List<WorkInfo>> forWorkQuerySpec(WorkDatabase workDatabase, TaskExecutor taskExecutor, WorkQuery workQuery) {
        workDatabase.getClass();
        taskExecutor.getClass();
        workQuery.getClass();
        return loadStatusFuture(workDatabase, taskExecutor, new gf6(workQuery, 2));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final List forWorkQuerySpec$lambda$4(WorkQuery workQuery, WorkDatabase workDatabase) {
        workDatabase.getClass();
        List<WorkInfo> listApply = WorkSpec.WORK_INFO_MAPPER.apply(workDatabase.rawWorkInfoDao().getWorkInfoPojos(RawQueries.toRawQuery(workQuery)));
        listApply.getClass();
        return listApply;
    }

    private static final <T> ListenableFuture<T> loadStatusFuture(final WorkDatabase workDatabase, TaskExecutor taskExecutor, final nl3<? super WorkDatabase, ? extends T> nl3Var) {
        SerialExecutor serialTaskExecutor = taskExecutor.getSerialTaskExecutor();
        serialTaskExecutor.getClass();
        return ListenableFutureKt.executeAsync(serialTaskExecutor, "loadStatusFuture", new ll3() { // from class: o88
            @Override // defpackage.ll3
            public final Object invoke() {
                return nl3Var.invoke(workDatabase);
            }
        });
    }
}
