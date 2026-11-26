package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.h0b;
import defpackage.qgb;
import defpackage.tgb;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class zzci extends zzeh implements zzfn {
    private static final zzci zzb;
    private int zzd;
    private int zze;
    private zzf zzg;
    private byte zzh = 2;
    private zzeo zzf = qgb.e;

    static {
        zzci zzciVar = new zzci();
        zzb = zzciVar;
        zzeh.f(zzci.class, zzciVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return Byte.valueOf(this.zzh);
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0003\u0000\u0001\u0001\u0003\u0003\u0000\u0001\u0001\u0001᠌\u0000\u0002\u001a\u0003ᐉ\u0001", new Object[]{"zzd", "zze", h0b.a, "zzf", "zzg"});
        }
        if (i2 == 3) {
            return new zzci();
        }
        if (i2 == 4) {
            return new zzcf(zzb);
        }
        if (i2 == 5) {
            return zzb;
        }
        this.zzh = zzehVar == null ? (byte) 0 : (byte) 1;
        return null;
    }

    public final List zzb() {
        return this.zzf;
    }

    public final int zzc() {
        int iZza = zzch.zza(this.zze);
        if (iZza == 0) {
            return 1;
        }
        return iZza;
    }
}
