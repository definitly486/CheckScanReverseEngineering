package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.p001authapiphone.zzam;
import com.google.android.gms.internal.p001authapiphone.zzl;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class nta extends zzl {
    public final /* synthetic */ TaskCompletionSource a;

    public nta(zzam zzamVar, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.p001authapiphone.zzm
    public final void zzb(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }
}
