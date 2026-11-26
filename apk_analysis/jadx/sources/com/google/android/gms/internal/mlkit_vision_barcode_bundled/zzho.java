package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzho extends zzeh implements zzfn {
    private static final zzho zzb;
    private int zzd;
    private int zze = -1;

    static {
        zzho zzhoVar = new zzho();
        zzb = zzhoVar;
        zzeh.f(zzho.class, zzhoVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0001\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u0000\u0001င\u0000", new Object[]{"zzd", "zze"});
        }
        if (i2 == 3) {
            return new zzho();
        }
        if (i2 == 4) {
            return new zzhn(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
