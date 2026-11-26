package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.bcc;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzad extends zzeh implements zzfn {
    private static final zzad zzb;
    private int zzd;
    private int zze = 4369;
    private String zzf = "";

    static {
        zzad zzadVar = new zzad();
        zzb = zzadVar;
        zzeh.f(zzad.class, zzadVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001᠌\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", bcc.a, "zzf"});
        }
        if (i2 == 3) {
            return new zzad();
        }
        if (i2 == 4) {
            return new zzac(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
