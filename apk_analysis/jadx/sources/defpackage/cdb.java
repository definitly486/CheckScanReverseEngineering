package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeo;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfn;

/* JADX INFO: loaded from: classes4.dex */
public final class cdb extends zzeh implements zzfn {
    private static final cdb zzb;
    private zzeo zzd = qgb.e;

    static {
        cdb cdbVar = new cdb();
        zzb = cdbVar;
        zzeh.f(cdb.class, cdbVar);
    }

    public static o8b k() {
        return (o8b) zzb.b();
    }

    public static void l(cdb cdbVar, wya wyaVar) {
        wyaVar.getClass();
        zzeo zzeoVar = cdbVar.zzd;
        if (!zzeoVar.zzc()) {
            int size = zzeoVar.size();
            cdbVar.zzd = zzeoVar.zzd(size == 0 ? 10 : size + size);
        }
        cdbVar.zzd.add(wyaVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzeh
    public final Object j(int i, zzeh zzehVar) {
        int i2 = i - 1;
        if (i2 == 0) {
            return (byte) 1;
        }
        if (i2 == 2) {
            return new tgb(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", wya.class});
        }
        if (i2 == 3) {
            return new cdb();
        }
        if (i2 == 4) {
            return new o8b(zzb);
        }
        if (i2 != 5) {
            return null;
        }
        return zzb;
    }
}
