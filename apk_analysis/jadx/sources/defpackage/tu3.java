package defpackage;

import java.io.Serializable;

/* JADX INFO: loaded from: classes4.dex */
public abstract class tu3 {
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static final class a extends tu3 implements Serializable {
        public final byte[] c;

        public a(byte[] bArr) {
            bArr.getClass();
            this.c = bArr;
        }

        @Override // defpackage.tu3
        public final int a() {
            byte[] bArr = this.c;
            o8.p(bArr.length, "HashCode#asInt() requires >= 4 bytes (it only has %s bytes).", bArr.length >= 4);
            return ((bArr[3] & 255) << 24) | (bArr[0] & 255) | ((bArr[1] & 255) << 8) | ((bArr[2] & 255) << 16);
        }

        @Override // defpackage.tu3
        public final int b() {
            return this.c.length * 8;
        }

        @Override // defpackage.tu3
        public final boolean d(tu3 tu3Var) {
            byte[] bArr = this.c;
            if (bArr.length != tu3Var.e().length) {
                return false;
            }
            boolean z = true;
            for (int i = 0; i < bArr.length; i++) {
                z &= bArr[i] == tu3Var.e()[i];
            }
            return z;
        }

        @Override // defpackage.tu3
        public final byte[] e() {
            return this.c;
        }
    }

    public abstract int a();

    public abstract int b();

    public abstract boolean d(tu3 tu3Var);

    public abstract byte[] e();

    public final boolean equals(Object obj) {
        if (!(obj instanceof tu3)) {
            return false;
        }
        tu3 tu3Var = (tu3) obj;
        return b() == tu3Var.b() && d(tu3Var);
    }

    public final int hashCode() {
        if (b() >= 32) {
            return a();
        }
        byte[] bArrE = e();
        int i = bArrE[0] & 255;
        for (int i2 = 1; i2 < bArrE.length; i2++) {
            i |= (bArrE[i2] & 255) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] bArrE = e();
        StringBuilder sb = new StringBuilder(bArrE.length * 2);
        for (byte b2 : bArrE) {
            char[] cArr = b;
            sb.append(cArr[(b2 >> 4) & 15]);
            sb.append(cArr[b2 & 15]);
        }
        return sb.toString();
    }
}
