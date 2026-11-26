package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.IStatusCallback;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class q4b extends IStatusCallback.Stub {
    public final /* synthetic */ Object a;
    public final /* synthetic */ TaskCompletionSource b;

    public q4b(Boolean bool, TaskCompletionSource taskCompletionSource) {
        this.a = bool;
        this.b = taskCompletionSource;
    }

    @Override // com.google.android.gms.common.api.internal.IStatusCallback
    public final void onResult(Status status) {
        TaskUtil.setResultOrApiException(status, this.a, (TaskCompletionSource<Object>) this.b);
    }
}
