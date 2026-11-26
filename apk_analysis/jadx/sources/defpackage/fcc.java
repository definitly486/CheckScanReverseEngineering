package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class fcc extends zzeh implements zzfn {
    private static final fcc zzb;
    private zzeo zzd;
    private zzeo zze;

    static {
        fcc fccVar = new fcc();
        zzb = fccVar;
        zzeh.f(fcc.class, fccVar);
    }

    public fcc() {
        qgb qgbVar = qgb.e;
        this.zzd = qgbVar;
        this.zze = qgbVar;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0002\u0000\u0001\u001b\u0002\u001b", new Object[]{"zzd", j6c.class, "zze", j6c.class});
        }
        if (i2 == 3) {
            return new fcc();
        }
        if (i2 == 4) {
            return new fbc(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
