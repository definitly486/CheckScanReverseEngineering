package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import defpackage.bt7;

/* JADX INFO: loaded from: classes4.dex */
public class TaskUtil {
    public static <ResultT> void setResultOrApiException(Status status, ResultT resultt, TaskCompletionSource<ResultT> taskCompletionSource) {
        if (status.isSuccess()) {
            taskCompletionSource.setResult(resultt);
        } else {
            taskCompletionSource.setException(ApiExceptionUtil.fromStatus(status));
        }
    }

    @Deprecated
    public static Task<Void> toVoidTaskThatFailsOnFalse(Task<Boolean> task) {
        return task.continueWith(new bt7());
    }

    public static <ResultT> boolean trySetResultOrApiException(Status status, ResultT resultt, TaskCompletionSource<ResultT> taskCompletionSource) {
        return status.isSuccess() ? taskCompletionSource.trySetResult(resultt) : taskCompletionSource.trySetException(ApiExceptionUtil.fromStatus(status));
    }

    public static void setResultOrApiException(Status status, TaskCompletionSource<Void> taskCompletionSource, ApiMetadata apiMetadata) {
        if (apiMetadata != null) {
            com.google.android.gms.internal.base.zak.zaa();
        }
        setResultOrApiException(status, taskCompletionSource);
    }

    public static void setResultOrApiException(Status status, TaskCompletionSource<Void> taskCompletionSource) {
        setResultOrApiException(status, (Object) null, taskCompletionSource);
    }

    public static <ResultT> boolean trySetResultOrApiException(Status status, ResultT resultt, TaskCompletionSource<ResultT> taskCompletionSource, ApiMetadata apiMetadata) {
        if (apiMetadata != null) {
            com.google.android.gms.internal.base.zak.zaa();
        }
        return trySetResultOrApiException(status, resultt, taskCompletionSource);
    }

    public static <ResultT> void setResultOrApiException(Status status, ResultT resultt, TaskCompletionSource<ResultT> taskCompletionSource, ApiMetadata apiMetadata) {
        if (apiMetadata != null) {
            com.google.android.gms.internal.base.zak.zaa();
        }
        setResultOrApiException(status, resultt, taskCompletionSource);
    }
}
