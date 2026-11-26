package defpackage;

import com.google.android.gms.internal.measurement.zzacr;
import com.google.android.gms.internal.measurement.zzada;
import com.google.android.gms.internal.measurement.zzaed;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class mqa extends lqa {
    public final byte[] c;

    public mqa(byte[] bArr) {
        bArr.getClass();
        this.c = bArr;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final byte a(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void b(int i, byte[] bArr) {
        System.arraycopy(this.c, 0, bArr, 0, i);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final void d(zzada zzadaVar) {
        byte[] bArr = this.c;
        zzadaVar.zza(bArr, 0, bArr.length);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final boolean f(zzacr zzacrVar) {
        boolean z = zzacrVar instanceof mqa;
        byte[] bArr = this.c;
        if (z) {
            return Arrays.equals(bArr, ((mqa) zzacrVar).c);
        }
        boolean z2 = zzacrVar instanceof kqa;
        if (!z2) {
            return zzacrVar.f(this);
        }
        kqa kqaVar = (kqa) zzacrVar;
        int i = kqaVar.e;
        int length = bArr.length;
        if (length > i) {
            StringBuilder sb = new StringBuilder(String.valueOf(length).length() + 18 + String.valueOf(length).length());
            sb.append("Length too large: ");
            sb.append(length);
            sb.append(length);
            throw new IllegalArgumentException(sb.toString());
        }
        if (length > i) {
            ih.c(String.valueOf(length).length() + 27 + String.valueOf(i).length(), "Ran off end of other: 0, ", length, ", ", i);
            return false;
        }
        if (z) {
            return zzacr.k(0, 0, length, bArr, ((mqa) zzacrVar).c);
        }
        if (!z2) {
            return zzacrVar.zzc(0, length).equals(zzc(0, length));
        }
        return zzacr.k(0, kqaVar.d, length, bArr, kqaVar.c);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int g(int i, int i2) {
        return zzaed.a(i, 0, i2, this.c);
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final int zzb() {
        return this.c.length;
    }

    @Override // com.google.android.gms.internal.measurement.zzacr
    public final zzacr zzc(int i, int i2) {
        byte[] bArr = this.c;
        int iJ = zzacr.j(0, i2, bArr.length);
        return iJ == 0 ? zzacr.zza : new kqa(bArr, 0, iJ);
    }
}
