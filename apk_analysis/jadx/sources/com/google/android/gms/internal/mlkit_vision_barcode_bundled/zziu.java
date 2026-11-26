package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.btb;
import defpackage.ftb;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zziu extends zzeh implements zzfn {
    private static final zziu zzb;
    private int zzd;
    private boolean zzf;
    private int zzg;
    private boolean zzj;
    private int zzm;
    private int zzn;
    private boolean zzo;
    private int zze = -1;
    private zzdf zzh = zzdf.zzb;
    private String zzi = "";
    private boolean zzk = true;
    private boolean zzl = true;

    static {
        zziu zziuVar = new zziu();
        zzb = zziuVar;
        zzeh.f(zziu.class, zziuVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            btb btbVar = btb.a;
            ftb ftbVar = ftb.a;
            return new tgb(zzb, "\u0001\u000b\u0000\u0001\u0001\u000b\u000b\u0000\u0000\u0000\u0001င\u0000\u0002ဇ\u0001\u0003᠌\u0002\u0004ည\u0003\u0005ဈ\u0004\u0006ဇ\u0005\u0007ဇ\u0006\bဇ\u0007\t᠌\b\n᠌\t\u000bဇ\n", new Object[]{"zzd", "zze", "zzf", "zzg", btbVar, "zzh", "zzi", "zzj", "zzk", "zzl", "zzm", ftbVar, "zzn", ftbVar, "zzo"});
        }
        if (i2 == 3) {
            return new zziu();
        }
        if (i2 == 4) {
            return new zzir(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
