package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzu extends zzeh implements zzfn {
    private static final zzu zzb;
    private int zzd;
    private long zze;
    private long zzf;
    private zzjv zzg;
    private byte zzh = 2;

    static {
        zzu zzuVar = new zzu();
        zzb = zzuVar;
        zzeh.f(zzu.class, zzuVar);
        zzeh.zzI(zzjv.zzf(), zzuVar, zzuVar, null, 13258261, zzhf.zzk, zzu.class);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0000\u0003\u0001ᔅ\u0000\u0002ᔅ\u0001\u0003ᐉ\u0002", new Object[]{"zzd", "zze", "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzu();
        }
        if (i2 == 4) {
            return new zzt(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzh = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
