package com.google.android.gms.measurement.internal;

import android.app.job.JobParameters;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.measurement.zzez;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zznp;
import defpackage.s7c;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zznt {
    public final Context a;

    public zznt(Context context) {
        Preconditions.checkNotNull(context);
        this.a = context;
    }

    public static final void zzi(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onRebind called with null intent");
        } else {
            Log.v("FA", "onRebind called. action: ".concat(String.valueOf(intent.getAction())));
        }
    }

    public static final boolean zzj(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onUnbind called with null intent");
            return true;
        }
        Log.v("FA", "onUnbind called for intent. action: ".concat(String.valueOf(intent.getAction())));
        return true;
    }

    public final void zza() {
        Log.v("FA", this.a.getClass().getSimpleName().concat(" is starting up."));
    }

    public final void zzb() {
        Log.v("FA", this.a.getClass().getSimpleName().concat(" is shutting down."));
    }

    public final int zzc(final Intent intent, int i, final int i2) {
        if (intent == null) {
            Log.w("FA", "AppMeasurementService started with null intent");
            return 2;
        }
        Context context = this.a;
        zzic zzicVarZzy = zzic.zzy(context, null, null, null);
        final zzgu zzguVarZzaW = zzicVarZzy.zzaW();
        String action = intent.getAction();
        zzicVarZzy.zzaV();
        zzguVarZzaW.zzk().zzc("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
        if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
            Runnable runnable = new Runnable() { // from class: b8c
                /* JADX WARN: Multi-variable type inference failed */
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    Context context2 = this.b.a;
                    zznp zznpVar = (zznp) context2;
                    int i3 = i2;
                    if (zznpVar.zza(i3)) {
                        zzguVarZzaW.zzk().zzb("Local AppMeasurementService processed last upload request. StartId", Integer.valueOf(i3));
                        zzic.zzy(context2, null, null, null).zzaW().zzk().zza("Completed wakeful intent.");
                        zznpVar.zzc(intent);
                    }
                }
            };
            zzpg zzpgVarZza = zzpg.zza(context);
            zzpgVarZza.zzaX().zzj(new s7c(this, zzpgVarZza, runnable));
        }
        return 2;
    }

    public final IBinder zzd(Intent intent) {
        if (intent == null) {
            Log.e("FA", "onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzjd(zzpg.zza(this.a), null);
        }
        Log.w("FA", "onBind received unknown action: ".concat(String.valueOf(action)));
        return null;
    }

    public final boolean zze(final JobParameters jobParameters) {
        String string = jobParameters.getExtras().getString("action");
        Log.v("FA", "onStartJob received action: ".concat(String.valueOf(string)));
        boolean zEquals = Objects.equals(string, "com.google.android.gms.measurement.UPLOAD");
        Context context = this.a;
        if (zEquals) {
            String str = (String) Preconditions.checkNotNull(string);
            zzpg zzpgVarZza = zzpg.zza(context);
            final zzgu zzguVarZzaW = zzpgVarZza.zzaW();
            zzpgVarZza.zzaV();
            zzguVarZzaW.zzk().zzb("Local AppMeasurementJobService called. action", str);
            zzpgVarZza.zzaX().zzj(new s7c(this, zzpgVarZza, new Runnable() { // from class: w7c
                @Override // java.lang.Runnable
                public final /* synthetic */ void run() {
                    zzguVarZzaW.zzk().zza("AppMeasurementJobService processed last upload request.");
                    ((zznp) this.b.a).zzb(jobParameters, false);
                }
            }));
        }
        if (!Objects.equals(string, "com.google.android.gms.measurement.SCION_UPLOAD")) {
            return true;
        }
        zzez.zza(context, null).zzw(new Runnable() { // from class: y7c
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                Log.v("FA", "[sgtm] AppMeasurementJobService processed last Scion upload request.");
                ((zznp) this.b.a).zzb(jobParameters, false);
            }
        });
        return true;
    }
}
