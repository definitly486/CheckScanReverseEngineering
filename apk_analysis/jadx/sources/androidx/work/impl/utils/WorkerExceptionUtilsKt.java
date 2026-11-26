package androidx.work.impl.utils;

import androidx.core.util.Consumer;
import androidx.work.Logger;
import androidx.work.WorkerExceptionInfo;

/* JADX INFO: loaded from: classes3.dex */
public final class WorkerExceptionUtilsKt {
    public static final void safeAccept(Consumer<WorkerExceptionInfo> consumer, WorkerExceptionInfo workerExceptionInfo, String str) {
        consumer.getClass();
        workerExceptionInfo.getClass();
        str.getClass();
        try {
            consumer.accept(workerExceptionInfo);
        } catch (Throwable th) {
            Logger.get().error(str, "Exception handler threw an exception", th);
        }
    }
}
