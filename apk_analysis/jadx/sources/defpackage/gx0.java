package defpackage;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.lang.reflect.Field;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;

/* JADX INFO: loaded from: classes5.dex */
public class gx0 implements Serializable, Comparable<gx0> {
    public static final gx0 e = new gx0(new byte[0]);
    public final byte[] b;
    public transient int c;
    public transient String d;

    public static final class a {
        /* JADX WARN: Code duplicated, block: B:66:0x00d0  */
        /* JADX WARN: Code duplicated, block: B:68:0x00d6 A[RETURN] */
        public static gx0 a(String str) {
            int i;
            char cCharAt;
            str.getClass();
            byte[] bArr = defpackage.a.a;
            int length = str.length();
            while (length > 0 && ((cCharAt = str.charAt(length - 1)) == '=' || cCharAt == '\n' || cCharAt == '\r' || cCharAt == ' ' || cCharAt == '\t')) {
                length--;
            }
            int i2 = (int) ((((long) length) * 6) / 8);
            byte[] bArrCopyOf = new byte[i2];
            int i3 = 0;
            int i4 = 0;
            int i5 = 0;
            int i6 = 0;
            while (true) {
                if (i3 >= length) {
                    int i7 = i4 % 4;
                    if (i7 != 1) {
                        if (i7 == 2) {
                            bArrCopyOf[i6] = (byte) ((i5 << 12) >> 16);
                            i6++;
                        } else if (i7 == 3) {
                            int i8 = i5 << 6;
                            int i9 = i6 + 1;
                            bArrCopyOf[i6] = (byte) (i8 >> 16);
                            i6 += 2;
                            bArrCopyOf[i9] = (byte) (i8 >> 8);
                        }
                        if (i6 != i2) {
                            bArrCopyOf = Arrays.copyOf(bArrCopyOf, i6);
                        }
                    }
                    if (bArrCopyOf != null) {
                        return new gx0(bArrCopyOf);
                    }
                    return null;
                }
                char cCharAt2 = str.charAt(i3);
                if ('A' <= cCharAt2 && cCharAt2 < '[') {
                    i = cCharAt2 - 'A';
                } else if ('a' <= cCharAt2 && cCharAt2 < '{') {
                    i = cCharAt2 - 'G';
                } else if ('0' <= cCharAt2 && cCharAt2 < ':') {
                    i = cCharAt2 + 4;
                } else if (cCharAt2 == '+' || cCharAt2 == '-') {
                    i = 62;
                } else {
                    if (cCharAt2 != '/' && cCharAt2 != '_') {
                        if (cCharAt2 != '\n' && cCharAt2 != '\r' && cCharAt2 != ' ' && cCharAt2 != '\t') {
                            break;
                        }
                    } else {
                        i = 63;
                    }
                    i3++;
                }
                i5 = (i5 << 6) | i;
                i4++;
                if (i4 % 4 == 0) {
                    bArrCopyOf[i6] = (byte) (i5 >> 16);
                    int i10 = i6 + 2;
                    bArrCopyOf[i6 + 1] = (byte) (i5 >> 8);
                    i6 += 3;
                    bArrCopyOf[i10] = (byte) i5;
                }
                i3++;
            }
            bArrCopyOf = null;
            if (bArrCopyOf != null) {
                return new gx0(bArrCopyOf);
            }
            return null;
        }

        public static gx0 b(String str) {
            if (str.length() % 2 != 0) {
                c9.f("Unexpected hex string: ".concat(str));
                return null;
            }
            int length = str.length() / 2;
            byte[] bArr = new byte[length];
            for (int i = 0; i < length; i++) {
                int i2 = i * 2;
                bArr[i] = (byte) (e.d(str.charAt(i2 + 1)) + (e.d(str.charAt(i2)) << 4));
            }
            return new gx0(bArr);
        }

