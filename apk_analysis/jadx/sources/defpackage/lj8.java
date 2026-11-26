package defpackage;

import com.google.android.gms.internal.measurement.zzaio;

/* JADX INFO: loaded from: classes4.dex */
public final class lj8 implements rxa {
    public static final /* synthetic */ lj8 b = new lj8();

    public static int a(bx0 bx0Var, boolean z) {
        int i = bx0Var.b;
        int i2 = bx0Var.c;
        int i3 = z ? i2 : i;
        if (!z) {
            i = i2;
        }
        byte[][] bArr = bx0Var.a;
        int i4 = 0;
        for (int i5 = 0; i5 < i3; i5++) {
            byte b2 = -1;
            int i6 = 0;
            for (int i7 = 0; i7 < i; i7++) {
                byte b3 = z ? bArr[i5][i7] : bArr[i7][i5];
                if (b3 == b2) {
                    i6++;
                } else {
                    if (i6 >= 5) {
                        i4 += i6 - 2;
                    }
                    i6 = 1;
                    b2 = b3;
                }
            }
            if (i6 >= 5) {
                i4 = (i6 - 2) + i4;
            }
        }
        return i4;
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        return new Boolean(zzaio.zza());
    }
}
