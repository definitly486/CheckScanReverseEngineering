package defpackage;

import com.google.android.gms.auth.api.proxy.AuthApiStatusCodes;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.auth.zzbd;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class qxa extends zzbd {
    public final /* synthetic */ TaskCompletionSource a;

    public qxa(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.auth.zzbd, com.google.android.gms.internal.auth.zzbg
    public final void zzc(String str) {
        TaskUtil.setResultOrApiException(str != null ? Status.RESULT_SUCCESS : new Status(AuthApiStatusCodes.AUTH_APP_CERT_ERROR), str, (TaskCompletionSource<String>) this.a);
    }
}
