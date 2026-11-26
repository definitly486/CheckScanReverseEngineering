package defpackage;

import com.google.android.gms.internal.measurement.zzcc;
import com.google.android.gms.internal.measurement.zzcd;

/* JADX INFO: loaded from: classes4.dex */
public final class lya extends zzcc {
    public String a;
    public byte b;
    public int c;
    public int d;

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcc zzb(boolean z) {
        this.b = (byte) 1;
        return this;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcd zzc() {
        if (this.b == 1 && this.a != null && this.c != 0 && this.d != 0) {
            return new nya(this.a, this.c, this.d);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" fileOwner");
        }
        if (this.b == 0) {
            sb.append(" hasDifferentDmaOwner");
        }
        if (this.c == 0) {
            sb.append(" fileChecks");
        }
        if (this.d == 0) {
            sb.append(" filePurpose");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }

    @Override // com.google.android.gms.internal.measurement.zzcc
    public final zzcc zze(int i) {
        this.d = 1;
        return this;
    }
}
