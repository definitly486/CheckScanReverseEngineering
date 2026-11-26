package com.google.android.gms.internal.measurement;

import defpackage.ohc;
import defpackage.phc;
import java.util.logging.Level;

/* JADX INFO: loaded from: classes4.dex */
public final class zzxs extends zzxi {
    public static final phc b = new phc();

    @Deprecated
    public static zzxs zzd(String str) {
        return new zzxs(zzaad.zzd("Phlogger"));
    }

    public final zzxp zze(Level level) {
        zzzf zzzfVar = this.a;
        boolean zZzb = zzzfVar.zzb(level);
        zzaad.zzh(zzzfVar.zza(), level, zZzb);
        return !zZzb ? b : new ohc(this, level);
    }
}
