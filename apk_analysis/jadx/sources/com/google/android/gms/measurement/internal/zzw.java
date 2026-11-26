package com.google.android.gms.measurement.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.measurement.zzaif;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.android.gms.measurement.internal.zzic;
import com.google.android.gms.measurement.internal.zzlj;
import com.google.android.gms.measurement.internal.zzpp;
import defpackage.xp;
import java.util.Objects;

/* JADX INFO: loaded from: classes4.dex */
public final class zzw extends BroadcastReceiver {
    public final zzic a;

    public zzw(zzic zzicVar) {
        this.a = zzicVar;
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        final zzic zzicVar = this.a;
        if (intent == null) {
            xp.h(zzicVar, "App receiver called with null intent");
            return;
        }
        String action = intent.getAction();
        if (action == null) {
            xp.h(zzicVar, "App receiver called with null action");
            return;
        }
        int iHashCode = action.hashCode();
        if (iHashCode != -1928239649) {
            if (iHashCode == 1279883384 && action.equals("com.google.android.gms.measurement.BATCHES_AVAILABLE")) {
                zzicVar.zzaW().zzk().zza("[sgtm] App Receiver notified batches are available");
                zzicVar.zzaX().zzj(new Runnable() { // from class: aec
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        this.b.a.zzx().zzh(((Long) zzfy.zzC.zzb(null)).longValue());
                    }
                });
                return;
            }
        } else if (action.equals("com.google.android.gms.measurement.TRIGGERS_AVAILABLE")) {
            zzaif.zza();
            if (zzicVar.zzc().zzp(null, zzfy.zzaP)) {
                zzicVar.zzaW().zzk().zza("App receiver notified triggers are available");
                zzicVar.zzaX().zzj(new Runnable() { // from class: rec
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzic zzicVar2 = zzicVar;
                        zzpp zzppVarZzk = zzicVar2.zzk();
                        zzppVarZzk.zzg();
                        if (zzppVarZzk.t() != 1) {
                            xp.h(zzicVar2, "registerTrigger called but app not eligible");
                            return;
                        }
                        zzlj zzljVarZzj = zzicVar2.zzj();
                        zzljVarZzj.zzg();
                        zwb zwbVar = zzljVarZzj.l;
                        if (zwbVar != null) {
                            zwbVar.c();
                        }
                        final zzlj zzljVarZzj2 = zzicVar2.zzj();
                        Objects.requireNonNull(zzljVarZzj2);
                        new Thread(new Runnable() { // from class: mfc
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzljVarZzj2.k();
                            }
                        }).start();
                    }
                });
                return;
            }
            return;
        }
        xp.h(zzicVar, "App receiver called with unknown action");
    }
}
