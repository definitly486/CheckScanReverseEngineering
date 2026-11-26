package androidx.work.impl.utils.taskexecutor;

import defpackage.aq5;
import defpackage.r22;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes3.dex */
public interface TaskExecutor {
    default void executeOnTaskThread(Runnable runnable) {
        getSerialTaskExecutor().execute(runnable);
    }

    Executor getMainThreadExecutor();

    SerialExecutor getSerialTaskExecutor();

    default r22 getTaskCoroutineDispatcher() {
        return aq5.x(getSerialTaskExecutor());
    }
}
