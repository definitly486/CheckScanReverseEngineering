package defpackage;

import com.google.android.gms.internal.play_billing.zzfp;
import com.google.android.gms.internal.play_billing.zzfv;
import com.google.android.gms.internal.play_billing.zzgv;

/* JADX INFO: loaded from: classes4.dex */
public final class bfb extends mfb {
    public final byte[] c;
    public final int d;
    public final int e;

    public bfb(byte[] bArr, int i, int i2) {
        zzfp.i(i, i + i2, bArr.length);
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final byte a(int i) {
        return this.c[this.d + i];
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final int b(int i, int i2) {
        return zzgv.a(i, this.d, i2, this.c);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final void d(int i, byte[] bArr) {
        System.arraycopy(this.c, this.d, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final void f(ngb ngbVar) throws zzfv {
        ngbVar.b(this.c, this.d, this.e);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final boolean g(zzfp zzfpVar) {
        boolean z = zzfpVar instanceof qfb;
        if (!z && !(zzfpVar instanceof bfb)) {
            return zzfpVar.g(this);
        }
        int iZzd = zzfpVar.zzd();
        int i = this.e;
        if (i > iZzd) {
            throw new IllegalArgumentException("Length too large: " + i + i);
        }
        if (i > zzfpVar.zzd()) {
            fg.c(rz0.c(i, zzfpVar.zzd(), "Ran off end of other: 0, ", ", "));
            return false;
        }
        byte[] bArr = this.c;
        int i2 = this.d;
        if (z) {
            return zzfp.j(i2, 0, i, bArr, ((qfb) zzfpVar).c);
        }
        if (!(zzfpVar instanceof bfb)) {
            return zzfpVar.zze(0, i).equals(zze(i2, i + i2));
        }
        bfb bfbVar = (bfb) zzfpVar;
        return zzfp.j(i2, bfbVar.d, i, bArr, bfbVar.c);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final int zzd() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.play_billing.zzfp
    public final zzfp zze(int i, int i2) {
        int i3 = zzfp.i(i, i2, this.e);
        if (i3 == 0) {
            return zzfp.zza;
        }
        return new bfb(this.c, this.d + i, i3);
    }
}
