package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.qgb;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjd extends zzeh implements zzfn {
    private static final zzjd zzb;
    private int zzd;
    private zzeo zze = qgb.e;
    private zzjf zzf;
    private zzhm zzg;

    static {
        zzjd zzjdVar = new zzjd();
        zzb = zzjdVar;
        zzeh.f(zzjd.class, zzjdVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u001b\u0002ဉ\u0000\u0003ဉ\u0001", new Object[]{"zzd", "zze", zzjp.class, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzjd();
        }
        if (i2 == 4) {
            return new zzjc(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
