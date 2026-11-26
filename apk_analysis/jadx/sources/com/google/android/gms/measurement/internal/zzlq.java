package com.google.android.gms.measurement.internal;

import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.PersistableBundle;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzin;
import defpackage.qhb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzlq extends qhb {
    public JobScheduler c;

    public zzlq(zzic zzicVar) {
        super(zzicVar);
    }

    public final zzin b() {
        ServiceInfo serviceInfo;
        a();
        zzg();
        if (this.c == null) {
            return zzin.MISSING_JOB_SCHEDULER;
        }
        zzic zzicVar = this.a;
        if (!zzicVar.zzc().zzx()) {
            return zzin.NOT_ENABLED_IN_MANIFEST;
        }
        if (zzicVar.zzv().j < 119000) {
            return zzin.SDK_TOO_OLD;
        }
        Context contextZzaZ = zzicVar.zzaZ();
        try {
            PackageManager packageManager = contextZzaZ.getPackageManager();
            if (packageManager != null && (serviceInfo = packageManager.getServiceInfo(new ComponentName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) != null && serviceInfo.enabled) {
                return !zzicVar.zzt().c() ? zzin.NON_PLAY_MODE : zzin.CLIENT_UPLOAD_ELIGIBLE;
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return zzin.MEASUREMENT_SERVICE_NOT_ENABLED;
    }

    @Override // defpackage.qhb
    public final boolean zze() {
        return true;
    }

    @Override // defpackage.qhb
    public final void zzf() {
        this.c = (JobScheduler) this.a.zzaZ().getSystemService("jobscheduler");
    }

    public final void zzh(long j) {
        a();
        zzg();
        JobScheduler jobScheduler = this.c;
        zzic zzicVar = this.a;
        if (jobScheduler != null && jobScheduler.getPendingJob("measurement-client".concat(String.valueOf(zzicVar.zzaZ().getPackageName())).hashCode()) != null) {
            zzicVar.zzaW().zzk().zza("[sgtm] There's an existing pending job, skip this schedule.");
            return;
        }
        zzin zzinVarB = b();
        if (zzinVarB != zzin.CLIENT_UPLOAD_ELIGIBLE) {
            zzicVar.zzaW().zzk().zzb("[sgtm] Not eligible for Scion upload", zzinVarB.name());
            return;
        }
        zzicVar.zzaW().zzk().zzb("[sgtm] Scheduling Scion upload, millis", Long.valueOf(j));
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.SCION_UPLOAD");
        zzicVar.zzaW().zzk().zzb("[sgtm] Scion upload job scheduled with result", ((JobScheduler) Preconditions.checkNotNull(this.c)).schedule(new JobInfo.Builder("measurement-client".concat(String.valueOf(zzicVar.zzaZ().getPackageName())).hashCode(), new ComponentName(zzicVar.zzaZ(), "com.google.android.gms.measurement.AppMeasurementJobService")).setRequiredNetworkType(1).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build()) == 1 ? "SUCCESS" : "FAILURE");
    }
}
