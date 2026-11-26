package defpackage;

import com.tapjoy.TapjoyCacheKt;

/* JADX INFO: loaded from: classes5.dex */
public final class q64 implements df4<g64> {
    public static final q64 a = new q64();
    public static final fg6 b = new fg6("kotlin.time.Instant", dg6.i.a);

    /* JADX WARN: Code duplicated, block: B:195:0x0466 A[EDGE_INSN: B:195:0x0466->B:197:0x048e BREAK  A[LOOP:1: B:54:0x012a->B:58:0x013f]] */
    /* JADX WARN: Code duplicated, block: B:196:0x047c A[EDGE_INSN: B:196:0x047c->B:197:0x048e BREAK  A[LOOP:1: B:54:0x012a->B:58:0x013f]] */
    /* JADX WARN: Instruction removed from duplicated block: B:196:0x047c, please report this as an issue */
    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        int i;
        n64 n64VarB;
        int i2;
        int iB;
        int i3;
        int i4;
        char cCharAt;
        char cCharAt2;
        ud2Var.getClass();
        g64 g64Var = g64.d;
        String strDecodeString = ud2Var.decodeString();
        strDecodeString.getClass();
        if (strDecodeString.length() == 0) {
            n64VarB = new n64.a("An empty string is not a valid Instant", strDecodeString);
        } else {
            char cCharAt3 = strDecodeString.charAt(0);
            if (cCharAt3 == '+' || cCharAt3 == '-') {
                i = 1;
            } else {
                i = 0;
                cCharAt3 = ' ';
            }
            int iCharAt = 0;
            int i5 = i;
            while (i5 < strDecodeString.length() && '0' <= (cCharAt2 = strDecodeString.charAt(i5)) && cCharAt2 < ':') {
                iCharAt = (iCharAt * 10) + (strDecodeString.charAt(i5) - '0');
                i5++;
            }
            int i6 = i5 - i;
            if (i6 > 10) {
                n64VarB = m64.c(strDecodeString, "Expected at most 10 digits for the year number, got " + i6 + " digits");
            } else if (i6 == 10 && aa4.f(strDecodeString.charAt(i), 50) >= 0) {
                n64VarB = m64.c(strDecodeString, "Expected at most 9 digits for the year number or year 1000000000, got " + i6 + " digits");
            } else if (i6 < 4) {
                n64VarB = m64.c(strDecodeString, "The year number must be padded to 4 digits, got " + i6 + " digits");
            } else if (cCharAt3 == '+' && i6 == 4) {
                n64VarB = m64.c(strDecodeString, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
            } else if (cCharAt3 != ' ' || i6 == 4) {
                if (cCharAt3 == '-') {
                    iCharAt = -iCharAt;
                }
                int i7 = i5 + 16;
                if (strDecodeString.length() >= i7) {
                    n64.a aVarB = m64.b(strDecodeString, "'-'", i5, new wu2(2));
                    if (aVarB != null) {
                        n64VarB = aVarB;
                        break;
                    }
                    n64VarB = m64.b(strDecodeString, "'-'", i5 + 3, new xi1(2));
                    if (n64VarB == null && (n64VarB = m64.b(strDecodeString, "'T' or 't'", i5 + 6, new ws0(4))) == null && (n64VarB = m64.b(strDecodeString, "':'", i5 + 9, new yc2(3))) == null && (n64VarB = m64.b(strDecodeString, "':'", i5 + 12, new zc2(2))) == null) {
                        int i8 = 0;
                        while (true) {
                            if (i8 >= 10) {
                                int iD = m64.d(i5 + 1, strDecodeString);
                                int iD2 = m64.d(i5 + 4, strDecodeString);
                                int iD3 = m64.d(i5 + 7, strDecodeString);
                                int iD4 = m64.d(i5 + 10, strDecodeString);
                                int iD5 = m64.d(i5 + 13, strDecodeString);
                                int i9 = i5 + 15;
                                if (strDecodeString.charAt(i9) == '.') {
                                    i9 = i7;
                                    int iCharAt2 = 0;
                                    while (i9 < strDecodeString.length() && '0' <= (cCharAt = strDecodeString.charAt(i9)) && cCharAt < ':') {
                                        iCharAt2 = (iCharAt2 * 10) + (strDecodeString.charAt(i9) - '0');
                                        i9++;
                                    }
                                    int i10 = i9 - i7;
                                    if (1 > i10 || i10 >= 10) {
                                        n64VarB = m64.c(strDecodeString, "1..9 digits are supported for the fraction of the second, got " + i10 + " digits");
                                        break;
                                    }
                                    i2 = iCharAt2 * m64.a[9 - i10];
                                } else {
                                    i2 = 0;
                                }
                                if (i9 < strDecodeString.length()) {
                                    char cCharAt4 = strDecodeString.charAt(i9);
                                    if (cCharAt4 != '+' && cCharAt4 != '-') {
                                        if (cCharAt4 != 'Z' && cCharAt4 != 'z') {
                                            n64VarB = m64.c(strDecodeString, "Expected the UTC offset at position " + i9 + ", got '" + cCharAt4 + '\'');
                                            break;
                                        }
                                        int i11 = i9 + 1;
                                        if (strDecodeString.length() != i11) {
                                            n64VarB = m64.c(strDecodeString, "Extra text after the instant at position " + i11);
                                            break;
                                        }
                                        iB = 0;
                                        if (1 <= iD) {
                                            n64VarB = m64.c(strDecodeString, "Expected a month number in 1..12, got " + iD);
                                            break;
                                        }
                                        n64VarB = m64.c(strDecodeString, "Expected a month number in 1..12, got " + iD);
                                        break;
                                    }
                                    int length = strDecodeString.length() - i9;
                                    if (length <= 9) {
                                        if (length % 3 == 0) {
                                            for (int i12 = 0; i12 < 2 && (i4 = m64.c[i12] + i9) < strDecodeString.length(); i12++) {
                                                if (strDecodeString.charAt(i4) != ':') {
                                                    StringBuilder sbC = n7.c(i4, "Expected ':' at index ", ", got '");
                                                    sbC.append(strDecodeString.charAt(i4));
                                                    sbC.append('\'');
                                                    n64VarB = m64.c(strDecodeString, sbC.toString());
                                                    break;
                                                }
                                            }
                                            int i13 = 0;
                                            while (i13 < 6 && (i3 = m64.d[i13] + i9) < strDecodeString.length()) {
                                                char cCharAt5 = strDecodeString.charAt(i3);
                                                int i14 = i13;
                                                if ('0' > cCharAt5 || cCharAt5 >= ':') {
                                                    StringBuilder sbC2 = n7.c(i3, "Expected an ASCII digit at index ", ", got '");
                                                    sbC2.append(strDecodeString.charAt(i3));
                                                    sbC2.append('\'');
                                                    n64VarB = m64.c(strDecodeString, sbC2.toString());
                                                    break;
                                                }
                                                i13 = i14 + 1;
                                            }
                                            int iD6 = m64.d(i9 + 1, strDecodeString);
                                            int iD7 = length > 3 ? m64.d(i9 + 4, strDecodeString) : 0;
                                            int iD8 = length > 6 ? m64.d(i9 + 7, strDecodeString) : 0;
                                            if (iD7 <= 59) {
                                                if (iD8 <= 59) {
                                                    if (iD6 > 17 && (iD6 != 18 || iD7 != 0 || iD8 != 0)) {
                                                        n64VarB = m64.c(strDecodeString, "Expected an offset in -18:00..+18:00, got " + strDecodeString.subSequence(i9, strDecodeString.length()).toString());
                                                        break;
                                                    }
                                                    iB = ti0.b(iD7, 60, iD6 * 3600, iD8) * (cCharAt4 == '-' ? -1 : 1);
                                                    if (1 <= iD && iD < 13) {
                                                        if (1 <= iD2) {
                                                            int i15 = iCharAt & 3;
                                                            if (iD2 > (iD != 2 ? (iD == 4 || iD == 6 || iD == 9 || iD == 11) ? 30 : 31 : i15 == 0 && (iCharAt % 100 != 0 || iCharAt % 400 == 0) ? 29 : 28)) {
                                                                StringBuilder sbF = bg.f(iD, iCharAt, "Expected a valid day-of-month for month ", " of year ", ", got ");
                                                                sbF.append(iD2);
                                                                n64VarB = m64.c(strDecodeString, sbF.toString());
                                                                break;
                                                            }
                                                            if (iD3 <= 23) {
                                                                if (iD4 <= 59) {
                                                                    if (iD5 <= 59) {
                                                                        long j = iCharAt;
                                                                        long j2 = 365 * j;
                                                                        long j3 = (j >= 0 ? ((j + 399) / 400) + (((j + 3) / 4) - ((j + 99) / 100)) + j2 : j2 - ((j / (-400)) + ((j / (-4)) - (j / (-100))))) + ((long) (((iD * 367) - 362) / 12)) + ((long) (iD2 - 1));
                                                                        if (iD > 2) {
                                                                            j3 = (i15 != 0 || (iCharAt % 100 == 0 && iCharAt % 400 != 0)) ? j3 - 2 : (-1) + j3;
                                                                        }
                                                                        n64VarB = new n64.b((((j3 - 719528) * TapjoyCacheKt.DEFAULT_TIME_TO_LIVE) + ((long) ti0.b(iD4, 60, iD3 * 3600, iD5))) - ((long) iB), i2);
                                                                        break;
                                                                    }
                                                                    n64VarB = m64.c(strDecodeString, "Expected second-of-minute in 0..59, got " + iD5);
                                                                    break;
                                                                }
                                                                n64VarB = m64.c(strDecodeString, "Expected minute-of-hour in 0..59, got " + iD4);
                                                                break;
                                                            }
                                                            n64VarB = m64.c(strDecodeString, "Expected hour in 0..23, got " + iD3);
                                                            break;
                                                        }
                                                        StringBuilder sbF2 = bg.f(iD, iCharAt, "Expected a valid day-of-month for month ", " of year ", ", got ");
                                                        sbF2.append(iD2);
                                                        n64VarB = m64.c(strDecodeString, sbF2.toString());
                                                        break;
                                                    }
                                                    n64VarB = m64.c(strDecodeString, "Expected a month number in 1..12, got " + iD);
                                                    break;
                                                }
                                                n64VarB = m64.c(strDecodeString, "Expected offset-second-of-minute in 0..59, got " + iD8);
                                                break;
                                            }
                                            n64VarB = m64.c(strDecodeString, "Expected offset-minute-of-hour in 0..59, got " + iD7);
                                            break;
                                        }
                                        n64VarB = m64.c(strDecodeString, "Invalid UTC offset string \"" + strDecodeString.subSequence(i9, strDecodeString.length()).toString() + '\"');
                                        break;
                                    }
                                    n64VarB = m64.c(strDecodeString, "The UTC offset string \"" + m64.e(16, strDecodeString.subSequence(i9, strDecodeString.length()).toString()) + "\" is too long");
                                    break;
                                }
                                n64VarB = m64.c(strDecodeString, "The UTC offset at the end of the string is missing");
                                break;
                            }
                            aVarB = m64.b(strDecodeString, "an ASCII digit", m64.b[i8] + i5, new t71(2));
                            if (aVarB != null) {
                                n64VarB = aVarB;
                                break;
                            }
                            i8++;
                        }
                    }
                } else {
                    n64VarB = m64.c(strDecodeString, "The input string is too short");
                }
            } else {
                n64VarB = m64.c(strDecodeString, "A '+' or '-' sign is required for year numbers longer than 4 digits");
            }
        }
        return n64VarB.toInstant();
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        g64 g64Var = (g64) obj;
        g64Var.getClass();
        ux2Var.encodeString(g64Var.toString());
    }
}
