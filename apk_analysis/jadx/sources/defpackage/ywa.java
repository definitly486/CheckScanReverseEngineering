package defpackage;

import com.google.android.gms.internal.fido.zzam;
import com.google.android.gms.internal.fido.zzan;
import com.google.android.gms.internal.fido.zzbf;
import com.google.android.gms.internal.fido.zzbh;
import java.math.RoundingMode;

/* JADX INFO: loaded from: classes4.dex */
public class ywa extends zzbf {
    public final lwa b;
    public final Character c;

    public ywa(lwa lwaVar, Character ch) {
        this.b = lwaVar;
        if (ch == null || lwaVar.g[61] == -1) {
            this.c = ch;
        } else {
            fg.c(zzan.zza("Padding character %s was already in alphabet", ch));
            throw null;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzbf
    public void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzam.zze(0, i, bArr.length);
        while (i2 < i) {
            lwa lwaVar = this.b;
            c(sb, bArr, i2, Math.min(lwaVar.f, i - i2));
            i2 += lwaVar.f;
        }
    }

    @Override // com.google.android.gms.internal.fido.zzbf
    public final int b(int i) {
        lwa lwaVar = this.b;
        return zzbh.zza(i, lwaVar.f, RoundingMode.CEILING) * lwaVar.e;
    }

    public final void c(StringBuilder sb, byte[] bArr, int i, int i2) {
        zzam.zze(i, i + i2, bArr.length);
        lwa lwaVar = this.b;
        int i3 = lwaVar.f;
        int i4 = lwaVar.d;
        int i5 = 0;
        zzam.zzc(i2 <= i3);
        long j = 0;
        for (int i6 = 0; i6 < i2; i6++) {
            j = (j | ((long) (bArr[i + i6] & 255))) << 8;
        }
        int i7 = ((i2 + 1) * 8) - i4;
        while (i5 < i2 * 8) {
            sb.append(lwaVar.b[lwaVar.c & ((int) (j >>> (i7 - i5)))]);
            i5 += i4;
        }
        if (this.c != null) {
            while (i5 < lwaVar.f * 8) {
                sb.append('=');
                i5 += i4;
            }
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ywa) {
            ywa ywaVar = (ywa) obj;
            if (this.b.equals(ywaVar.b)) {
                Object obj2 = ywaVar.c;
                Character ch = this.c;
                if (ch == obj2) {
                    return true;
                }
                if (ch != null && ch.equals(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        int iHashCode = this.b.hashCode();
        Character ch = this.c;
        return (ch == null ? 0 : ch.hashCode()) ^ iHashCode;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("BaseEncoding.");
        lwa lwaVar = this.b;
        sb.append(lwaVar);
        if (8 % lwaVar.d != 0) {
            Character ch = this.c;
            if (ch == null) {
                sb.append(".omitPadding()");
            } else {
                sb.append(".withPadChar('");
                sb.append(ch);
                sb.append("')");
            }
        }
        return sb.toString();
    }

    public ywa(String str, String str2) {
        this(new lwa(str, str2.toCharArray()), (Character) '=');
    }
}
