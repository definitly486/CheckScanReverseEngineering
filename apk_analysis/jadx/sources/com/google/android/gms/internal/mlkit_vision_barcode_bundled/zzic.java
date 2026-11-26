package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.pqb;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzic extends zzeh implements zzfn {
    private static final zzic zzb;
    private int zzd;
    private int zze;
    private long zzf;

    static {
        zzic zzicVar = new zzic();
        zzb = zzicVar;
        zzeh.f(zzic.class, zzicVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဂ\u0001", new Object[]{"zzd", "zze", pqb.a, "zzf"});
        }
        if (i2 == 3) {
            return new zzic();
        }
        if (i2 == 4) {
            return new zzib(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
