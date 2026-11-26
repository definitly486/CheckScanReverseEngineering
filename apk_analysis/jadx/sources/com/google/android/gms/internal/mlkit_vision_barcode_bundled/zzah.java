package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.hab;
import defpackage.tgb;
import defpackage.xsa;

/* JADX INFO: loaded from: classes4.dex */
public final class zzah extends zzeh implements zzfn {
    private static final zzah zzb;
    private int zzd;
    private zzx zzj;
    private zzjv zzk;
    private byte zzl = 2;
    private String zze = "";
    private String zzf = "";
    private zzen zzg = hab.e;
    private String zzh = "";
    private String zzi = "";

    static {
        zzah zzahVar = new zzah();
        zzb = zzahVar;
        zzeh.f(zzah.class, zzahVar);
        zzeh.zzI(zzjv.zzf(), zzahVar, zzahVar, null, 308676116, zzhf.zzk, zzah.class);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzl);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0007\u0000\u0001\u0001Ǵ\u0007\u0000\u0001\u0002\u0001ᔈ\u0000\u0002ဈ\u0001\u0003ࠞ\u0005ဈ\u0002\u0006ဈ\u0003\u000fᐉ\u0005Ǵဉ\u0004", new Object[]{"zzd", "zze", "zzf", "zzg", xsa.a, "zzh", "zzi", "zzk", "zzj"});
        }
        if (i2 == 3) {
            return new zzah();
        }
        if (i2 == 4) {
            return new zzaf(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzl = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
