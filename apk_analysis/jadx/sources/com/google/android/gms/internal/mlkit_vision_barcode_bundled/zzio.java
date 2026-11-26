package com.google.android.gms.internal.mlkit_vision_barcode_bundled;

import defpackage.dsb;
import defpackage.psb;
import defpackage.tgb;
import defpackage.usb;

/* JADX INFO: loaded from: classes4.dex */
public final class zzio extends zzeh implements zzfn {
    private static final zzio zzb;
    private int zzd;
    private boolean zze;
    private int zzf;
    private int zzh;
    private int zzi;
    private int zzj;
    private int zzk;
    private boolean zzg = true;
    private String zzl = "";
    private String zzm = "";

    static {
        zzio zzioVar = new zzio();
        zzb = zzioVar;
        zzeh.f(zzio.class, zzioVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            usb usbVar = usb.a;
            dsb dsbVar = dsb.a;
            psb psbVar = psb.a;
            return new tgb(zzb, "\u0001\t\u0000\u0001\u0001\t\t\u0000\u0000\u0000\u0001ဇ\u0000\u0002᠌\u0001\u0003ဇ\u0002\u0004᠌\u0003\u0005᠌\u0004\u0006᠌\u0005\u0007᠌\u0006\bဈ\u0007\tဈ\b", new Object[]{"zzd", "zze", "zzf", usbVar, "zzg", "zzh", dsbVar, "zzi", psbVar, "zzj", psbVar, "zzk", psbVar, "zzl", "zzm"});
        }
        if (i2 == 3) {
            return new zzio();
        }
        if (i2 == 4) {
            return new zzin(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
