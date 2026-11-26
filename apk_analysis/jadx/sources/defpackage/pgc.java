package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzwg;
import com.google.android.gms.internal.mlkit_vision_barcode.zzwh;

/* JADX INFO: loaded from: classes4.dex */
public final class pgc extends zzwg {
    public String a;
    public boolean b;
    public int c;
    public byte d;

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwg
    public final zzwg zza(boolean z) {
        this.b = true;
        this.d = (byte) (1 | this.d);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwg
    public final zzwg zzb(int i) {
        this.c = 1;
        this.d = (byte) (this.d | 2);
        return this;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzwg
    public final zzwh zzd() {
        String str;
        if (this.d == 3 && (str = this.a) != null) {
            return new rgc(this.c, str, this.b);
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
