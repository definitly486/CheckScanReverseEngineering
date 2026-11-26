package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzk;
import com.google.android.gms.internal.location.zzp;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class m5b extends zzp {
    public final /* synthetic */ Object a;
    public final /* synthetic */ TaskCompletionSource b;

    public m5b(Boolean bool, TaskCompletionSource taskCompletionSource) {
        this.a = bool;
        this.b = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zzd(zzk zzkVar, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(zzkVar.getStatus(), this.a, this.b, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zze(ApiMetadata apiMetadata) {
    }
}
