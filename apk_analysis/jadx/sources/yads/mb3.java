package yads;

import androidx.media3.common.MimeTypes;
import androidx.media3.muxer.MuxerUtil;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class mb3 extends vk5 {
    public static final kb3 b = new defpackage.yq(5);
    public final kb3 a;

    public mb3() {
        this.a = null;
    }

    /* JADX WARN: Code duplicated, block: B:136:0x01b6  */
    /* JADX WARN: Code duplicated, block: B:155:0x01ef  */
    /* JADX WARN: Code duplicated, block: B:157:0x01f7  */
    /* JADX WARN: Code duplicated, block: B:165:0x0210  */
    /* JADX WARN: Code duplicated, block: B:167:0x0216  */
    /* JADX WARN: Code duplicated, block: B:173:0x0225 A[Catch: all -> 0x020e, UnsupportedEncodingException -> 0x0256, TryCatch #2 {UnsupportedEncodingException -> 0x0256, blocks: (B:175:0x0237, B:162:0x0209, B:172:0x0220, B:173:0x0225), top: B:188:0x011c }] */
    /* JADX WARN: Code duplicated, block: B:175:0x0237 A[Catch: all -> 0x020e, UnsupportedEncodingException -> 0x0256, TRY_LEAVE, TryCatch #2 {UnsupportedEncodingException -> 0x0256, blocks: (B:175:0x0237, B:162:0x0209, B:172:0x0220, B:173:0x0225), top: B:188:0x011c }] */
    /* JADX WARN: Instruction removed from duplicated block: B:175:0x0237, please report this as an issue */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v10 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v13 */
    /* JADX WARN: Type inference failed for: r10v14 */
    /* JADX WARN: Type inference failed for: r10v3 */
    /* JADX WARN: Type inference failed for: r10v5 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8, types: [int] */
    /* JADX WARN: Type inference failed for: r16v0 */
    /* JADX WARN: Type inference failed for: r16v10 */
    /* JADX WARN: Type inference failed for: r16v11, types: [yads.nb3] */
    /* JADX WARN: Type inference failed for: r16v12 */
    /* JADX WARN: Type inference failed for: r16v13 */
    /* JADX WARN: Type inference failed for: r16v14 */
    /* JADX WARN: Type inference failed for: r16v18 */
    /* JADX WARN: Type inference failed for: r16v21 */
    /* JADX WARN: Type inference failed for: r16v22 */
    /* JADX WARN: Type inference failed for: r16v23 */
    /* JADX WARN: Type inference failed for: r16v24 */
    /* JADX WARN: Type inference failed for: r16v25 */
    /* JADX WARN: Type inference failed for: r16v4 */
    /* JADX WARN: Type inference failed for: r16v5 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v9 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12, types: [yads.os4] */
    /* JADX WARN: Type inference failed for: r1v13, types: [yads.os4] */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v20 */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v22 */
    /* JADX WARN: Type inference failed for: r1v23, types: [yads.os4] */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v34 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    public static nb3 a(int i, os4 os4Var, boolean z, int i2, kb3 kb3Var) throws Throwable {
        int iN;
        ?? r1;
        boolean z2;
        boolean z3;
        ?? r16;
        boolean z4;
        boolean z5;
        ?? r2;
        int i3;
        int i4;
        ?? r10;
        int i5;
        os4 os4Var2;
        nb3 jtVar;
        ?? r11;
        int i6 = i;
        int iK = os4Var.k();
        int iK2 = os4Var.k();
        int iK3 = os4Var.k();
        int iK4 = i6 >= 3 ? os4Var.k() : 0;
        if (i6 == 4) {
            iN = os4Var.n();
            if (!z) {
                iN = (((iN >> 24) & 255) << 21) | (iN & 255) | (((iN >> 8) & 255) << 7) | (((iN >> 16) & 255) << 14);
            }
        } else {
            iN = i6 == 3 ? os4Var.n() : os4Var.m();
        }
        int iG = iN;
        int iP = i6 >= 3 ? os4Var.p() : 0;
        if (iK == 0 && iK2 == 0 && iK3 == 0 && iK4 == 0 && iG == 0 && iP == 0) {
            os4Var.e(os4Var.c);
            return null;
        }
        int i7 = os4Var.b + iG;
        if (i7 > os4Var.c) {
            sv3.d("Id3Decoder", "Frame size exceeds remaining tag data");
            os4Var.e(os4Var.c);
            return null;
        }
        if (kb3Var != null) {
            r1 = iK2;
            if (!kb3Var.a(i6, iK, iK2, iK3, iK4)) {
                i6 = i6;
                os4Var.e(i7);
                return null;
            }
        } else {
            r1 = iK2;
        }
        i6 = i6;
        if (i6 == 3) {
            z2 = (iP & 128) != 0;
            z4 = (iP & 64) != 0;
            z5 = false;
            r16 = (iP & 32) != 0;
            z3 = z2;
        } else if (i6 == 4) {
            boolean z6 = (iP & 64) != 0;
            boolean z7 = (iP & 8) != 0;
            z4 = (iP & 4) != 0;
            z5 = (iP & 2) != 0;
            if ((iP & 1) != 0) {
                boolean z8 = z7;
                r16 = z6;
                z2 = z8;
                z3 = true;
            } else {
                boolean z9 = z7;
                r16 = z6;
                z2 = z9;
                z3 = false;
            }
        } else {
            z2 = false;
            z3 = false;
            r16 = 0;
            z4 = false;
            z5 = false;
        }
        if (z2 || z4) {
            sv3.d("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
            os4Var.e(i7);
            return null;
        }
        if (r16 != 0) {
            iG--;
            os4Var.e(os4Var.b + 1);
        }
        if (z3) {
            iG -= 4;
            os4Var.e(os4Var.b + 4);
        }
        if (z5) {
            iG = g(iG, os4Var);
        }
        try {
            try {
                try {
                    try {
                        if (iK == 84 && r1 == 88 && iK3 == 88 && (i6 == 2 || iK4 == 88)) {
                            jtVar = e(iG, os4Var);
                        } else if (iK == 84) {
                            jtVar = a(iG, a(i6, iK, (int) r1, iK3, iK4), os4Var);
                        } else {
                            if (iK != 87 || r1 != 88 || iK3 != 88 || (i6 != 2 && iK4 != 88)) {
                                if (iK == 87) {
                                    jtVar = b(iG, a(i6, iK, (int) r1, iK3, iK4), os4Var);
                                } else {
                                    r16 = 0;
                                    try {
                                        if (iK == 80 && r1 == 82 && iK3 == 73 && iK4 == 86) {
                                            jtVar = d(iG, os4Var);
                                        } else if (iK == 71 && r1 == 69 && iK3 == 79 && (iK4 == 66 || i6 == 2)) {
                                            jtVar = b(iG, os4Var);
                                        } else if (i6 == 2) {
                                            if (iK == 80 && r1 == 73 && iK3 == 67) {
                                                jtVar = a(os4Var, iG, i6);
                                            } else if (iK != 67 && r1 == 79 && iK3 == 77 && (iK4 == 77 || i6 == 2)) {
                                                jtVar = a(iG, os4Var);
                                            } else if (iK != 67 && r1 == 72 && iK3 == 65 && iK4 == 80) {
                                                int i8 = iG;
                                                i3 = iK3;
                                                i4 = i8;
                                                r11 = r1;
                                                i5 = iK4;
                                                try {
                                                    jtVar = a(os4Var, i4, i6, z, i2, kb3Var);
                                                    i6 = i;
                                                    r1 = os4Var;
                                                    r16 = r16;
                                                } catch (UnsupportedEncodingException unused) {
                                                    r1 = os4Var;
                                                    sv3.d("Id3Decoder", "Unsupported character encoding");
                                                    r1.e(i7);
                                                    return r16;
                                                } catch (Throwable th) {
                                                    th = th;
                                                    r2 = os4Var;
                                                    r2.e(i7);
                                                    throw th;
                                                }
                                            } else {
                                                int i9 = iG;
                                                i3 = iK3;
                                                i4 = i9;
                                                r10 = r1;
                                                i5 = iK4;
                                                if (iK != 67 && r10 == 84 && i3 == 79 && i5 == 67) {
                                                    i6 = i;
                                                    os4 os4Var3 = os4Var;
                                                    jtVar = b(os4Var3, i4, i6, z, i2, kb3Var);
                                                    r1 = os4Var3;
                                                    r11 = r10;
                                                    r16 = r16;
                                                } else {
                                                    i6 = i;
                                                    os4Var2 = os4Var;
                                                    if (iK != 77 && r10 == 76 && i3 == 76 && i5 == 84) {
                                                        jtVar = c(i4, os4Var2);
                                                    } else {
                                                        String strA = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr = new byte[i4];
                                                        os4Var2.a(bArr, 0, i4);
                                                        jtVar = new jt(strA, bArr);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    }
                                                }
                                            }
                                        } else if (iK == 65 && r1 == 80 && iK3 == 73 && iK4 == 67) {
                                            jtVar = a(os4Var, iG, i6);
                                        } else {
                                            if (iK != 67) {
                                            }
                                            if (iK != 67) {
                                                int i10 = iG;
                                                i3 = iK3;
                                                i4 = i10;
                                                r10 = r1;
                                                i5 = iK4;
                                                if (iK != 67) {
                                                    i6 = i;
                                                    os4Var2 = os4Var;
                                                    if (iK != 77) {
                                                        String strA2 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr2 = new byte[i4];
                                                        os4Var2.a(bArr2, 0, i4);
                                                        jtVar = new jt(strA2, bArr2);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    } else {
                                                        String strA3 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr3 = new byte[i4];
                                                        os4Var2.a(bArr3, 0, i4);
                                                        jtVar = new jt(strA3, bArr3);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    }
                                                } else {
                                                    i6 = i;
                                                    os4Var2 = os4Var;
                                                    if (iK != 77) {
                                                        String strA4 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr4 = new byte[i4];
                                                        os4Var2.a(bArr4, 0, i4);
                                                        jtVar = new jt(strA4, bArr4);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    } else {
                                                        String strA5 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr5 = new byte[i4];
                                                        os4Var2.a(bArr5, 0, i4);
                                                        jtVar = new jt(strA5, bArr5);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    }
                                                }
                                            } else {
                                                int i11 = iG;
                                                i3 = iK3;
                                                i4 = i11;
                                                r10 = r1;
                                                i5 = iK4;
                                                if (iK != 67) {
                                                    i6 = i;
                                                    os4Var2 = os4Var;
                                                    if (iK != 77) {
                                                        String strA6 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr6 = new byte[i4];
                                                        os4Var2.a(bArr6, 0, i4);
                                                        jtVar = new jt(strA6, bArr6);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    } else {
                                                        String strA7 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr7 = new byte[i4];
                                                        os4Var2.a(bArr7, 0, i4);
                                                        jtVar = new jt(strA7, bArr7);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    }
                                                } else {
                                                    i6 = i;
                                                    os4Var2 = os4Var;
                                                    if (iK != 77) {
                                                        String strA8 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr8 = new byte[i4];
                                                        os4Var2.a(bArr8, 0, i4);
                                                        jtVar = new jt(strA8, bArr8);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    } else {
                                                        String strA9 = a(i6, iK, r10 == true ? 1 : 0, i3, i5);
                                                        byte[] bArr9 = new byte[i4];
                                                        os4Var2.a(bArr9, 0, i4);
                                                        jtVar = new jt(strA9, bArr9);
                                                        r1 = os4Var2;
                                                        r11 = r10;
                                                        r16 = r16;
                                                    }
                                                }
                                            }
                                        }
                                        int i12 = iG;
                                        i3 = iK3;
                                        i4 = i12;
                                        r11 = r1;
                                        i5 = iK4;
                                        r1 = os4Var;
                                        r16 = r16;
                                    } catch (UnsupportedEncodingException unused2) {
                                        r1 = os4Var;
                                    }
                                }
                                if (jtVar == null) {
                                    r1 = os4Var2;
                                    r11 = r10;
                                    r16 = r16;
                                    sv3.d("Id3Decoder", "Failed to decode frame: id=" + a(i6, iK, (int) r11, i3, i5) + ", frameSize=" + i4);
                                }
                                r1 = os4Var2;
                                r11 = r10;
                                r16 = r16;
                                r1.e(i7);
                                return jtVar;
                            }
                            jtVar = f(iG, os4Var);
                        }
                        int i13 = iG;
                        i3 = iK3;
                        i4 = i13;
                        r11 = r1;
                        i5 = iK4;
                        r1 = os4Var;
                        r16 = 0;
                        if (jtVar == null) {
                            r1 = os4Var2;
                            r11 = r10;
                            r16 = r16;
                            sv3.d("Id3Decoder", "Failed to decode frame: id=" + a(i6, iK, (int) r11, i3, i5) + ", frameSize=" + i4);
                        }
                        r1 = os4Var2;
                        r11 = r10;
                        r16 = r16;
                        r1.e(i7);
                        return jtVar;
                    } catch (UnsupportedEncodingException unused3) {
                    }
                } catch (Throwable th2) {
                    th = th2;
                    r2 = os4Var;
                }
            } catch (UnsupportedEncodingException unused4) {
                r1 = os4Var;
                r16 = 0;
            }
        } catch (Throwable th3) {
            th = th3;
            r2 = r1;
        }
    }

    public static wy b(os4 os4Var, int i, int i2, boolean z, int i3, kb3 kb3Var) throws Throwable {
        int i4 = os4Var.b;
        int iB = b(os4Var.a, i4);
        String str = new String(os4Var.a, i4, iB - i4, "ISO-8859-1");
        os4Var.e(iB + 1);
        int iK = os4Var.k();
        boolean z2 = (iK & 2) != 0;
        boolean z3 = (iK & 1) != 0;
        int iK2 = os4Var.k();
        String[] strArr = new String[iK2];
        for (int i5 = 0; i5 < iK2; i5++) {
            int i6 = os4Var.b;
            int iB2 = b(os4Var.a, i6);
            strArr[i5] = new String(os4Var.a, i6, iB2 - i6, "ISO-8859-1");
            os4Var.e(iB2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i7 = i4 + i;
        while (os4Var.b < i7) {
            nb3 nb3VarA = a(i2, os4Var, z, i3, kb3Var);
            if (nb3VarA != null) {
                arrayList.add(nb3VarA);
            }
        }
        return new wy(str, z2, z3, strArr, (nb3[]) arrayList.toArray(new nb3[0]));
    }

    public static e94 c(int i, os4 os4Var) {
        int iP = os4Var.p();
        int iM = os4Var.m();
        int iM2 = os4Var.m();
        int iK = os4Var.k();
        int iK2 = os4Var.k();
        ns4 ns4Var = new ns4();
        ns4Var.b(os4Var.a, os4Var.c);
        ns4Var.b(os4Var.b * 8);
        int i2 = ((i - 10) * 8) / (iK + iK2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int iA = ns4Var.a(iK);
            int iA2 = ns4Var.a(iK2);
            iArr[i3] = iA;
            iArr2[i3] = iA2;
        }
        return new e94(iP, iM, iM2, iArr, iArr2);
    }

    public static l05 d(int i, os4 os4Var) {
        byte[] bArr = new byte[i];
        os4Var.a(bArr, 0, i);
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i2 = iB + 1;
        return new l05(str, i <= i2 ? u56.f : Arrays.copyOfRange(bArr, i2, i));
    }

    public static gw5 e(int i, os4 os4Var) {
        if (i < 1) {
            return null;
        }
        int iK = os4Var.k();
        String strB = b(iK);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        os4Var.a(bArr, 0, i2);
        int iA = a(bArr, 0, iK);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = a(iK) + iA;
        return new gw5("TXXX", str, a(iA2, a(bArr, iA2, iK), strB, bArr));
    }

    public static x46 f(int i, os4 os4Var) {
        if (i < 1) {
            return null;
        }
        int iK = os4Var.k();
        String strB = b(iK);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        os4Var.a(bArr, 0, i2);
        int iA = a(bArr, 0, iK);
        String str = new String(bArr, 0, iA, strB);
        int iA2 = a(iK) + iA;
        return new x46("WXXX", str, a(iA2, b(bArr, iA2), "ISO-8859-1", bArr));
    }

    public static int g(int i, os4 os4Var) {
        byte[] bArr = os4Var.a;
        int i2 = os4Var.b;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 >= i2 + i) {
                return i;
            }
            if ((bArr[i3] & 255) == 255 && bArr[i4] == 0) {
                System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                i--;
            }
            i3 = i4;
        }
    }

    public mb3(kb3 kb3Var) {
        this.a = kb3Var;
    }

    public static /* synthetic */ boolean b(int i, int i2, int i3, int i4, int i5) {
        return false;
    }

    public static x46 b(int i, String str, os4 os4Var) {
        byte[] bArr = new byte[i];
        os4Var.a(bArr, 0, i);
        return new x46(str, null, new String(bArr, 0, b(bArr, 0), "ISO-8859-1"));
    }

    public static i23 b(int i, os4 os4Var) {
        byte[] bArrCopyOfRange;
        int iK = os4Var.k();
        String strB = b(iK);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        os4Var.a(bArr, 0, i2);
        int iB = b(bArr, 0);
        String str = new String(bArr, 0, iB, "ISO-8859-1");
        int i3 = iB + 1;
        int iA = a(bArr, i3, iK);
        String strA = a(i3, iA, strB, bArr);
        int iA2 = a(iK) + iA;
        int iA3 = a(bArr, iA2, iK);
        String strA2 = a(iA2, iA3, strB, bArr);
        int iA4 = a(iK) + iA3;
        if (i2 <= iA4) {
            bArrCopyOfRange = u56.f;
        } else {
            bArrCopyOfRange = Arrays.copyOfRange(bArr, iA4, i2);
        }
        return new i23(str, strA, strA2, bArrCopyOfRange);
    }

    public static String b(int i) {
        if (i == 1) {
            return "UTF-16";
        }
        if (i == 2) {
            return "UTF-16BE";
        }
        if (i != 3) {
            return "ISO-8859-1";
        }
        return "UTF-8";
    }

    public static int b(byte[] bArr, int i) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    @Override // yads.vk5
    public final h84 a(j84 j84Var, ByteBuffer byteBuffer) {
        return a(byteBuffer.array(), byteBuffer.limit());
    }

    /* JADX WARN: Code duplicated, block: B:30:0x0094  */
    /* JADX WARN: Code duplicated, block: B:34:0x00a4 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:37:0x00ab  */
    /* JADX WARN: Code duplicated, block: B:40:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:43:0x00c2  */
    /* JADX WARN: Code duplicated, block: B:52:0x00e9  */
    /* JADX WARN: Code duplicated, block: B:58:0x00f3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:60:0x00e2 A[SYNTHETIC] */
    public final h84 a(byte[] bArr, int i) throws Throwable {
        boolean z;
        lb3 lb3Var;
        int i2;
        int iG;
        nb3 nb3VarA;
        ArrayList arrayList = new ArrayList();
        os4 os4Var = new os4(bArr, i);
        boolean z2 = false;
        if (i - os4Var.b < 10) {
            sv3.d("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int iM = os4Var.m();
            if (iM != 4801587) {
                sv3.d("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(iM))));
            } else {
                int iK = os4Var.k();
                os4Var.e(os4Var.b + 1);
                int iK2 = os4Var.k();
                int iJ = os4Var.j();
                if (iK != 2) {
                    if (iK == 3) {
                        if ((iK2 & 64) != 0) {
                            int iA = os4Var.a();
                            os4Var.e(os4Var.b + iA);
                            iJ -= iA + 4;
                        }
                    } else if (iK == 4) {
                        if ((iK2 & 64) != 0) {
                            int iJ2 = os4Var.j();
                            os4Var.e(os4Var.b + (iJ2 - 4));
                            iJ -= iJ2;
                        }
                        if ((iK2 & 16) != 0) {
                            iJ -= 10;
                        }
                    } else {
                        qt3.a(iK, "Skipped ID3 tag with unsupported majorVersion=", "Id3Decoder");
                    }
                    if (iK < 4) {
                        z = false;
                    } else {
                        z = false;
                    }
                    lb3Var = new lb3(iK, iJ, z);
                } else if ((iK2 & 64) != 0) {
                    sv3.d("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                } else {
                    if (iK < 4 || (iK2 & 128) == 0) {
                        z = false;
                    } else {
                        z = true;
                    }
                    lb3Var = new lb3(iK, iJ, z);
                }
                if (lb3Var == null) {
                    return null;
                }
                int i3 = os4Var.b;
                i2 = lb3Var.a == 2 ? 6 : 10;
                iG = lb3Var.c;
                if (lb3Var.b) {
                    iG = g(iG, os4Var);
                }
                os4Var.d(i3 + iG);
                if (!a(os4Var, lb3Var.a, i2, false)) {
                    if (lb3Var.a == 4 || !a(os4Var, 4, i2, true)) {
                        sv3.d("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + lb3Var.a);
                        return null;
                    }
                    z2 = true;
                }
                while (os4Var.c - os4Var.b >= i2) {
                    nb3VarA = a(lb3Var.a, os4Var, z2, i2, this.a);
                    if (nb3VarA != null) {
                        arrayList.add(nb3VarA);
                    }
                }
                return new h84(arrayList);
            }
        }
        lb3Var = null;
        if (lb3Var == null) {
            return null;
        }
        int i4 = os4Var.b;
        if (lb3Var.a == 2) {
        }
        iG = lb3Var.c;
        if (lb3Var.b) {
            iG = g(iG, os4Var);
        }
        os4Var.d(i4 + iG);
        if (!a(os4Var, lb3Var.a, i2, false)) {
            if (lb3Var.a == 4) {
            }
            sv3.d("Id3Decoder", "Failed to validate ID3 tag with majorVersion=" + lb3Var.a);
            return null;
        }
        while (os4Var.c - os4Var.b >= i2) {
            nb3VarA = a(lb3Var.a, os4Var, z2, i2, this.a);
            if (nb3VarA != null) {
                arrayList.add(nb3VarA);
            }
        }
        return new h84(arrayList);
    }

    public static uy a(os4 os4Var, int i, int i2, boolean z, int i3, kb3 kb3Var) throws Throwable {
        int i4 = os4Var.b;
        int iB = b(os4Var.a, i4);
        String str = new String(os4Var.a, i4, iB - i4, "ISO-8859-1");
        os4Var.e(iB + 1);
        int iA = os4Var.a();
        int iA2 = os4Var.a();
        long jL = os4Var.l();
        if (jL == MuxerUtil.UNSIGNED_INT_MAX_VALUE) {
            jL = -1;
        }
        long jL2 = os4Var.l();
        long j = jL2 == MuxerUtil.UNSIGNED_INT_MAX_VALUE ? -1L : jL2;
        ArrayList arrayList = new ArrayList();
        int i5 = i4 + i;
        while (os4Var.b < i5) {
            nb3 nb3VarA = a(i2, os4Var, z, i3, kb3Var);
            if (nb3VarA != null) {
                arrayList.add(nb3VarA);
            }
        }
        return new uy(str, iA, iA2, jL, j, (nb3[]) arrayList.toArray(new nb3[0]));
    }

    /* JADX WARN: Code duplicated, block: B:43:0x0089 A[PHI: r3
      0x0089: PHI (r3v17 int) = (r3v6 int), (r3v20 int) binds: [B:41:0x0086, B:33:0x0078] A[DONT_GENERATE, DONT_INLINE]] */
    public static boolean a(os4 os4Var, int i, int i2, boolean z) {
        int iM;
        long jM;
        int iP;
        int i3;
        int i4 = os4Var.b;
        while (true) {
            try {
                boolean z2 = true;
                if (os4Var.c - os4Var.b < i2) {
                    os4Var.e(i4);
                    return true;
                }
                if (i >= 3) {
                    iM = os4Var.a();
                    jM = os4Var.l();
                    iP = os4Var.p();
                } else {
                    iM = os4Var.m();
                    jM = os4Var.m();
                    iP = 0;
                }
                if (iM == 0 && jM == 0 && iP == 0) {
                    os4Var.e(i4);
                    return true;
                }
                if (i == 4 && !z) {
                    if ((8421504 & jM) != 0) {
                        os4Var.e(i4);
                        return false;
                    }
                    jM = (((jM >> 24) & 255) << 21) | (jM & 255) | (((jM >> 8) & 255) << 7) | (((jM >> 16) & 255) << 14);
                }
                if (i == 4) {
                    i3 = (iP & 64) != 0 ? 1 : 0;
                    if ((iP & 1) == 0) {
                        z2 = false;
                    }
                } else if (i == 3) {
                    i3 = (iP & 32) != 0 ? 1 : 0;
                    if ((iP & 128) == 0) {
                        z2 = false;
                    }
                } else {
                    i3 = 0;
                    z2 = false;
                }
                if (z2) {
                    i3 += 4;
                }
                if (jM < i3) {
                    os4Var.e(i4);
                    return false;
                }
                int i5 = os4Var.c;
                int i6 = os4Var.b;
                if (i5 - i6 < jM) {
                    os4Var.e(i4);
                    return false;
                }
                os4Var.e(i6 + ((int) jM));
            } catch (Throwable th) {
                os4Var.e(i4);
                throw th;
            }
        }
    }

    public static int a(int i) {
        return (i == 0 || i == 3) ? 1 : 2;
    }

    public static gw5 a(int i, String str, os4 os4Var) {
        if (i < 1) {
            return null;
        }
        int iK = os4Var.k();
        String strB = b(iK);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        os4Var.a(bArr, 0, i2);
        return new gw5(str, null, new String(bArr, 0, a(bArr, 0, iK), strB));
    }

    public static qf a(os4 os4Var, int i, int i2) {
        int iB;
        String strA;
        byte[] bArrCopyOfRange;
        int iK = os4Var.k();
        String strB = b(iK);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        os4Var.a(bArr, 0, i3);
        if (i2 == 2) {
            strA = "image/" + oj.a(new String(bArr, 0, 3, "ISO-8859-1"));
            if ("image/jpg".equals(strA)) {
                strA = MimeTypes.IMAGE_JPEG;
            }
            iB = 2;
        } else {
            iB = b(bArr, 0);
            strA = oj.a(new String(bArr, 0, iB, "ISO-8859-1"));
            if (strA.indexOf(47) == -1) {
                strA = "image/".concat(strA);
            }
        }
        int i4 = bArr[iB + 1] & 255;
        int i5 = iB + 2;
        int iA = a(bArr, i5, iK);
        String str = new String(bArr, i5, iA - i5, strB);
        int iA2 = a(iK) + iA;
        if (i3 <= iA2) {
            bArrCopyOfRange = u56.f;
        } else {
            bArrCopyOfRange = Arrays.copyOfRange(bArr, iA2, i3);
        }
        return new qf(strA, str, i4, bArrCopyOfRange);
    }

    public static b40 a(int i, os4 os4Var) {
        if (i < 4) {
            return null;
        }
        int iK = os4Var.k();
        String strB = b(iK);
        byte[] bArr = new byte[3];
        os4Var.a(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        os4Var.a(bArr2, 0, i2);
        int iA = a(bArr2, 0, iK);
        String str2 = new String(bArr2, 0, iA, strB);
        int iA2 = a(iK) + iA;
        return new b40(str, str2, a(iA2, a(bArr2, iA2, iK), strB, bArr2));
    }

    public static String a(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static int a(byte[] bArr, int i, int i2) {
        int iB = b(bArr, i);
        if (i2 == 0 || i2 == 3) {
            return iB;
        }
        while (iB < bArr.length - 1) {
            if ((iB - i) % 2 == 0 && bArr[iB + 1] == 0) {
                return iB;
            }
            iB = b(bArr, iB + 1);
        }
        return bArr.length;
    }

    public static String a(int i, int i2, String str, byte[] bArr) {
        if (i2 > i && i2 <= bArr.length) {
            return new String(bArr, i, i2 - i, str);
        }
        return "";
    }
}
