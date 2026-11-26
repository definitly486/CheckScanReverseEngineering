package defpackage;

import com.google.android.gms.internal.fido.zzam;

/* JADX INFO: loaded from: classes4.dex */
public final class rwa extends ywa {
    public rwa(String str, String str2) {
        lwa lwaVar = new lwa(str, str2.toCharArray());
        super(lwaVar, (Character) '=');
        zzam.zzc(lwaVar.b.length == 64);
    }

    @Override // defpackage.ywa, com.google.android.gms.internal.fido.zzbf
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        int i2 = 0;
        zzam.zze(0, i, bArr.length);
        for (int i3 = i; i3 >= 3; i3 -= 3) {
            int i4 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16) | (bArr[i2 + 2] & 255);
            lwa lwaVar = this.b;
            char[] cArr = lwaVar.b;
            char[] cArr2 = lwaVar.b;
            sb.append(cArr[i4 >>> 18]);
            sb.append(cArr2[(i4 >>> 12) & 63]);
            sb.append(cArr2[(i4 >>> 6) & 63]);
            sb.append(cArr2[i4 & 63]);
            i2 += 3;
        }
        if (i2 < i) {
            c(sb, bArr, i2, i - i2);
        }
    }
}
