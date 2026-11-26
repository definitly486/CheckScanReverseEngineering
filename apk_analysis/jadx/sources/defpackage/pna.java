package defpackage;

import com.google.android.gms.auth.api.identity.AuthorizationResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.internal.p000authapi.zbad;
import com.google.android.gms.internal.p000authapi.zbh;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class pna extends zbh {
    public final /* synthetic */ TaskCompletionSource a;

    public pna(zbad zbadVar, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p000authapi.zbi
    public final void zbb(Status status, AuthorizationResult authorizationResult) {
        boolean zIsSuccess = status.isSuccess();
        TaskCompletionSource taskCompletionSource = this.a;
        if (zIsSuccess) {
            taskCompletionSource.setResult(authorizationResult);
        } else {
            taskCompletionSource.setException(ApiExceptionUtil.fromStatus(status));
        }
    }
}
