package defpackage;

import com.google.android.gms.internal.auth.zzef;

/* JADX INFO: loaded from: classes4.dex */
public final class m8b extends m9b {
    public final int d;

    public m8b(byte[] bArr, int i) {
        super(bArr);
        zzef.f(0, i, bArr.length);
        this.d = i;
    }

    @Override // defpackage.m9b, com.google.android.gms.internal.auth.zzef
    public final byte a(int i) {
        return this.c[i];
    }

    @Override // defpackage.m9b, com.google.android.gms.internal.auth.zzef
    public final byte zza(int i) {
        int i2 = this.d;
        if (((i2 - (i + 1)) | i) >= 0) {
            return this.c[i];
        }
        if (i < 0) {
            throw new ArrayIndexOutOfBoundsException(jh.b(i, "Index < 0: "));
        }
        throw new ArrayIndexOutOfBoundsException(rz0.c(i, i2, "Index > length: ", ", "));
    }

    @Override // defpackage.m9b, com.google.android.gms.internal.auth.zzef
    public final int zzd() {
        return this.d;
    }
}
