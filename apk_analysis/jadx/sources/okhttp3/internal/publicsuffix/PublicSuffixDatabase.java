package okhttp3.internal.publicsuffix;

import androidx.webkit.ProxyConfig;
import defpackage.aa4;
import defpackage.ah;
import defpackage.gb9;
import defpackage.iy6;
import defpackage.j59;
import defpackage.jp7;
import defpackage.kx2;
import defpackage.m96;
import defpackage.pn1;
import defpackage.qn1;
import defpackage.r07;
import defpackage.ta8;
import defpackage.u96;
import defpackage.vp3;
import defpackage.xt3;
import defpackage.z86;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes5.dex */
public final class PublicSuffixDatabase {
    public static final byte[] e = {42};
    public static final List<String> f = u96.h(ProxyConfig.MATCH_ALL_SCHEMES);
    public static final PublicSuffixDatabase g = new PublicSuffixDatabase();
    public final AtomicBoolean a = new AtomicBoolean(false);
    public final CountDownLatch b = new CountDownLatch(1);
    public byte[] c;
    public byte[] d;

    public static final class a {
        public static String a(byte[] bArr, byte[][] bArr2, int i) {
            int i2;
            boolean z;
            int i3;
            int i4;
            int length = bArr.length;
            int i5 = 0;
            while (i5 < length) {
                int i6 = (i5 + length) / 2;
                while (i6 > -1 && bArr[i6] != 10) {
                    i6--;
                }
                int i7 = i6 + 1;
                int i8 = 1;
                while (true) {
                    i2 = i7 + i8;
                    if (bArr[i2] == 10) {
                        break;
                    }
                    i8++;
                }
                int i9 = i2 - i7;
                int i10 = i;
                boolean z2 = false;
                int i11 = 0;
                int i12 = 0;
                while (true) {
                    if (z2) {
                        i3 = 46;
                        z = false;
                    } else {
                        byte b = bArr2[i10][i11];
                        byte[] bArr3 = gb9.a;
                        int i13 = b & 255;
                        z = z2;
                        i3 = i13;
                    }
                    byte b2 = bArr[i7 + i12];
                    byte[] bArr4 = gb9.a;
                    i4 = i3 - (b2 & 255);
                    if (i4 != 0) {
                        break;
                    }
                    i12++;
                    i11++;
                    if (i12 == i9) {
                        break;
                    }
                    if (bArr2[i10].length != i11) {
                        z2 = z;
                    } else {
                        if (i10 == bArr2.length - 1) {
                            break;
                        }
                        i10++;
                        i11 = -1;
                        z2 = true;
                    }
                }
                if (i4 >= 0) {
                    if (i4 <= 0) {
                        int i14 = i9 - i12;
                        int length2 = bArr2[i10].length - i11;
                        int length3 = bArr2.length;
                        for (int i15 = i10 + 1; i15 < length3; i15++) {
                            length2 += bArr2[i15].length;
                        }
                        if (length2 >= i14) {
                            if (length2 <= i14) {
                                Charset charset = StandardCharsets.UTF_8;
                                charset.getClass();
                                return new String(bArr, i7, i9, charset);
                            }
                        }
                    }
                    i5 = i2 + 1;
                }
                length = i6;
            }
            return null;
        }
    }

    public static List c(String str) {
        List listX = ta8.X(str, new char[]{'.'});
        return aa4.e(qn1.b0(listX), "") ? qn1.P(listX) : listX;
    }

