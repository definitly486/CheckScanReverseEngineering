package defpackage;

import androidx.media3.extractor.ts.PsExtractor;
import androidx.media3.muxer.WebmConstants;
import com.google.android.gms.internal.measurement.zzahk;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.zxing.WriterException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class qc4 implements rxa {
    public static final /* synthetic */ qc4 b = new qc4();

    /* JADX WARN: Code duplicated, block: B:316:0x05e2  */
    /* JADX WARN: Code duplicated, block: B:350:0x0650  */
    public static qi0 a(String str, qc0 qc0Var, int i, int i2) throws WriterException {
        int[] iArr;
        int i3;
        ic5 ic5Var;
        int i4;
        int i5;
        int i6;
        byte[][] bArr;
        int i7;
        int i8;
        int i9;
        char c;
        if (str.isEmpty()) {
            fg.c("Found empty contents");
            return null;
        }
        if (qc0Var != qc0.QR_CODE) {
            r01.e(qc0Var, "Can only encode QR_CODE, but got ");
            return null;
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        r03 r03Var = r03.L;
        int i10 = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            int length = str.length();
            iArr = tx2.a;
            i3 = 1;
            if (i10 >= length) {
                if (!z) {
                    if (!z2) {
                        ic5Var = ic5.BYTE;
                        break;
                    }
                    ic5Var = ic5.NUMERIC;
                    break;
                }
                ic5Var = ic5.ALPHANUMERIC;
                break;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt < '0' || cCharAt > '9') {
                if ((cCharAt < '`' ? iArr[cCharAt] : -1) == -1) {
                    ic5Var = ic5.BYTE;
                    break;
                }
                z = true;
            } else {
                z2 = true;
            }
            i10++;
        }
        pi0 pi0Var = new pi0();
        char c2 = 4;
        pi0Var.c(ic5Var.a(), 4);
        pi0 pi0Var2 = new pi0();
        int i11 = tx2.a.a[ic5Var.ordinal()];
        char c3 = 2;
        int i12 = 8;
        if (i11 != 1) {
            if (i11 == 2) {
                int length2 = str.length();
                int i13 = 0;
                while (i13 < length2) {
                    char cCharAt2 = str.charAt(i13);
                    int i14 = cCharAt2 < '`' ? iArr[cCharAt2] : -1;
                    if (i14 == -1) {
                        throw new WriterException();
                    }
                    int i15 = i3;
                    int i16 = i13 + 1;
                    if (i16 < length2) {
                        char cCharAt3 = str.charAt(i16);
                        int i17 = cCharAt3 < '`' ? iArr[cCharAt3] : -1;
                        if (i17 == -1) {
                            throw new WriterException();
                        }
                        pi0Var2.c((i14 * 45) + i17, 11);
                        i13 += 2;
                    } else {
                        pi0Var2.c(i14, 6);
                        i13 = i16;
                    }
                    i3 = i15;
                }
            } else if (i11 == 3) {
                try {
                    byte[] bytes = str.getBytes("ISO-8859-1");
                    int length3 = bytes.length;
                    int i18 = 0;
                    while (i18 < length3) {
                        pi0Var2.c(bytes[i18], i12);
                        i18++;
                        i12 = 8;
                    }
                } catch (UnsupportedEncodingException e) {
                    throw new WriterException(e);
                }
            } else {
                if (i11 != 4) {
                    throw new WriterException("Invalid mode: " + ic5Var);
                }
                try {
                    byte[] bytes2 = str.getBytes("Shift_JIS");
                    int length4 = bytes2.length;
                    int i19 = 0;
                    while (i19 < length4) {
                        char c4 = c3;
                        int i20 = ((bytes2[i19] & 255) << 8) | (bytes2[i19 + 1] & 255);
                        int i21 = (i20 < 33088 || i20 > 40956) ? (i20 < 57408 || i20 > 60351) ? -1 : i20 - 49472 : i20 - 33088;
                        if (i21 == -1) {
                            throw new WriterException("Invalid byte sequence");
                        }
                        pi0Var2.c(((i21 >> 8) * PsExtractor.AUDIO_STREAM) + (i21 & 255), 13);
                        i19 += 2;
                        c3 = c4;
                    }
                } catch (UnsupportedEncodingException e2) {
                    throw new WriterException(e2);
                }
            }
            i4 = i3;
        } else {
            i4 = 1;
            int length5 = str.length();
            int i22 = 0;
            while (i22 < length5) {
                int iCharAt = str.charAt(i22) - '0';
                int i23 = i22 + 2;
                if (i23 < length5) {
                    pi0Var2.c(ti0.b(str.charAt(i22 + 1) - '0', 10, iCharAt * 100, str.charAt(i23) - '0'), 10);
                    i22 += 3;
                } else {
                    i22++;
                    if (i22 < length5) {
                        pi0Var2.c((iCharAt * 10) + (str.charAt(i22) - '0'), 7);
                        i22 = i23;
                    } else {
                        pi0Var2.c(iCharAt, 4);
                    }
                }
            }
        }
        uc9 uc9VarA = tx2.a(ic5Var.d(tx2.a(ic5Var.d(uc9.c(i4)) + pi0Var.c + pi0Var2.c, r03Var)) + pi0Var.c + pi0Var2.c, r03Var);
        int i24 = uc9VarA.d;
        pi0 pi0Var3 = new pi0();
        int i25 = pi0Var.c;
        pi0Var3.d(pi0Var3.c + i25);
        for (int i26 = 0; i26 < i25; i26++) {
            pi0Var3.b(pi0Var.e(i26));
        }
        int iH = ic5Var == ic5.BYTE ? pi0Var2.h() : str.length();
        int iD = ic5Var.d(uc9VarA);
        int i27 = i4 << iD;
        if (iH >= i27) {
            StringBuilder sb = new StringBuilder();
            sb.append(iH);
            sb.append(" is bigger than ");
            sb.append(i27 - 1);
            throw new WriterException(sb.toString());
        }
        pi0Var3.c(iH, iD);
        int i28 = pi0Var2.c;
        pi0Var3.d(pi0Var3.c + i28);
        for (int i29 = 0; i29 < i28; i29++) {
            pi0Var3.b(pi0Var2.e(i29));
        }
        uc9.b bVar = uc9VarA.c[r03Var.ordinal()];
        int i30 = bVar.a;
        uc9.a[] aVarArr = bVar.b;
        int i31 = 0;
        for (uc9.a aVar : aVarArr) {
            i31 += aVar.a;
        }
        int i32 = i24 - (i31 * i30);
        int i33 = i32 * 8;
        if (pi0Var3.c > i33) {
            throw new WriterException("data bits cannot fit in the QR Code" + pi0Var3.c + " > " + i33);
        }
        for (int i34 = 0; i34 < 4 && pi0Var3.c < i33; i34++) {
            pi0Var3.b(false);
        }
        boolean z3 = false;
        int i35 = 7 & pi0Var3.c;
        if (i35 > 0) {
            while (i35 < 8) {
                pi0Var3.b(z3);
                i35++;
                z3 = false;
            }
        }
        int iH2 = i32 - pi0Var3.h();
        for (int i36 = 0; i36 < iH2; i36++) {
            pi0Var3.c((i36 & 1) == 0 ? WebmConstants.MkvEbmlElement.VOID : 17, 8);
        }
        if (pi0Var3.c != i33) {
            throw new WriterException("Bits size does not equal capacity");
        }
        int i37 = 0;
        for (uc9.a aVar2 : aVarArr) {
            i37 += aVar2.a;
        }
        if (pi0Var3.h() != i32) {
            throw new WriterException("Number of bits and data bytes does not match");
        }
        ArrayList arrayList = new ArrayList(i37);
        int i38 = 0;
        int i39 = 0;
        int iMax = 0;
        int iMax2 = 0;
        while (i38 < i37) {
            char c5 = c2;
            int i40 = i4;
            int[] iArr2 = new int[i40];
            int[] iArr3 = new int[i40];
            if (i38 >= i37) {
                throw new WriterException("Block ID too large");
            }
            int i41 = i24 % i37;
            int i42 = i37 - i41;
            int i43 = i24 / i37;
            int i44 = i32 / i37;
            int i45 = i44 + 1;
            int i46 = i43 - i44;
            int i47 = (i43 + 1) - i45;
            if (i46 != i47) {
                throw new WriterException("EC bytes mismatch");
            }
            if (i37 != i42 + i41) {
                throw new WriterException("RS blocks mismatch");
            }
            if (i24 != ((i45 + i47) * i41) + ((i44 + i46) * i42)) {
                throw new WriterException("Total bytes mismatch");
            }
            if (i38 < i42) {
                c = 0;
                iArr2[0] = i44;
                iArr3[0] = i46;
            } else {
                c = 0;
                iArr2[0] = i45;
                iArr3[0] = i47;
            }
            int i48 = iArr2[c];
            byte[] bArr2 = new byte[i48];
            int i49 = i39 * 8;
            int i50 = i38;
            int i51 = 0;
            while (i51 < i48) {
                int i52 = i51;
                int i53 = i37;
                int i54 = 0;
                for (int i55 = 0; i55 < 8; i55++) {
                    if (pi0Var3.e(i49)) {
                        i54 = (1 << (7 - i55)) | i54;
                    }
                    i49++;
                }
                bArr2[i52] = (byte) i54;
                i51 = i52 + 1;
                i37 = i53;
            }
            int i56 = i37;
            int i57 = iArr3[0];
            int i58 = i48 + i57;
            int[] iArr4 = new int[i58];
            int i59 = 0;
            while (i59 < i48) {
                iArr4[i59] = bArr2[i59] & 255;
                i59++;
                i58 = i58;
            }
            int i60 = i58;
            gp3 gp3Var = gp3.h;
            ArrayList arrayList2 = new ArrayList();
            pi0 pi0Var4 = pi0Var3;
            arrayList2.add(new hp3(gp3Var, new int[]{1}));
            if (i57 == 0) {
                fg.c("No error correction bytes");
                return null;
            }
            int i61 = i60 - i57;
            if (i61 <= 0) {
                fg.c("No data bytes provided");
                return null;
            }
            if (i57 >= arrayList2.size()) {
                hp3 hp3Var = (hp3) dd2.b(1, arrayList2);
                int size = arrayList2.size();
                hp3 hp3VarG = hp3Var;
                while (size <= i57) {
                    int i62 = size;
                    hp3VarG = hp3VarG.g(new hp3(gp3Var, new int[]{1, gp3Var.a[(i62 - 1) + gp3Var.g]}));
                    arrayList2.add(hp3VarG);
                    size = i62 + 1;
                    i24 = i24;
                    uc9VarA = uc9VarA;
                }
            }
            uc9 uc9Var = uc9VarA;
            int i63 = i24;
            hp3 hp3Var2 = (hp3) arrayList2.get(i57);
            int[] iArr5 = new int[i61];
            System.arraycopy(iArr4, 0, iArr5, 0, i61);
            if (i61 == 0) {
                mi2.b();
                return null;
            }
            if (i61 > 1 && iArr5[0] == 0) {
                int i64 = 1;
                while (i64 < i61 && iArr5[i64] == 0) {
                    i64++;
                }
                if (i64 == i61) {
                    iArr5 = new int[]{0};
                } else {
                    int i65 = i61 - i64;
                    int[] iArr6 = new int[i65];
                    System.arraycopy(iArr5, i64, iArr6, 0, i65);
                    iArr5 = iArr6;
                }
            }
            if (i57 < 0) {
                mi2.b();
                return null;
            }
            int length6 = iArr5.length;
            int[] iArr7 = new int[length6 + i57];
            int i66 = 0;
            while (i66 < length6) {
                iArr7[i66] = gp3Var.c(iArr5[i66], 1);
                i66++;
                length6 = length6;
            }
            hp3 hp3Var3 = new hp3(gp3Var, iArr7);
            if (!gp3Var.equals(hp3Var2.a)) {
                fg.c("GenericGFPolys do not have same GenericGF field");
                return null;
            }
            if (hp3Var2.e()) {
                fg.c("Divide by 0");
                return null;
            }
            hp3 hp3VarA = gp3Var.c;
            int iB = gp3Var.b(hp3Var2.c(hp3Var2.d()));
            while (hp3Var3.d() >= hp3Var2.d() && !hp3Var3.e()) {
                int iD2 = hp3Var3.d() - hp3Var2.d();
                int iC = gp3Var.c(hp3Var3.c(hp3Var3.d()), iB);
                int i67 = iB;
                hp3 hp3VarH = hp3Var2.h(iD2, iC);
                hp3VarA = hp3VarA.a(gp3Var.a(iD2, iC));
                hp3Var3 = hp3Var3.a(hp3VarH);
                iB = i67;
            }
            int[] iArr8 = new hp3[]{hp3VarA, hp3Var3}[1].b;
            int length7 = i57 - iArr8.length;
            for (int i68 = 0; i68 < length7; i68++) {
                iArr4[i61 + i68] = 0;
            }
            System.arraycopy(iArr8, 0, iArr4, i61 + length7, iArr8.length);
            byte[] bArr3 = new byte[i57];
            for (int i69 = 0; i69 < i57; i69++) {
                bArr3[i69] = (byte) iArr4[i48 + i69];
            }
            arrayList.add(new tj0(bArr2, bArr3));
            iMax = Math.max(iMax, i48);
            iMax2 = Math.max(iMax2, i57);
            i39 += iArr2[0];
            i38 = i50 + 1;
            c2 = c5;
            r03Var = r03Var;
            pi0Var3 = pi0Var4;
            i37 = i56;
            i24 = i63;
            uc9VarA = uc9Var;
            i4 = 1;
        }
        r03 r03Var2 = r03Var;
        uc9 uc9Var2 = uc9VarA;
        int i70 = i24;
        if (i32 != i39) {
            throw new WriterException("Data bytes does not match offset");
        }
        pi0 pi0Var5 = new pi0();
        for (int i71 = 0; i71 < iMax; i71++) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                byte[] bArr4 = ((tj0) it.next()).a;
                if (i71 < bArr4.length) {
                    pi0Var5.c(bArr4[i71], 8);
                }
            }
        }
        for (int i72 = 0; i72 < iMax2; i72++) {
            Iterator it2 = arrayList.iterator();
            while (it2.hasNext()) {
                byte[] bArr5 = ((tj0) it2.next()).b;
                if (i72 < bArr5.length) {
                    pi0Var5.c(bArr5[i72], 8);
                }
            }
        }
        if (i70 != pi0Var5.h()) {
            StringBuilder sbC = n7.c(i70, "Interleaving error: ", " and ");
            sbC.append(pi0Var5.h());
            sbC.append(" differ.");
            throw new WriterException(sbC.toString());
        }
        int i73 = (uc9Var2.a * 4) + 17;
        bx0 bx0Var = new bx0(i73, i73);
        int i74 = Integer.MAX_VALUE;
        int i75 = 0;
        int i76 = -1;
        while (true) {
            i5 = bx0Var.c;
            i6 = bx0Var.b;
            if (i75 >= 8) {
                break;
            }
            r03 r03Var3 = r03Var2;
            x65.b(pi0Var5, r03Var3, uc9Var2, i75, bx0Var);
            int i77 = 0;
            int iA = lj8.a(bx0Var, false) + lj8.a(bx0Var, true);
            int i78 = 0;
            int i79 = 0;
            while (true) {
                int i80 = i5 - 1;
                bArr = bx0Var.a;
                if (i78 >= i80) {
                    break;
                }
                int i81 = i77;
                while (i81 < i6 - 1) {
                    byte[] bArr6 = bArr[i78];
                    byte b2 = bArr6[i81];
                    int i82 = i81 + 1;
                    if (b2 == bArr6[i82]) {
                        byte[] bArr7 = bArr[i78 + 1];
                        if (b2 == bArr7[i81] && b2 == bArr7[i82]) {
                            i79++;
                        }
                    }
                    i81 = i82;
                }
                i78++;
                i77 = 0;
            }
            int i83 = (i79 * 3) + iA;
            int i84 = 0;
            int i85 = 0;
            while (i84 < i5) {
                int i86 = 0;
                while (i86 < i6) {
                    byte[] bArr8 = bArr[i84];
                    int i87 = i86 + 6;
                    int i88 = i85;
                    if (i87 < i6) {
                        i7 = i83;
                        byte b3 = 1;
                        if (bArr8[i86] == 1 && bArr8[i86 + 1] == 0 && bArr8[i86 + 2] == 1 && bArr8[i86 + 3] == 1 && bArr8[i86 + 4] == 1 && bArr8[i86 + 5] == 0 && bArr8[i87] == 1) {
                            int i89 = i86 - 4;
                            while (true) {
                                if (i89 < i86) {
                                    if (i89 < 0 || i89 >= bArr8.length || bArr8[i89] != b3) {
                                        i89++;
                                        b3 = 1;
                                    } else {
                                        int i90 = i86 + 7;
                                        int i91 = i86 + 11;
                                        while (true) {
                                            if (i90 < i91) {
                                                if (i90 >= 0 && i90 < bArr8.length) {
                                                    if (bArr8[i90] == 1) {
                                                    }
                                                }
                                                i90++;
                                            }
                                        }
                                    }
                                }
                                i85 = i88 + 1;
                            }
                        }
                        i8 = i84 + 6;
                        if (i8 < i5) {
                            byte b4 = 1;
                            if (bArr[i84][i86] != 1 && bArr[i84 + 1][i86] == 0 && bArr[i84 + 2][i86] == 1 && bArr[i84 + 3][i86] == 1 && bArr[i84 + 4][i86] == 1 && bArr[i84 + 5][i86] == 0 && bArr[i8][i86] == 1) {
                                int i92 = i84 - 4;
                                while (true) {
                                    if (i92 < i84) {
                                        if (i92 < 0 || i92 >= bArr.length || bArr[i92][i86] != b4) {
                                            i92++;
                                            i84 = i84;
                                            b4 = 1;
                                        } else {
                                            int i93 = i84 + 7;
                                            int i94 = i84 + 11;
                                            while (true) {
                                                if (i93 < i94) {
                                                    if (i93 < 0 || i93 >= bArr.length) {
                                                        i9 = i84;
                                                    } else {
                                                        i9 = i84;
                                                        if (bArr[i93][i86] == 1) {
                                                        }
                                                    }
                                                    i93++;
                                                    i84 = i9;
                                                }
                                            }
                                        }
                                    }
                                    i9 = i84;
                                    i85++;
                                }
                            } else {
                                i9 = i84;
                            }
                        } else {
                            i9 = i84;
                        }
                        i86++;
                        i83 = i7;
                        i84 = i9;
                    } else {
                        i7 = i83;
                    }
                    i85 = i88;
                    i8 = i84 + 6;
                    if (i8 < i5) {
                        byte b5 = 1;
                        if (bArr[i84][i86] != 1) {
                            i9 = i84;
                        } else {
                            i9 = i84;
                        }
                    } else {
                        i9 = i84;
                    }
                    i86++;
                    i83 = i7;
                    i84 = i9;
                }
                i84++;
            }
            int i95 = (i85 * 40) + i83;
            int i96 = 0;
            int i97 = 0;
            while (i96 < i5) {
                byte[] bArr9 = bArr[i96];
                int i98 = 0;
                while (i98 < i6) {
                    int i99 = i96;
                    if (bArr9[i98] == 1) {
                        i97++;
                    }
                    i98++;
                    i96 = i99;
                }
                i96++;
            }
            int i100 = i5 * i6;
            int iAbs = (((Math.abs((i97 * 2) - i100) * 10) / i100) * 10) + i95;
            if (iAbs < i74) {
                i74 = iAbs;
                i76 = i75;
            }
            i75++;
            r03Var2 = r03Var3;
        }
        x65.b(pi0Var5, r03Var2, uc9Var2, i76, bx0Var);
        int i101 = i6 + 8;
        int i102 = i5 + 8;
        int iMax3 = Math.max(i, i101);
        int iMax4 = Math.max(i2, i102);
        int iMin = Math.min(iMax3 / i101, iMax4 / i102);
        int i103 = (iMax3 - (i6 * iMin)) / 2;
        int i104 = (iMax4 - (i5 * iMin)) / 2;
        qi0 qi0Var = new qi0(iMax3, iMax4);
        int i105 = 0;
        while (i105 < i5) {
            int i106 = i103;
            int i107 = 0;
            while (i107 < i6) {
                if (bx0Var.a(i107, i105) == 1) {
                    qi0Var.e(i106, i104, iMin, iMin);
                }
                i107++;
                i106 += iMin;
            }
            i105++;
            i104 += iMin;
        }
        return qi0Var;
    }

    public static final void b(ArrayList arrayList, nl3 nl3Var) {
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            nl3Var.invoke(it.next());
            it.remove();
        }
    }

    public static final hl7 c(Object obj) {
        if (obj != oe0.f) {
            return (hl7) obj;
        }
        ah.f("Does not contain segment");
        return null;
    }

    public static final boolean d(Object obj) {
        return obj == oe0.f;
    }

    public static final void e(ld4 ld4Var, String str, Boolean bool) {
        i54 i54Var = rc4.a;
        ld4Var.a(str, new cd4(bool, false));
    }

    public static final void f(ld4 ld4Var, String str, Number number) {
        ld4Var.getClass();
        i54 i54Var = rc4.a;
        ld4Var.a(str, new cd4(number, false));
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzahk.zzc());
    }
}
