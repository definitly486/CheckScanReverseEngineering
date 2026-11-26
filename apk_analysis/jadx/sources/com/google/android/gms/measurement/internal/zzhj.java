package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.internal.measurement.zzbr;
import com.google.android.gms.internal.measurement.zzbs;
import defpackage.nka;
import defpackage.xp;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhj implements ServiceConnection {
    public final String b;
    public final /* synthetic */ zzhk c;

    public zzhj(zzhk zzhkVar, String str) {
        this.c = zzhkVar;
        this.b = str;
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        zzic zzicVar = this.c.a;
        if (iBinder == null) {
            xp.h(zzicVar, "Install Referrer connection returned with null binder");
            return;
        }
        try {
            zzbs zzbsVarZzb = zzbr.zzb(iBinder);
            if (zzbsVarZzb == null) {
                zzicVar.zzaW().zze().zza("Install Referrer Service implementation was not found");
            } else {
                zzicVar.zzaW().zzk().zza("Install Referrer Service connected");
                zzicVar.zzaX().zzj(new nka(this, zzbsVarZzb, this));
            }
        } catch (RuntimeException e) {
            zzicVar.zzaW().zze().zzb("Exception occurred while calling Install Referrer API", e);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        this.c.a.zzaW().zzk().zza("Install Referrer Service disconnected");
    }
}
