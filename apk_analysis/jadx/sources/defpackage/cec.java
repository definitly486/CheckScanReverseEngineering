package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class cec extends zzeh implements zzfn {
    private static final cec zzb;

    static {
        cec cecVar = new cec();
        zzb = cecVar;
        zzeh.f(cec.class, cecVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0000", null);
        }
        if (i2 == 3) {
            return new cec();
        }
        if (i2 == 4) {
            return new rdc(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
