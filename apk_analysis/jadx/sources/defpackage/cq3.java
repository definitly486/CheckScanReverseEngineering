package defpackage;

import android.util.Log;
import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes3.dex */
public final class cq3 {
    public ByteBuffer b;
    public bq3 c;
    public final byte[] a = new byte[256];
    public int d = 0;

    public final boolean a() {
        return this.c.b != 0;
    }

    public final bq3 b() {
        byte[] bArr;
        if (this.b == null) {
            ah.f("You must call setData() before parseHeader()");
            return null;
        }
        if (a()) {
            return this.c;
        }
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < 6; i++) {
            sb.append((char) c());
        }
        boolean zStartsWith = sb.toString().startsWith("GIF");
        bq3 bq3Var = this.c;
        if (zStartsWith) {
            bq3Var.f = this.b.getShort();
            this.c.g = this.b.getShort();
            int iC = c();
            bq3 bq3Var2 = this.c;
            bq3Var2.h = (iC & 128) != 0;
            bq3Var2.i = (int) Math.pow(2.0d, (iC & 7) + 1);
            this.c.j = c();
            bq3 bq3Var3 = this.c;
            c();
            bq3Var3.getClass();
            if (this.c.h && !a()) {
                bq3 bq3Var4 = this.c;
                bq3Var4.a = e(bq3Var4.i);
                bq3 bq3Var5 = this.c;
                bq3Var5.k = bq3Var5.a[bq3Var5.j];
            }
        } else {
            bq3Var.b = 1;
        }
        if (!a()) {
            boolean z = false;
            while (!z && !a() && this.c.c <= Integer.MAX_VALUE) {
                int iC2 = c();
                if (iC2 == 33) {
                    int iC3 = c();
                    if (iC3 == 1) {
                        f();
                    } else if (iC3 == 249) {
                        this.c.d = new yp3();
                        c();
                        int iC4 = c();
                        yp3 yp3Var = this.c.d;
                        int i2 = (iC4 & 28) >> 2;
                        yp3Var.g = i2;
                        if (i2 == 0) {
                            yp3Var.g = 1;
                        }
                        yp3Var.f = (iC4 & 1) != 0;
                        short s = this.b.getShort();
                        if (s < 2) {
                            s = 10;
                        }
                        yp3 yp3Var2 = this.c.d;
                        yp3Var2.i = s * 10;
                        yp3Var2.h = c();
                        c();
                    } else if (iC3 == 254) {
                        f();
                    } else if (iC3 != 255) {
                        f();
                    } else {
                        d();
                        StringBuilder sb2 = new StringBuilder();
                        int i3 = 0;
                        while (true) {
                            bArr = this.a;
                            if (i3 >= 11) {
                                break;
                            }
                            sb2.append((char) bArr[i3]);
                            i3++;
                        }
                        if (sb2.toString().equals("NETSCAPE2.0")) {
                            do {
                                d();
                                if (bArr[0] == 1) {
                                    byte b = bArr[1];
                                    byte b2 = bArr[2];
                                    this.c.getClass();
                                }
                                if (this.d <= 0) {
                                    break;
                                }
                            } while (!a());
                        } else {
                            f();
                        }
                    }
                } else if (iC2 == 44) {
                    bq3 bq3Var6 = this.c;
                    if (bq3Var6.d == null) {
                        bq3Var6.d = new yp3();
                    }
                    this.c.d.a = this.b.getShort();
                    this.c.d.b = this.b.getShort();
                    this.c.d.c = this.b.getShort();
                    this.c.d.d = this.b.getShort();
                    int iC5 = c();
                    boolean z2 = (iC5 & 128) != 0;
                    int iPow = (int) Math.pow(2.0d, (iC5 & 7) + 1);
                    yp3 yp3Var3 = this.c.d;
                    yp3Var3.e = (iC5 & 64) != 0;
                    if (z2) {
                        yp3Var3.k = e(iPow);
                    } else {
                        yp3Var3.k = null;
                    }
                    this.c.d.j = this.b.position();
                    c();
                    f();
                    if (!a()) {
                        bq3 bq3Var7 = this.c;
                        bq3Var7.c++;
                        bq3Var7.e.add(bq3Var7.d);
                    }
                } else if (iC2 != 59) {
                    this.c.b = 1;
                } else {
                    z = true;
                }
            }
            bq3 bq3Var8 = this.c;
            if (bq3Var8.c < 0) {
                bq3Var8.b = 1;
            }
        }
        return this.c;
    }

    public final int c() {
        try {
            return this.b.get() & 255;
        } catch (Exception unused) {
            this.c.b = 1;
            return 0;
        }
    }

    public final void d() {
        int iC = c();
        this.d = iC;
        if (iC <= 0) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            try {
                int i3 = this.d;
                if (i >= i3) {
                    return;
                }
                i2 = i3 - i;
                this.b.get(this.a, i, i2);
                i += i2;
            } catch (Exception e) {
                if (Log.isLoggable("GifHeaderParser", 3)) {
                    StringBuilder sbF = bg.f(i, i2, "Error Reading Block n: ", " count: ", " blockSize: ");
                    sbF.append(this.d);
                    Log.d("GifHeaderParser", sbF.toString(), e);
                }
                this.c.b = 1;
                return;
            }
        }
    }

    public final int[] e(int i) {
        byte[] bArr = new byte[i * 3];
        int[] iArr = null;
        try {
            this.b.get(bArr);
            iArr = new int[256];
            int i2 = 0;
            int i3 = 0;
            while (i2 < i) {
                int i4 = bArr[i3] & 255;
                int i5 = i3 + 2;
                int i6 = bArr[i3 + 1] & 255;
                i3 += 3;
                int i7 = i2 + 1;
                iArr[i2] = (i6 << 8) | (i4 << 16) | (-16777216) | (bArr[i5] & 255);
                i2 = i7;
            }
            return iArr;
        } catch (BufferUnderflowException e) {
            if (Log.isLoggable("GifHeaderParser", 3)) {
                Log.d("GifHeaderParser", "Format Error Reading Color Table", e);
            }
            this.c.b = 1;
            return iArr;
        }
    }

    public final void f() {
        int iC;
        do {
            iC = c();
            this.b.position(Math.min(this.b.position() + iC, this.b.limit()));
        } while (iC > 0);
    }
}
