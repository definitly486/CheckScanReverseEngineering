package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;

/* JADX INFO: loaded from: classes4.dex */
public final class h3b extends z3b {
    public final int d;
    public final int e;

    public h3b(byte[] bArr, int i, int i2) {
        super(bArr);
        zzdf.n(i, i + i2, bArr.length);
        this.d = i;
        this.e = i2;
    }

    @Override // defpackage.z3b, com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final byte a(int i) {
        return this.c[this.d + i];
    }

    @Override // defpackage.z3b, com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final void d(int i, int i2, int i3, byte[] bArr) {
        System.arraycopy(this.c, this.d + i, bArr, i2, i3);
    }

    @Override // defpackage.z3b
    public final int q() {
        return this.d;
    }

    @Override // defpackage.z3b, com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final byte zza(int i) {
        zzdf.o(i, this.e);
        return this.c[this.d + i];
    }

    @Override // defpackage.z3b, com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int zzd() {
        return this.e;
    }
}
