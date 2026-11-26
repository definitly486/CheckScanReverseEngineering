package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode.zzxm;

/* JADX INFO: loaded from: classes4.dex */
public final class ghc extends zzxm {
    public final int a;
    public final int b;
    public final float c;
    public final float d;
    public final boolean e;
    public final float f;
    public final float g;
    public final long h;
    public final long i;
    public final boolean j;
    public final float k;
    public final float l;

    public /* synthetic */ ghc(int i, int i2, float f, float f2, boolean z, float f3, float f4, long j, long j2, boolean z2, float f5, float f6) {
        this.a = i;
        this.b = i2;
        this.c = f;
        this.d = f2;
        this.e = z;
        this.f = f3;
        this.g = f4;
        this.h = j;
        this.i = j2;
        this.j = z2;
        this.k = f5;
        this.l = f6;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float a() {
        return this.g;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float b() {
        return this.f;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float c() {
        return this.d;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float d() {
        return this.c;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float e() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzxm)) {
            return false;
        }
        zzxm zzxmVar = (zzxm) obj;
        return this.a == zzxmVar.h() && this.b == zzxmVar.g() && Float.floatToIntBits(this.c) == Float.floatToIntBits(zzxmVar.d()) && Float.floatToIntBits(this.d) == Float.floatToIntBits(zzxmVar.c()) && this.e == zzxmVar.l() && Float.floatToIntBits(this.f) == Float.floatToIntBits(zzxmVar.b()) && Float.floatToIntBits(this.g) == Float.floatToIntBits(zzxmVar.a()) && this.h == zzxmVar.j() && this.i == zzxmVar.i() && this.j == zzxmVar.k() && Float.floatToIntBits(this.k) == Float.floatToIntBits(zzxmVar.e()) && Float.floatToIntBits(this.l) == Float.floatToIntBits(zzxmVar.f());
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final float f() {
        return this.l;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final int g() {
        return this.b;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final int h() {
        return this.a;
    }

    public final int hashCode() {
        return Float.floatToIntBits(this.l) ^ ((((((((((((((((((((((this.a ^ 1000003) * 1000003) ^ this.b) * 1000003) ^ Float.floatToIntBits(this.c)) * 1000003) ^ Float.floatToIntBits(this.d)) * 1000003) ^ (true != this.e ? 1237 : 1231)) * 1000003) ^ Float.floatToIntBits(this.f)) * 1000003) ^ Float.floatToIntBits(this.g)) * 1000003) ^ ((int) this.h)) * 1000003) ^ ((int) this.i)) * 1000003) ^ (true != this.j ? 1237 : 1231)) * 1000003) ^ Float.floatToIntBits(this.k)) * 1000003);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final long i() {
        return this.i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final long j() {
        return this.h;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final boolean k() {
        return this.j;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode.zzxm
    public final boolean l() {
        return this.e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("AutoZoomOptions{recentFramesToCheck=");
        sb.append(this.a);
        sb.append(", recentFramesContainingPredictedArea=");
        sb.append(this.b);
        sb.append(", recentFramesIou=");
        sb.append(this.c);
        sb.append(", maxCoverage=");
        sb.append(this.d);
        sb.append(", useConfidenceScore=");
        sb.append(this.e);
        sb.append(", lowerConfidenceScore=");
        sb.append(this.f);
        sb.append(", higherConfidenceScore=");
        sb.append(this.g);
        sb.append(", zoomIntervalInMillis=");
        sb.append(this.h);
        sb.append(", resetIntervalInMillis=");
        sb.append(this.i);
        sb.append(", enableZoomThreshold=");
        sb.append(this.j);
        sb.append(", zoomInThreshold=");
        sb.append(this.k);
        sb.append(", zoomOutThreshold=");
        return xy.e(sb, "}", this.l);
    }
}
