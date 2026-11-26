package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzxn;

/* JADX INFO: loaded from: classes4.dex */
public final class ihc extends zzxn {
    public final float a;
    public final float b;
    public final float c;
    public final float d;

    public ihc(float f, float f2, float f3, float f4) {
        this.a = f;
        this.b = f2;
        this.c = f3;
        this.d = f4;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxn
    public final float a() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxn
    public final float b() {
        return this.a;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxn
    public final float c() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxn
    public final float d() {
        return this.b;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzxn)) {
            return false;
        }
        zzxn zzxnVar = (zzxn) obj;
        return Float.floatToIntBits(this.a) == Float.floatToIntBits(zzxnVar.b()) && Float.floatToIntBits(this.b) == Float.floatToIntBits(zzxnVar.d()) && Float.floatToIntBits(this.c) == Float.floatToIntBits(zzxnVar.a()) && Float.floatToIntBits(this.d) == Float.floatToIntBits(zzxnVar.c()) && Float.floatToIntBits(0.0f) == Float.floatToIntBits(0.0f);
    }

    public final int hashCode() {
        return ((Float.floatToIntBits(this.d) ^ ((((((Float.floatToIntBits(this.a) ^ 1000003) * 1000003) ^ Float.floatToIntBits(this.b)) * 1000003) ^ Float.floatToIntBits(this.c)) * 1000003)) * 1000003) ^ Float.floatToIntBits(0.0f);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("PredictedArea{xMin=");
        sb.append(this.a);
        sb.append(", yMin=");
        sb.append(this.b);
        sb.append(", xMax=");
        sb.append(this.c);
        sb.append(", yMax=");
        return xy.e(sb, ", confidenceScore=0.0}", this.d);
    }
}
