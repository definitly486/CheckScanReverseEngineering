package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzfd;
import com.google.android.gms.internal.mlkit_vision_barcode.zzfe;

/* JADX INFO: loaded from: classes4.dex */
public final class zcb implements zzfe {
    public final int b;
    public final zzfd c;

    public zcb(int i, zzfd zzfdVar) {
        this.b = i;
        this.c = zzfdVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzfe.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzfe)) {
            return false;
        }
        zzfe zzfeVar = (zzfe) obj;
        return this.b == zzfeVar.zza() && this.c.equals(zzfeVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.b ^ 14552422) + (this.c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.b + "intEncoding=" + this.c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzfe
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzfe
    public final zzfd zzb() {
        return this.c;
    }
}
