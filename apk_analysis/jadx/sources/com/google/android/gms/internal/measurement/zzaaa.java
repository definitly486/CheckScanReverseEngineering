package com.google.android.gms.internal.measurement;

import defpackage.ajc;
import defpackage.vic;
import defpackage.zic;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class zzaaa {
    public static final vic a = new vic();

    public static zzaaa zzh(zzzj zzzjVar, zzzj zzzjVar2) {
        int iZza = zzzjVar2.zza();
        if (iZza == 0) {
            return a;
        }
        return iZza <= 28 ? new zic(zzzjVar, zzzjVar2) : new ajc(zzzjVar, zzzjVar2);
    }

    public abstract void zza(zzzq zzzqVar, Object obj);

    public abstract int zzb();

    public abstract Set zzc();
}
