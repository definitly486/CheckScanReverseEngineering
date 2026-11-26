package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzaed;

/* JADX INFO: loaded from: classes4.dex */
public final class kqa extends lqa {
    public final byte[] c;
    public final int d;
    public final int e;

    public kqa(byte[] bArr, int i, int i2) {
        zzacr.j(i, i + i2, bArr.length);
        this.c = bArr;
        this.d = i;
        this.e = i2;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final byte a(int i) {
        return this.c[this.d + i];
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void b(int i, byte[] bArr) {
        System.arraycopy(this.c, this.d, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void d(zzada zzadaVar) {
        zzadaVar.zza(this.c, this.d, this.e);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final boolean f(zzacr zzacrVar) {
        boolean z = zzacrVar instanceof mqa;
        if (!z && !(zzacrVar instanceof kqa)) {
            return zzacrVar.f(this);
        }
        int iZzb = zzacrVar.zzb();
        int i = this.e;
        if (i > iZzb) {
            StringBuilder sb = new StringBuilder(String.valueOf(i).length() + 18 + String.valueOf(i).length());
            sb.append("Length too large: ");
            sb.append(i);
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i > zzacrVar.zzb()) {
            int iZzb2 = zzacrVar.zzb();
            ih.c(String.valueOf(i).length() + 27 + String.valueOf(iZzb2).length(), "Ran off end of other: 0, ", i, ", ", iZzb2);
            return false;
        }
        byte[] bArr = this.c;
        int i2 = this.d;
        if (z) {
            return zzacr.k(i2, 0, i, bArr, ((mqa) zzacrVar).c);
        }
        if (!(zzacrVar instanceof kqa)) {
            return zzacrVar.zzc(0, i).equals(zzc(i2, i + i2));
        }
        kqa kqaVar = (kqa) zzacrVar;
        return zzacr.k(i2, kqaVar.d, i, bArr, kqaVar.c);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int g(int i, int i2) {
        return zzaed.a(i, this.d, i2, this.c);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int zzb() {
        return this.e;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final zzacr zzc(int i, int i2) {
        int iJ = zzacr.j(i, i2, this.e);
        if (iJ == 0) {
            return zzacr.zza;
        }
        return new kqa(this.c, this.d + i, iJ);
    }
}
