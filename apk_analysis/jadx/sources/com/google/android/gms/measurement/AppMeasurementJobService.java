package com.google.android.gms.measurement;

import android.app.job.JobParameters;
import android.app.job.JobService;
import android.content.Intent;
import com.google.android.gms.measurement.internal.zznp;
import com.google.android.gms.measurement.internal.zznt;

/* JADX INFO: loaded from: classes4.dex */
public final class AppMeasurementJobService extends JobService implements zznp {
    public zznt b;

    public final zznt a() {
        zznt zzntVar = this.b;
        if (zzntVar != null) {
            return zzntVar;
        }
        zznt zzntVar2 = new zznt(this);
        this.b = zzntVar2;
        return zzntVar2;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        a().zza();
    }

    @Override // android.app.Service
    public void onDestroy() {
        a().zzb();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        a();
        zznt.zzi(intent);
    }

    @Override // android.app.job.JobService
    public boolean onStartJob(JobParameters jobParameters) {
        a().zze(jobParameters);
        return true;
    }

    @Override // android.app.job.JobService
    public boolean onStopJob(JobParameters jobParameters) {
        return false;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        a();
        zznt.zzj(intent);
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.zznp
    public final boolean zza(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.measurement.internal.zznp
    public final void zzb(JobParameters jobParameters, boolean z) {
        jobFinished(jobParameters, false);
    }

    @Override // com.google.android.gms.measurement.internal.zznp
    public final void zzc(Intent intent) {
    }
}
