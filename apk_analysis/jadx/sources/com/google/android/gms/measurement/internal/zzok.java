package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.job.JobInfo;
import android.app.job.JobScheduler;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.PersistableBundle;
import androidx.core.app.NotificationCompat;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzce;
import com.google.android.gms.internal.measurement.zzcf;
import defpackage.lac;
import defpackage.u9c;

/* JADX INFO: loaded from: classes4.dex */
public final class zzok extends lac {
    public final AlarmManager d;
    public u9c e;
    public Integer f;

    public zzok(zzpg zzpgVar) {
        super(zzpgVar);
        this.d = (AlarmManager) this.a.zzaZ().getSystemService(NotificationCompat.CATEGORY_ALARM);
    }

    @Override // defpackage.lac
    public final void b() {
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context contextZzaZ = this.a.zzaZ();
            alarmManager.cancel(zzce.zza(contextZzaZ, 0, new Intent().setClassName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), zzce.zza));
        }
        c();
    }

    public final void c() {
        JobScheduler jobScheduler = (JobScheduler) this.a.zzaZ().getSystemService("jobscheduler");
        if (jobScheduler != null) {
            jobScheduler.cancel(d());
        }
    }

    public final int d() {
        Integer numValueOf = this.f;
        if (numValueOf == null) {
            numValueOf = Integer.valueOf("measurement".concat(String.valueOf(this.a.zzaZ().getPackageName())).hashCode());
            this.f = numValueOf;
        }
        return numValueOf.intValue();
    }

    public final void zzd(long j) {
        ServiceInfo serviceInfo;
        a();
        zzic zzicVar = this.a;
        zzicVar.zzaV();
        Context contextZzaZ = zzicVar.zzaZ();
        if (!zzpp.H(contextZzaZ)) {
            zzicVar.zzaW().zzj().zza("Receiver not registered/enabled");
        }
        Preconditions.checkNotNull(contextZzaZ);
        try {
            PackageManager packageManager = contextZzaZ.getPackageManager();
            if (packageManager == null || (serviceInfo = packageManager.getServiceInfo(new ComponentName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementJobService"), 0)) == null || !serviceInfo.enabled) {
                zzicVar.zzaW().zzj().zza("Service not registered/enabled");
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        zzf();
        zzicVar.zzaW().zzk().zzb("Scheduling upload, millis", Long.valueOf(j));
        zzicVar.zzba().elapsedRealtime();
        zzicVar.zzc();
        if (j < Math.max(0L, ((Long) zzfy.zzL.zzb(null)).longValue())) {
            u9c u9cVar = this.e;
            if (u9cVar == null) {
                u9c u9cVar2 = new u9c(this, this.b.l);
                this.e = u9cVar2;
                u9cVar = u9cVar2;
            }
            if (u9cVar.c == 0) {
                u9c u9cVar3 = this.e;
                if (u9cVar3 == null) {
                    u9c u9cVar4 = new u9c(this, this.b.l);
                    this.e = u9cVar4;
                    u9cVar3 = u9cVar4;
                }
                u9cVar3.b(j);
            }
        }
        zzicVar.zzaV();
        Context contextZzaZ2 = zzicVar.zzaZ();
        ComponentName componentName = new ComponentName(contextZzaZ2, "com.google.android.gms.measurement.AppMeasurementJobService");
        int iD = d();
        PersistableBundle persistableBundle = new PersistableBundle();
        persistableBundle.putString("action", "com.google.android.gms.measurement.UPLOAD");
        zzcf.zza(contextZzaZ2, new JobInfo.Builder(iD, componentName).setMinimumLatency(j).setOverrideDeadline(j + j).setExtras(persistableBundle).build(), "com.google.android.gms", "UploadAlarm");
    }

    public final void zzf() {
        a();
        zzic zzicVar = this.a;
        zzicVar.zzaW().zzk().zza("Unscheduling upload");
        AlarmManager alarmManager = this.d;
        if (alarmManager != null) {
            Context contextZzaZ = zzicVar.zzaZ();
            alarmManager.cancel(zzce.zza(contextZzaZ, 0, new Intent().setClassName(contextZzaZ, "com.google.android.gms.measurement.AppMeasurementReceiver").setAction("com.google.android.gms.measurement.UPLOAD"), zzce.zza));
        }
        u9c u9cVar = this.e;
        if (u9cVar == null) {
            u9cVar = new u9c(this, this.b.l);
            this.e = u9cVar;
        }
        u9cVar.c();
        c();
    }
}
