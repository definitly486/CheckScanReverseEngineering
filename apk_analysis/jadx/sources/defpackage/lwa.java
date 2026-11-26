package defpackage;

import com.google.android.gms.internal.fido.zzam;
import com.google.android.gms.internal.fido.zzbh;
import java.math.RoundingMode;
import java.util.Arrays;

/* JADX INFO: loaded from: classes4.dex */
public final class lwa {
    public final String a;
    public final char[] b;
    public final int c;
    public final int d;
    public final int e;
    public final int f;
    public final byte[] g;

    public lwa(String str, char[] cArr) {
        byte[] bArr = new byte[128];
        Arrays.fill(bArr, (byte) -1);
        int i = 0;
        while (true) {
            boolean z = true;
            if (i >= cArr.length) {
                break;
            }
            char c = cArr[i];
            zzam.zzd(c < 128, "Non-ASCII character: %s", c);
            if (bArr[c] != -1) {
                z = false;
            }
            zzam.zzd(z, "Duplicate character: %s", c);
            bArr[c] = (byte) i;
            i++;
        }
        this.a = str;
        this.b = cArr;
        try {
            int length = cArr.length;
            int iZzb = zzbh.zzb(length, RoundingMode.UNNECESSARY);
            this.d = iZzb;
            int iNumberOfTrailingZeros = Integer.numberOfTrailingZeros(iZzb);
            int i2 = 1 << (3 - iNumberOfTrailingZeros);
            this.e = i2;
            this.f = iZzb >> iNumberOfTrailingZeros;
            this.c = length - 1;
            this.g = bArr;
            boolean[] zArr = new boolean[i2];
            for (int i3 = 0; i3 < this.f; i3++) {
                zArr[zzbh.zza(i3 * 8, this.d, RoundingMode.CEILING)] = true;
            }
        } catch (ArithmeticException e) {
            cc.e(jh.b(cArr.length, "Illegal alphabet length "), e);
            throw null;
        }
    }

    public final boolean equals(Object obj) {
        return (obj instanceof lwa) && Arrays.equals(this.b, ((lwa) obj).b);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + 1237;
    }

    public final String toString() {
        return this.a;
    }
}
