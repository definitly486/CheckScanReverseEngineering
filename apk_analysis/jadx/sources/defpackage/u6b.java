package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzfm;

/* JADX INFO: loaded from: classes4.dex */
public final class u6b {
    public final Object a;
    public final int b;

    public u6b(int i, zzfm zzfmVar) {
        this.a = zzfmVar;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof u6b)) {
            return false;
        }
        u6b u6bVar = (u6b) obj;
        return this.a == u6bVar.a && this.b == u6bVar.b;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.a) * 65535) + this.b;
    }
}
