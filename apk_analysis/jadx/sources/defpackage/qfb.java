package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzfv;
import com.google.android.gms.internal.play_billing.zzgv;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class qfb extends mfb {
    public final byte[] c;

    public qfb(byte[] bArr) {
        this.c = bArr;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final byte a(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final int b(int i, int i2) {
        return zzgv.a(i, 0, i2, this.c);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final void d(int i, byte[] bArr) {
        System.arraycopy(this.c, 0, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final void f(ngb ngbVar) throws zzfv {
        byte[] bArr = this.c;
        ngbVar.b(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final boolean g(zzfp zzfpVar) {
        boolean z = zzfpVar instanceof qfb;
        byte[] bArr = this.c;
        if (z) {
            return Arrays.equals(bArr, ((qfb) zzfpVar).c);
        }
        boolean z2 = zzfpVar instanceof bfb;
        if (!z2) {
            return zzfpVar.g(this);
        }
        bfb bfbVar = (bfb) zzfpVar;
        int i = bfbVar.e;
        int length = bArr.length;
        if (length > i) {
            throw new IllegalArgumentException("Length too large: " + length + length);
        }
        if (length > i) {
            fg.c(rz0.c(length, i, "Ran off end of other: 0, ", ", "));
            return false;
        }
        if (z) {
            return zzfp.j(0, 0, length, bArr, ((qfb) zzfpVar).c);
        }
        if (!z2) {
            return zzfpVar.zze(0, length).equals(zze(0, length));
        }
        return zzfp.j(0, bfbVar.d, length, bArr, bfbVar.c);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final int zzd() {
        return this.c.length;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final zzfp zze(int i, int i2) {
        byte[] bArr = this.c;
        int i3 = zzfp.i(0, i2, bArr.length);
        return i3 == 0 ? zzfp.zza : new bfb(bArr, 0, i3);
    }
}