    public final String a(String str) {
        String strA;
        String strA2;
        String strA3;
        List<String> listX;
        int size;
        int size2;
        String unicode = IDN.toUnicode(str);
        unicode.getClass();
        List listC = c(unicode);
        List<String> listX2 = kx2.b;
        if (this.a.get() || !this.a.compareAndSet(false, true)) {
            try {
                this.b.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            boolean z = false;
            while (true) {
                try {
                    try {
                        b();
                        break;
                    } catch (InterruptedIOException unused2) {
                        Thread.interrupted();
                        z = true;
                    } catch (IOException e2) {
                        z86 z86Var = z86.a;
                        z86.a.getClass();
                        z86.i("Failed to read public suffix list", 5, e2);
                        if (z) {
                        }
                    }
                } catch (Throwable th) {
                    if (z) {
                        Thread.currentThread().interrupt();
                    }
                    throw th;
                }
            }
            if (z) {
                Thread.currentThread().interrupt();
            }
        }
        if (this.c == null) {
            ah.f("Unable to load publicsuffixes.gz resource from the classpath.");
            return null;
        }
        int size3 = listC.size();
        byte[][] bArr = new byte[size3][];
        for (int i = 0; i < size3; i++) {
            String str2 = (String) listC.get(i);
            Charset charset = StandardCharsets.UTF_8;
            charset.getClass();
            byte[] bytes = str2.getBytes(charset);
            bytes.getClass();
            bArr[i] = bytes;
        }
        int i2 = 0;
        while (true) {
            if (i2 >= size3) {
                strA = null;
                break;
            }
            byte[] bArr2 = this.c;
            if (bArr2 == null) {
                aa4.j("publicSuffixListBytes");
                throw null;
            }
            strA = a.a(bArr2, bArr, i2);
            if (strA != null) {
                break;
            }
            i2++;
        }
        if (size3 <= 1) {
            strA2 = null;
            break;
        }
        byte[][] bArr3 = (byte[][]) bArr.clone();
        int length = bArr3.length - 1;
        int i3 = 0;
        while (true) {
            if (i3 >= length) {
                strA2 = null;
                break;
            }
            bArr3[i3] = e;
            byte[] bArr4 = this.c;
            if (bArr4 == null) {
                aa4.j("publicSuffixListBytes");
                throw null;
            }
            strA2 = a.a(bArr4, bArr3, i3);
            if (strA2 != null) {
                break;
            }
            i3++;
        }
        if (strA2 == null) {
            strA3 = null;
            break;
        }
        int i4 = size3 - 1;
        int i5 = 0;
        while (true) {
            if (i5 >= i4) {
                strA3 = null;
                break;
            }
            byte[] bArr5 = this.d;
            if (bArr5 == null) {
                aa4.j("publicSuffixExceptionListBytes");
                throw null;
            }
            strA3 = a.a(bArr5, bArr, i5);
            if (strA3 != null) {
                break;
            }
            i5++;
        }
        if (strA3 != null) {
            listX = ta8.X("!".concat(strA3), new char[]{'.'});
        } else if (strA == null && strA2 == null) {
            listX = f;
        } else {
            List<String> listX3 = strA != null ? ta8.X(strA, new char[]{'.'}) : listX2;
            if (strA2 != null) {
                listX2 = ta8.X(strA2, new char[]{'.'});
            }
            listX = listX3.size() > listX2.size() ? listX3 : listX2;
        }
        if (listC.size() == listX.size() && listX.get(0).charAt(0) != '!') {
            return null;
        }
        if (listX.get(0).charAt(0) == '!') {
            size = listC.size();
            size2 = listX.size();
        } else {
            size = listC.size();
            size2 = listX.size() + 1;
        }
        return jp7.m(jp7.j(new pn1(c(str)), size - size2), ".", null, 62);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v4, types: [T, byte[]] */
    /* JADX WARN: Type inference failed for: r3v7, types: [T, byte[]] */
    public final void b() {
        try {
            r07 r07Var = new r07();
            r07 r07Var2 = new r07();
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream("publicsuffixes.gz");
            if (resourceAsStream != null) {
                iy6 iy6Var = new iy6(new xt3(vp3.g(resourceAsStream)));
                try {
                    long j = iy6Var.readInt();
                    iy6Var.c0(j);
                    r07Var.b = iy6Var.c.Z(j);
                    long j2 = iy6Var.readInt();
                    iy6Var.c0(j2);
                    r07Var2.b = iy6Var.c.Z(j2);
                    j59 j59Var = j59.a;
                    iy6Var.close();
                    synchronized (this) {
                        T t = r07Var.b;
                        t.getClass();
                        this.c = (byte[]) t;
                        T t2 = r07Var2.b;
                        t2.getClass();
                        this.d = (byte[]) t2;
                    }
                } catch (Throwable th) {
                    try {
                        throw th;
                    } catch (Throwable th2) {
                        m96.c(iy6Var, th);
                        throw th2;
                    }
                }
            }
            this.b.countDown();
        } catch (Throwable th3) {
            this.b.countDown();
            throw th3;
        }
    }
}
