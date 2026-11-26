package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.qgb;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzm extends zzeh implements zzfn {
    private static final zzm zzb;
    private int zzd;
    private zzeo zze = qgb.e;
    private String zzf = "";

    static {
        zzm zzmVar = new zzm();
        zzb = zzmVar;
        zzeh.f(zzm.class, zzmVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001a\u0002ဈ\u0000", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzm();
        }
        if (i2 == 4) {
            return new zzl(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
