package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class jub extends zzeh implements zzfn {
    private static final jub zzb;
    private int zzd;
    private String zze = "";
    private zzeo zzf = qgb.e;

    static {
        jub jubVar = new jub();
        zzb = jubVar;
        zzeh.f(jub.class, jubVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0001\u0000\u0001ဈ\u0000\u0002\u001b", new Object[]{"zzd", "zze", "zzf", dhc.class});
        }
        if (i2 == 3) {
            return new jub();
        }
        if (i2 == 4) {
            return new vpb(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
