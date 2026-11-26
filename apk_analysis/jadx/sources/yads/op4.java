package yads;

import androidx.media3.extractor.ogg.OggPageHeader;
import java.io.EOFException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes6.dex */
public final class op4 {
    public final pp4 a = new pp4();
    public final os4 b = new os4(new byte[OggPageHeader.MAX_PAGE_PAYLOAD], 0);
    public int c = -1;
    public int d;
    public boolean e;

    public final boolean a(wk0 wk0Var) {
        int i;
        pp4 pp4Var;
        int i2;
        int i3;
        if (wk0Var == null) {
            defpackage.ud.g();
            return false;
        }
        if (this.e) {
            this.e = false;
            this.b.c(0);
        }
        while (true) {
            if (this.e) {
                return true;
            }
            int i4 = this.c;
            if (i4 < 0) {
                if (this.a.a(wk0Var, -1L) && this.a.a(wk0Var, true)) {
                    pp4 pp4Var2 = this.a;
                    int i5 = pp4Var2.d;
                    if ((pp4Var2.a & 1) == 1 && this.b.c == 0) {
                        this.d = 0;
                        int i6 = 0;
                        while (true) {
                            i3 = this.d;
                            pp4 pp4Var3 = this.a;
                            if (i3 >= pp4Var3.c) {
                                break;
                            }
                            int[] iArr = pp4Var3.f;
                            int i7 = i3 + 1;
                            this.d = i7;
                            int i8 = iArr[i3];
                            i6 += i8;
                            if (i8 != 255) {
                                i3 = i7;
                                break;
                            }
                        }
                        i5 += i6;
                        i4 = i3;
                    } else {
                        i4 = 0;
                    }
                    try {
                        wk0Var.a(i5);
                        this.c = i4;
                    } catch (EOFException unused) {
                    }
                }
                return false;
            }
            this.d = 0;
            int i9 = 0;
            do {
                i = this.d;
                int i10 = i4 + i;
                pp4Var = this.a;
                if (i10 >= pp4Var.c) {
                    break;
                }
                int[] iArr2 = pp4Var.f;
                i++;
                this.d = i;
                i2 = iArr2[i10];
                i9 += i2;
            } while (i2 == 255);
            int i11 = this.c + i;
            if (i9 > 0) {
                os4 os4Var = this.b;
                os4Var.a(os4Var.c + i9);
                os4 os4Var2 = this.b;
                try {
                    wk0Var.a(os4Var2.a, os4Var2.c, i9, false);
                    os4 os4Var3 = this.b;
                    os4Var3.d(os4Var3.c + i9);
                    pp4Var = this.a;
                    this.e = pp4Var.f[i11 + (-1)] != 255;
                } catch (EOFException unused2) {
                    return false;
                }
            }
            if (i11 == pp4Var.c) {
                i11 = -1;
            }
            this.c = i11;
        }
    }

    public final void a() {
        os4 os4Var = this.b;
        byte[] bArr = os4Var.a;
        if (bArr.length == 65025) {
            return;
        }
        byte[] bArrCopyOf = Arrays.copyOf(bArr, Math.max(OggPageHeader.MAX_PAGE_PAYLOAD, os4Var.c));
        int i = this.b.c;
        os4Var.a = bArrCopyOf;
        os4Var.c = i;
        os4Var.b = 0;
    }
}