        public static gx0 c(String str) {
            str.getClass();
            byte[] bytes = str.getBytes(ha1.b);
            bytes.getClass();
            gx0 gx0Var = new gx0(bytes);
            gx0Var.d = str;
            return gx0Var;
        }

        public static gx0 d(byte[] bArr) {
            gx0 gx0Var = gx0.e;
            int length = bArr.length;
            h.b(bArr.length, 0L, length);
            aq5.s(length, bArr.length);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, 0, length);
            bArrCopyOfRange.getClass();
            return new gx0(bArrCopyOfRange);
        }
    }

    public gx0(byte[] bArr) {
        bArr.getClass();
        this.b = bArr;
    }

    public static int j(gx0 gx0Var, gx0 gx0Var2) {
        gx0Var.getClass();
        gx0Var2.getClass();
        return gx0Var.i(0, gx0Var2.k());
    }

    public static int p(gx0 gx0Var, gx0 gx0Var2) {
        gx0Var.getClass();
        gx0Var2.getClass();
        return gx0Var.o(gx0Var2.k());
    }

    public static final gx0 q(byte... bArr) {
        bArr.getClass();
        return new gx0(Arrays.copyOf(bArr, bArr.length));
    }

    private final void readObject(ObjectInputStream objectInputStream) throws IllegalAccessException, NoSuchFieldException, IOException {
        int i = objectInputStream.readInt();
        if (i < 0) {
            c9.f(jh.b(i, "byteCount < 0: "));
            return;
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        while (i2 < i) {
            int i3 = objectInputStream.read(bArr, i2, i - i2);
            if (i3 == -1) {
                n7.e();
                return;
            }
            i2 += i3;
        }
        gx0 gx0Var = new gx0(bArr);
        Field declaredField = gx0.class.getDeclaredField("b");
        declaredField.setAccessible(true);
        declaredField.set(this, gx0Var.b);
    }

    public static gx0 u(gx0 gx0Var, int i, int i2, int i3) {
        if ((i3 & 1) != 0) {
            i = 0;
        }
        if ((i3 & 2) != 0) {
            i2 = -1234567890;
        }
        return gx0Var.t(i, i2);
    }

    private final void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeInt(this.b.length);
        objectOutputStream.write(this.b);
    }

    public String a() {
        byte[] bArr = this.b;
        byte[] bArr2 = defpackage.a.a;
        bArr.getClass();
        bArr2.getClass();
        byte[] bArr3 = new byte[((bArr.length + 2) / 3) * 4];
        int length = bArr.length - (bArr.length % 3);
        int i = 0;
        int i2 = 0;
        while (i < length) {
            byte b = bArr[i];
            int i3 = i + 2;
            byte b2 = bArr[i + 1];
            i += 3;
            byte b3 = bArr[i3];
            bArr3[i2] = bArr2[(b & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b & 3) << 4) | ((b2 & 255) >> 4)];
            int i4 = i2 + 3;
            bArr3[i2 + 2] = bArr2[((b2 & 15) << 2) | ((b3 & 255) >> 6)];
            i2 += 4;
            bArr3[i4] = bArr2[b3 & 63];
        }
        int length2 = bArr.length - length;
        if (length2 == 1) {
            byte b4 = bArr[i];
            bArr3[i2] = bArr2[(b4 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[(b4 & 3) << 4];
            bArr3[i2 + 2] = 61;
            bArr3[i2 + 3] = 61;
        } else if (length2 == 2) {
            int i5 = i + 1;
            byte b5 = bArr[i];
            byte b6 = bArr[i5];
            bArr3[i2] = bArr2[(b5 & 255) >> 2];
            bArr3[i2 + 1] = bArr2[((b5 & 3) << 4) | ((b6 & 255) >> 4)];
            bArr3[i2 + 2] = bArr2[(b6 & 15) << 2];
            bArr3[i2 + 3] = 61;
        }
        return new String(bArr3, ha1.b);
    }

    @Override // java.lang.Comparable
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public final int compareTo(gx0 gx0Var) {
        gx0Var.getClass();
        int iF = f();
        int iF2 = gx0Var.f();
        int iMin = Math.min(iF, iF2);
        for (int i = 0; i < iMin; i++) {
            int iN = n(i) & 255;
            int iN2 = gx0Var.n(i) & 255;
            if (iN != iN2) {
                return iN < iN2 ? -1 : 1;
            }
        }
        if (iF == iF2) {
            return 0;
        }
        return iF < iF2 ? -1 : 1;
    }

    public gx0 e(String str) throws NoSuchAlgorithmException {
        MessageDigest messageDigest = MessageDigest.getInstance(str);
        messageDigest.update(this.b, 0, f());
        byte[] bArrDigest = messageDigest.digest();
        bArrDigest.getClass();
        return new gx0(bArrDigest);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof gx0) {
            gx0 gx0Var = (gx0) obj;
            int iF = gx0Var.f();
            byte[] bArr = this.b;
            if (iF == bArr.length && gx0Var.r(0, 0, bArr.length, bArr)) {
                return true;
            }
        }
        return false;
    }

    public int f() {
        return this.b.length;
    }

    public String g() {
        byte[] bArr = this.b;
        char[] cArr = new char[bArr.length * 2];
        int i = 0;
        for (byte b : bArr) {
            int i2 = i + 1;
            char[] cArr2 = c.b;
            cArr[i] = cArr2[(b >> 4) & 15];
            i += 2;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public int hashCode() {
        int i = this.c;
        if (i != 0) {
            return i;
        }
        int iHashCode = Arrays.hashCode(this.b);
        this.c = iHashCode;
        return iHashCode;
    }

    public int i(int i, byte[] bArr) {
        bArr.getClass();
        int length = this.b.length - bArr.length;
        int iMax = Math.max(i, 0);
        if (iMax > length) {
            return -1;
        }
        while (!h.a(iMax, 0, bArr.length, this.b, bArr)) {
            if (iMax == length) {
                return -1;
            }
            iMax++;
        }
        return iMax;
    }

    public byte[] k() {
        return this.b;
    }

    public byte n(int i) {
        return this.b[i];
    }

    public int o(byte[] bArr) {
        bArr.getClass();
        for (int iMin = Math.min(f(), this.b.length - bArr.length); -1 < iMin; iMin--) {
            if (h.a(iMin, 0, bArr.length, this.b, bArr)) {
                return iMin;
            }
        }
        return -1;
    }

    public boolean r(int i, int i2, int i3, byte[] bArr) {
        bArr.getClass();
        if (i < 0) {
            return false;
        }
        byte[] bArr2 = this.b;
        return i <= bArr2.length - i3 && i2 >= 0 && i2 <= bArr.length - i3 && h.a(i, i2, i3, bArr2, bArr);
    }

    public boolean s(int i, gx0 gx0Var, int i2) {
        gx0Var.getClass();
        return gx0Var.r(0, i, i2, this.b);
    }

    public gx0 t(int i, int i2) {
        if (i2 == -1234567890) {
            i2 = f();
        }
        if (i < 0) {
            fg.c("beginIndex < 0");
            return null;
        }
        byte[] bArr = this.b;
        if (i2 > bArr.length) {
            c9.f(rg.h(new StringBuilder("endIndex > length("), this.b.length, ')'));
            return null;
        }
        if (i2 - i < 0) {
            fg.c("endIndex < beginIndex");
            return null;
        }
        if (i == 0 && i2 == bArr.length) {
            return this;
        }
        aq5.s(i2, bArr.length);
        byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr, i, i2);
        bArrCopyOfRange.getClass();
        return new gx0(bArrCopyOfRange);
    }

    /* JADX WARN: Code duplicated, block: B:23:0x003f A[EDGE_INSN: B:23:0x003f->B:179:0x01b6 BREAK  A[LOOP:0: B:7:0x000e->B:240:0x000e]] */
    public String toString() {
        byte b;
        int i;
        gx0 gx0Var = this;
        byte[] bArr = gx0Var.b;
        if (bArr.length == 0) {
            return "[size=0]";
        }
        int length = bArr.length;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        loop0: while (i2 < length) {
            byte b2 = bArr[i2];
            if (b2 < 0) {
                if ((b2 >> 5) != -2) {
                    if ((b2 >> 4) != -2) {
                        if ((b2 >> 3) != -2) {
                            if (i4 == 64) {
                                break;
                            }
                            i3 = -1;
                            break;
                        }
                        int i5 = i2 + 3;
                        if (length > i5) {
                            byte b3 = bArr[i2 + 1];
                            if ((b3 & 192) != 128) {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                            byte b4 = bArr[i2 + 2];
                            if ((b4 & 192) != 128) {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                            byte b5 = bArr[i5];
                            if ((b5 & 192) != 128) {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                            int i6 = (((b5 ^ 3678080) ^ (b4 << 6)) ^ (b3 << 12)) ^ (b2 << 18);
                            if (i6 <= 1114111) {
                                if (55296 <= i6 && i6 < 57344) {
                                    if (i4 == 64) {
                                        break;
                                    }
                                    i3 = -1;
                                    break;
                                }
                                if (i6 >= 65536) {
                                    i = i4 + 1;
                                    if (i4 == 64) {
                                        break;
                                    }
                                    if ((i6 != 10 && i6 != 13 && ((i6 >= 0 && i6 < 32) || (127 <= i6 && i6 < 160))) || i6 == 65533) {
                                        i3 = -1;
                                        break;
                                    }
                                    i3 += i6 < 65536 ? 1 : 2;
                                    j59 j59Var = j59.a;
                                    i2 += 4;
                                    i4 = i;
                                } else {
                                    if (i4 == 64) {
                                        break;
                                    }
                                    i3 = -1;
                                    break;
                                }
                            } else {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                        } else {
                            if (i4 == 64) {
                                break;
                            }
                            i3 = -1;
                            break;
                        }
                    } else {
                        int i7 = i2 + 2;
                        if (length > i7) {
                            byte b6 = bArr[i2 + 1];
                            if ((b6 & 192) != 128) {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                            byte b7 = bArr[i7];
                            if ((b7 & 192) != 128) {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                            int i8 = ((b7 ^ (-123008)) ^ (b6 << 6)) ^ (b2 << 12);
                            if (i8 >= 2048) {
                                if (55296 <= i8 && i8 < 57344) {
                                    if (i4 == 64) {
                                        break;
                                    }
                                    i3 = -1;
                                    break;
                                }
                                i = i4 + 1;
                                if (i4 == 64) {
                                    break;
                                }
                                if ((i8 != 10 && i8 != 13 && ((i8 >= 0 && i8 < 32) || (127 <= i8 && i8 < 160))) || i8 == 65533) {
                                    i3 = -1;
                                    break;
                                }
                                i3 += i8 < 65536 ? 1 : 2;
                                j59 j59Var2 = j59.a;
                                i2 += 3;
                                i4 = i;
                            } else {
                                if (i4 == 64) {
                                    break;
                                }
                                i3 = -1;
                                break;
                            }
                        } else {
                            if (i4 == 64) {
                                break;
                            }
                            i3 = -1;
                            break;
                        }
                    }
                } else {
                    int i9 = i2 + 1;
                    if (length > i9) {
                        byte b8 = bArr[i9];
                        if ((b8 & 192) != 128) {
                            if (i4 == 64) {
                                break;
                            }
                            i3 = -1;
                            break;
                        }
                        int i10 = (b8 ^ 3968) ^ (b2 << 6);
                        if (i10 >= 128) {
                            i = i4 + 1;
                            if (i4 == 64) {
                                break;
                            }
                            if ((i10 != 10 && i10 != 13 && ((i10 >= 0 && i10 < 32) || (127 <= i10 && i10 < 160))) || i10 == 65533) {
                                i3 = -1;
                                break;
                            }
                            i3 += i10 < 65536 ? 1 : 2;
                            j59 j59Var3 = j59.a;
                            i2 += 2;
                            i4 = i;
                        } else {
                            if (i4 == 64) {
                                break;
                            }
                            i3 = -1;
                            break;
                        }
                    } else {
                        if (i4 == 64) {
                            break;
                        }
                        i3 = -1;
                        break;
                    }
                }
            } else {
                int i11 = i4 + 1;
                if (i4 == 64) {
                    break;
                }
                if ((b2 == 10 || b2 == 13 || ((b2 < 0 || b2 >= 32) && (127 > b2 || b2 >= 160))) && b2 != 65533) {
                    i3 += b2 < 65536 ? 1 : 2;
                    i2++;
                    while (true) {
                        i4 = i11;
                        if (i2 < length && (b = bArr[i2]) >= 0) {
                            i2++;
                            i11 = i4 + 1;
                            if (i4 == 64) {
                                break loop0;
                            }
                            if ((b == 10 || b == 13 || ((b < 0 || b >= 32) && (127 > b || b >= 160))) && b != 65533) {
                                i3 += b < 65536 ? 1 : 2;
                            }
                        } else {
                            j59 j59Var4 = j59.a;
                        }
                    }
                }
                i3 = -1;
                break;
            }
        }
        if (i3 != -1) {
            String strX = gx0Var.x();
            String strY = ra8.y(ra8.y(ra8.y(strX.substring(0, i3), "\\", "\\\\"), "\n", "\\n"), "\r", "\\r");
            if (i3 >= strX.length()) {
                return lt0.d(']', "[text=", strY);
            }
            return "[size=" + gx0Var.b.length + " text=" + strY + "…]";
        }
        if (gx0Var.b.length <= 64) {
            return "[hex=" + gx0Var.g() + ']';
        }
        StringBuilder sb = new StringBuilder("[size=");
        sb.append(gx0Var.b.length);
        sb.append(" hex=");
        byte[] bArr2 = gx0Var.b;
        if (64 > bArr2.length) {
            c9.f(rg.h(new StringBuilder("endIndex > length("), gx0Var.b.length, ')'));
            return null;
        }
        if (64 != bArr2.length) {
            aq5.s(64, bArr2.length);
            byte[] bArrCopyOfRange = Arrays.copyOfRange(bArr2, 0, 64);
            bArrCopyOfRange.getClass();
            gx0Var = new gx0(bArrCopyOfRange);
        }
        sb.append(gx0Var.g());
        sb.append("…]");
        return sb.toString();
    }

    public gx0 v() {
        int i = 0;
        while (true) {
            byte[] bArr = this.b;
            if (i >= bArr.length) {
                return this;
            }
            byte b = bArr[i];
            if (b >= 65 && b <= 90) {
                byte[] bArrCopyOf = Arrays.copyOf(bArr, bArr.length);
                bArrCopyOf[i] = (byte) (b + 32);
                for (int i2 = i + 1; i2 < bArrCopyOf.length; i2++) {
                    byte b2 = bArrCopyOf[i2];
                    if (b2 >= 65 && b2 <= 90) {
                        bArrCopyOf[i2] = (byte) (b2 + 32);
                    }
                }
                return new gx0(bArrCopyOf);
            }
            i++;
        }
    }

    public byte[] w() {
        byte[] bArr = this.b;
        return Arrays.copyOf(bArr, bArr.length);
    }

    public final String x() {
        String str = this.d;
        if (str != null) {
            return str;
        }
        byte[] bArrK = k();
        bArrK.getClass();
        String str2 = new String(bArrK, ha1.b);
        this.d = str2;
        return str2;
    }

    public void y(bu0 bu0Var, int i) {
        bu0Var.write(this.b, 0, i);
    }
}
