package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class j6c extends zzeh implements zzfn {
    private static final j6c zzb;
    private int zzd = 0;
    private Object zze;

    static {
        j6c j6cVar = new j6c();
        zzb = j6cVar;
        zzeh.f(j6c.class, j6cVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0001\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"zze", "zzd", cec.class, nic.class, mgc.class});
        }
        if (i2 == 3) {
            return new j6c();
        }
        if (i2 == 4) {
            return new d4c(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
