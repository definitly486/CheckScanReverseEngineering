package defpackage;

import com.google.android.gms.internal.mlkit_vision_common.zzah;
import com.google.android.gms.internal.mlkit_vision_common.zzai;

/* JADX INFO: loaded from: classes4.dex */
public final class yqa implements zzai {
    public final int b;
    public final zzah c;

    public yqa(int i, zzah zzahVar) {
        this.b = i;
        this.c = zzahVar;
    }

    @Override // java.lang.annotation.Annotation
    public final Class annotationType() {
        return zzai.class;
    }

    @Override // java.lang.annotation.Annotation
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzai)) {
            return false;
        }
        zzai zzaiVar = (zzai) obj;
        return this.b == zzaiVar.zza() && this.c.equals(zzaiVar.zzb());
    }

    @Override // java.lang.annotation.Annotation
    public final int hashCode() {
        return (this.b ^ 14552422) + (this.c.hashCode() ^ 2041407134);
    }

    @Override // java.lang.annotation.Annotation
    public final String toString() {
        return "@com.google.firebase.encoders.proto.Protobuf(tag=" + this.b + "intEncoding=" + this.c + ')';
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzai
    public final int zza() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_common.zzai
    public final zzah zzb() {
        return this.c;
    }
}
