package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.qgb;
import defpackage.tgb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzf extends zzeh implements zzfn {
    private static final zzf zzb;
    private int zzd;
    private zzeo zzf;
    private zzeo zzg;
    private zzeo zzh;
    private zzjv zzi;
    private zzf zzj;
    private zzx zzk;
    private byte zzl = 2;
    private String zze = "";

    static {
        zzf zzfVar = new zzf();
        zzb = zzfVar;
        zzeh.f(zzf.class, zzfVar);
        zzeh.zzI(zzjv.zzf(), zzfVar, zzfVar, null, 12208774, zzhf.zzk, zzf.class);
    }

    public zzf() {
        qgb qgbVar = qgb.e;
        this.zzf = qgbVar;
        this.zzg = qgbVar;
        this.zzh = qgbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzl);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0007\u0000\u0001\u0002Ǵ\u0007\u0000\u0003\u0004\u0002Л\u0005Л\u0006\u001b\bᐉ\u0001\nဈ\u0000\u000bᐉ\u0002Ǵဉ\u0003", new Object[]{"zzd", "zzf", zzj.class, "zzh", zzj.class, "zzg", zzm.class, "zzi", "zze", "zzj", "zzk"});
        }
        if (i2 == 3) {
            return new zzf();
        }
        if (i2 == 4) {
            return new zze(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzl = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }
}
