package defpackage;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.internal.measurement.zzjh;
import com.google.android.gms.internal.measurement.zzjj;
import com.google.android.gms.internal.measurement.zzjl;
import com.google.android.gms.internal.measurement.zzjo;
import com.google.android.gms.internal.measurement.zzjs;
import com.google.android.gms.internal.measurement.zzkr;
import com.google.android.gms.tasks.TaskCompletionSource;

/* JADX INFO: loaded from: classes4.dex */
public final class pzb extends zzkr {
    public final TaskCompletionSource a;

    public /* synthetic */ pzb(TaskCompletionSource taskCompletionSource) {
        this.a = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzb(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzc(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzd(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zze(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzf(Status status, zzjh zzjhVar) {
        TaskUtil.setResultOrApiException(status, zzjhVar, (TaskCompletionSource<zzjh>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzg(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzh(Status status, zzjl zzjlVar) {
        TaskUtil.setResultOrApiException(status, zzjlVar, (TaskCompletionSource<zzjl>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzi(Status status, zzjj zzjjVar) {
        TaskUtil.setResultOrApiException(status, zzjjVar, (TaskCompletionSource<zzjj>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzj(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzk(Status status, zzjo zzjoVar) {
        TaskUtil.setResultOrApiException(status, zzjoVar, (TaskCompletionSource<zzjo>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzl(Status status, zzjh zzjhVar) {
        TaskUtil.setResultOrApiException(status, zzjhVar, (TaskCompletionSource<zzjh>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzm(Status status, long j) {
        TaskUtil.setResultOrApiException(status, (Object) null, (TaskCompletionSource<Object>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzn(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzo(Status status, zzjs zzjsVar) {
        TaskUtil.setResultOrApiException(status, zzjsVar, (TaskCompletionSource<zzjs>) this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzp(Status status) {
        TaskUtil.setResultOrApiException(status, this.a);
    }

    @Override // com.google.android.gms.internal.measurement.zzks
    public final void zzq(Status status, long j) {
        TaskUtil.setResultOrApiException(status, Long.valueOf(j), (TaskCompletionSource<Long>) this.a);
    }
}
