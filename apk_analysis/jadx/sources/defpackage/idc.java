package defpackage;

import com.google.android.gms.internal.mlkit_common.zzsa;
import com.google.android.gms.internal.mlkit_common.zzsb;

/* JADX INFO: loaded from: classes4.dex */
public final class idc extends zzsa {
    public String a;
    public boolean b;
    public int c;
    public byte d;

    @Override // com.google.android.gms.internal.mlkit_common.zzsa
    public final zzsa zza(boolean z) {
        this.b = true;
        this.d = (byte) (1 | this.d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsa
    public final zzsa zzb(int i) {
        this.c = 1;
        this.d = (byte) (this.d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzsa
    public final zzsb zzd() {
        String str;
        if (this.d == 3 && (str = this.a) != null) {
            return new jdc(this.c, str, this.b);
        }
        StringBuilder sb = new StringBuilder();
        if (this.a == null) {
            sb.append(" libraryName");
        }
        if ((this.d & 1) == 0) {
            sb.append(" enableFirelog");
        }
        if ((this.d & 2) == 0) {
            sb.append(" firelogEventType");
        }
        ah.f("Missing required properties:".concat(sb.toString()));
        return null;
    }
}
