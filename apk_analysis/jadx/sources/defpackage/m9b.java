package defpackage;

import com.google.android.gms.internal.auth.zzef;
import com.google.android.gms.internal.auth.zzfa;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public class m9b extends i9b {
    public final byte[] c;

    public m9b(byte[] bArr) {
        bArr.getClass();
        this.c = bArr;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public byte a(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final int b(int i, int i2) {
        Charset charset = zzfa.a;
        for (int i3 = 0; i3 < i2; i3++) {
            i = (i * 31) + this.c[i3];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final String d(Charset charset) {
        return new String(this.c, 0, zzd(), charset);
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzef) && zzd() == ((zzef) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (!(obj instanceof m9b)) {
                return obj.equals(this);
            }
            m9b m9bVar = (m9b) obj;
            int i = this.b;
            int i2 = m9bVar.b;
            if (i == 0 || i2 == 0 || i == i2) {
                int iZzd = zzd();
                if (iZzd > m9bVar.zzd()) {
                    hm.e(iZzd, zzd());
                    return false;
                }
                if (iZzd > m9bVar.zzd()) {
                    fg.c(rz0.c(iZzd, m9bVar.zzd(), "Ran off end of other: 0, ", ", "));
                    return false;
                }
                byte[] bArr = m9bVar.c;
                int i3 = 0;
                int i4 = 0;
                while (i3 < iZzd) {
                    if (this.c[i3] == bArr[i4]) {
                        i3++;
                        i4++;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public byte zza(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public int zzd() {
        return this.c.length;
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final zzef zzf(int i, int i2) {
        int iF = zzef.f(0, i2, zzd());
        return iF == 0 ? zzef.zzb : new m8b(this.c, iF);
    }

    @Override // com.google.android.gms.internal.auth.zzef
    public final boolean zzh() {
        int iZzd = zzd();
        dob.a.getClass();
        return unb.a(this.c, 0, iZzd);
    }
}
