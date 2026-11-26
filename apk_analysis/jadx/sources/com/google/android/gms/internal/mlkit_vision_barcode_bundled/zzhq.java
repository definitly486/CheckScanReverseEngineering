package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzhq extends zzeh implements zzfn {
    private static final zzhq zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";

    static {
        zzhq zzhqVar = new zzhq();
        zzb = zzhqVar;
        zzeh.f(zzhq.class, zzhqVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"zzd", "zze", "zzf"});
        }
        if (i2 == 3) {
            return new zzhq();
        }
        if (i2 == 4) {
            return new zzhp(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
