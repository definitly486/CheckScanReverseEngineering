package yads;

import androidx.media3.muxer.WebmConstants;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class md4 {
    public final int a;
    public boolean b;
    public boolean c;
    public byte[] d;
    public int e;

    public md4(int i) {
        this.a = i;
        byte[] bArr = new byte[WebmConstants.MkvEbmlElement.TRACK_TYPE];
        this.d = bArr;
        bArr[2] = 1;
    }

    public final void a(byte[] bArr, int i, int i2) {
        if (this.b) {
            int i3 = i2 - i;
            byte[] bArrCopyOf = this.d;
            int length = bArrCopyOf.length;
            int i4 = this.e + i3;
            if (length < i4) {
                bArrCopyOf = Arrays.copyOf(bArrCopyOf, i4 * 2);
                this.d = bArrCopyOf;
            }
            System.arraycopy(bArr, i, bArrCopyOf, this.e, i3);
            this.e += i3;
        }
    }

    public final void b(int i) {
        if (this.b) {
            defpackage.ud.g();
            return;
        }
        boolean z = i == this.a;
        this.b = z;
        if (z) {
            this.e = 3;
            this.c = false;
        }
    }

    public final boolean a(int i) {
        if (!this.b) {
            return false;
        }
        this.e -= i;
        this.b = false;
        this.c = true;
        return true;
    }
}
