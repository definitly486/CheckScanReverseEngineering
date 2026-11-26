package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.d;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdb;

/* JADX INFO: loaded from: classes4.dex */
public final class xgb extends r2b {
    public final whb b;
    public zzdb c = a();

    public xgb(d dVar) {
        this.b = new whb(dVar);
    }

    public final zzdb a() {
        whb whbVar = this.b;
        if (whbVar.hasNext()) {
            return whbVar.next().iterator();
        }
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.c != null;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdb
    public final byte zza() {
        zzdb zzdbVar = this.c;
        if (zzdbVar == null) {
            qz0.e();
            return (byte) 0;
        }
        byte bZza = zzdbVar.zza();
        if (!this.c.hasNext()) {
            this.c = a();
        }
        return bZza;
    }
}
