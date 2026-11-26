package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class sqa extends zzeh implements zzfn {
    private static final sqa zzb;
    private zzeo zzd = qgb.e;

    static {
        sqa sqaVar = new sqa();
        zzb = sqaVar;
        zzeh.f(sqa.class, sqaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", dqa.class});
        }
        if (i2 == 3) {
            return new sqa();
        }
        if (i2 == 4) {
            return new voa(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
