package defpackage;

import com.google.android.gms.internal.mlkit_common.zzbb;
import com.google.android.gms.internal.mlkit_common.zzbc;

/* JADX INFO: loaded from: classes4.dex */
public final class mva implements zzbc {
    public final int b;
    public final zzbb c;

    public mva(int i, zzbb zzbbVar) {
        this.b = i;
        this.c = zzbbVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzbc.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbc)) {
            return false;
        }
        zzbc zzbcVar = (zzbc) obj;
        return this.b == zzbcVar.zza() && this.c.equals(zzbcVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.b ^ 14552422) + (this.c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.b + "intEncoding=" + this.c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbc
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzbc
    public final zzbb zzb() {
        return this.c;
    }
}
