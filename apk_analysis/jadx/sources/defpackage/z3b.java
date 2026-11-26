package defpackage;

import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf;
import com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzep;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes4.dex */
public class z3b extends u3b {
    public final byte[] c;

    public z3b(byte[] bArr) {
        bArr.getClass();
        this.c = bArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public byte a(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public void d(int i, int i2, int i3, byte[] bArr) {
        System.arraycopy(this.c, i, bArr, i2, i3);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzdf) && zzd() == ((zzdf) obj).zzd()) {
            if (zzd() == 0) {
                return true;
            }
            if (!(obj instanceof z3b)) {
                return obj.equals(this);
            }
            z3b z3bVar = (z3b) obj;
            int i = this.b;
            int i2 = z3bVar.b;
            if (i == 0 || i2 == 0 || i == i2) {
                return p(z3bVar, 0, zzd());
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int i(int i, int i2, int i3) {
        int iQ = q() + i2;
        Charset charset = zzep.a;
        for (int i4 = iQ; i4 < iQ + i3; i4++) {
            i = (i * 31) + this.c[i4];
        }
        return i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final int j(int i, int i2, int i3) {
        int iQ = q() + i2;
        byte[] bArr = this.c;
        return wmb.a.a(i, iQ, i3 + iQ, bArr);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final String k(Charset charset) {
        return new String(this.c, q(), zzd(), charset);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final void m(e5b e5bVar) {
        e5bVar.b(this.c, q(), zzd());
    }

    @Override // defpackage.u3b
    public final boolean p(u3b u3bVar, int i, int i2) {
        if (i2 > u3bVar.zzd()) {
            hm.e(i2, zzd());
            return false;
        }
        int i3 = i + i2;
        if (i3 > u3bVar.zzd()) {
            ln.f(u3bVar.zzd(), bg.f(i, i2, "Ran off end of other: ", ", ", ", "));
            return false;
        }
        if (!(u3bVar instanceof z3b)) {
            return u3bVar.zzk(i, i3).equals(zzk(0, i2));
        }
        z3b z3bVar = (z3b) u3bVar;
        byte[] bArr = z3bVar.c;
        int iQ = q() + i2;
        int iQ2 = q();
        int iQ3 = z3bVar.q() + i;
        while (iQ2 < iQ) {
            if (this.c[iQ2] != bArr[iQ3]) {
                return false;
            }
            iQ2++;
            iQ3++;
        }
        return true;
    }

    public int q() {
        return 0;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public byte zza(int i) {
        return this.c[i];
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public int zzd() {
        return this.c.length;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final zzdf zzk(int i, int i2) {
        int iN = zzdf.n(i, i2, zzd());
        if (iN == 0) {
            return zzdf.zzb;
        }
        return new h3b(this.c, q() + i, iN);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_barcode_bundled.zzdf
    public final boolean zzn() {
        int iQ = q();
        return wmb.a.a(0, iQ, zzd() + iQ, this.c) == 0;
    }
}
