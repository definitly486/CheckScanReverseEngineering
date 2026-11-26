package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.cwb;
import defpackage.tgb;
import defpackage.zvb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzjj extends zzeh implements zzfn {
    private static final zzjj zzb;
    private int zzd;
    private String zze = "";
    private String zzf = "";
    private String zzg = "";
    private int zzh;
    private int zzi;
    private zzil zzj;
    private boolean zzk;
    private int zzl;
    private boolean zzm;
    private boolean zzn;
    private boolean zzo;
    private long zzp;

    static {
        zzjj zzjjVar = new zzjj();
        zzb = zzjjVar;
        zzeh.f(zzjj.class, zzjjVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\f\u0000\u0001\u0001\f\f\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဈ\u0002\u0004᠌\u0003\u0005င\u0004\u0006ဉ\u0005\u0007ဇ\u0006\b᠌\u0007\tဇ\b\nဇ\t\u000bဇ\n\fဂ\u000b", new Object[]{"zzd", "zze", "zzf", "zzg", "zzh", zvb.a, "zzi", "zzj", "zzk", "zzl", cwb.a, "zzm", "zzn", "zzo", "zzp"});
        }
        if (i2 == 3) {
            return new zzjj();
        }
        if (i2 == 4) {
            return new zzji(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
