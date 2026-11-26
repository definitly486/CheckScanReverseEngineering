package defpackage;

import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.location.zzk;
import com.google.android.gms.internal.location.zzp;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class r3b extends zzp {
    public final /* synthetic */ TaskCompletionSource a;
    public final /* synthetic */ i7b b;

    public r3b(TaskCompletionSource taskCompletionSource, i7b i7bVar) {
        this.a = taskCompletionSource;
        this.b = i7bVar;
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zzd(zzk zzkVar, ApiMetadata apiMetadata) {
        TaskUtil.setResultOrApiException(zzkVar.getStatus(), (TaskCompletionSource<Void>) this.a, apiMetadata);
    }

    @Override // com.google.android.gms.internal.location.zzq
    public final void zze(ApiMetadata apiMetadata) {
        this.b.zzf();
    }
}
