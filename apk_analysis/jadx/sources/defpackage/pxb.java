package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.measurement.zzadf;
import com.google.android.gms.internal.measurement.zzaeh;
import com.google.android.gms.internal.measurement.zzkk;
import com.google.android.gms.internal.measurement.zzkp;
import com.google.android.gms.internal.measurement.zzno;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class pxb extends zzkp {
    public final /* synthetic */ TaskCompletionSource a;

    public pxb(zzkk zzkkVar, TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final void zzb(Status status, byte[] bArr) {
        boolean zIsSuccess = status.isSuccess();
        TaskCompletionSource taskCompletionSource = this.a;
        if (!zIsSuccess) {
            TaskUtil.setResultOrApiException(status, (Object) null, (TaskCompletionSource<Object>) taskCompletionSource);
            return;
        }
        try {
            TaskUtil.setResultOrApiException(status, zzno.zzc(bArr, zzadf.zza()), (TaskCompletionSource<zzno>) taskCompletionSource);
        } catch (zzaeh e) {
            taskCompletionSource.setException(e);
        }
    }
}
