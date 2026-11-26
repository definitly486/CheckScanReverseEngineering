package defpackage;

import com.google.android.gms.internal.fido.zzam;

/* JADX INFO: loaded from: classes4.dex */
public final class nwa extends ywa {
    public final char[] d;

    public nwa() {
        lwa lwaVar = new lwa("base16()", new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'});
        super(lwaVar, (Character) null);
        this.d = new char[512];
        char[] cArr = lwaVar.b;
        zzam.zzc(cArr.length == 16);
        for (int i = 0; i < 256; i++) {
            char[] cArr2 = this.d;
            cArr2[i] = cArr[i >>> 4];
            cArr2[i | 256] = cArr[i & 15];
        }
    }

    @Override // defpackage.ywa, com.google.android.gms.internal.fido.zzbf
    public final void a(StringBuilder sb, byte[] bArr, int i) {
        zzam.zze(0, i, bArr.length);
        for (int i2 = 0; i2 < i; i2++) {
            int i3 = bArr[i2] & 255;
            char[] cArr = this.d;
            sb.append(cArr[i3]);
            sb.append(cArr[i3 | 256]);
        }
    }
}
