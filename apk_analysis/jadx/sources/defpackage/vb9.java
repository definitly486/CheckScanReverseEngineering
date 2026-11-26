package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class vb9 implements df4<tb9> {
    public static final vb9 a = new vb9();
    public static final fg6 b = new fg6("kotlin.uuid.Uuid", dg6.i.a);

    @Override // defpackage.xl2
    public final Object deserialize(ud2 ud2Var) {
        ud2Var.getClass();
        String strDecodeString = ud2Var.decodeString();
        strDecodeString.getClass();
        int length = strDecodeString.length();
        int i = 0;
        if (length == 32) {
            long j = 0;
            while (i < 16) {
                long j2 = j << 4;
                char cCharAt = strDecodeString.charAt(i);
                if ((cCharAt >>> '\b') == 0) {
                    long j3 = wv3.b[cCharAt];
                    if (j3 >= 0) {
                        j = j2 | j3;
                        i++;
                    }
                }
                ea6.e(i, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            long j4 = 0;
            for (int i2 = 16; i2 < 32; i2++) {
                long j5 = j4 << 4;
                char cCharAt2 = strDecodeString.charAt(i2);
                if ((cCharAt2 >>> '\b') == 0) {
                    long j6 = wv3.b[cCharAt2];
                    if (j6 >= 0) {
                        j4 = j5 | j6;
                    }
                }
                ea6.e(i2, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            if (j != 0 || j4 != 0) {
                return new tb9(j, j4);
            }
        } else {
            if (length != 36) {
                StringBuilder sb = new StringBuilder("Expected either a 36-char string in the standard hex-and-dash UUID format or a 32-char hexadecimal string, but was \"");
                sb.append(strDecodeString.length() <= 64 ? strDecodeString : strDecodeString.substring(0, 64).concat("..."));
                sb.append("\" of length ");
                sb.append(strDecodeString.length());
                throw new IllegalArgumentException(sb.toString());
            }
            long j7 = 0;
            while (i < 8) {
                long j8 = j7 << 4;
                char cCharAt3 = strDecodeString.charAt(i);
                if ((cCharAt3 >>> '\b') == 0) {
                    long j9 = wv3.b[cCharAt3];
                    if (j9 >= 0) {
                        j7 = j8 | j9;
                        i++;
                    }
                }
                ea6.e(i, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            if (strDecodeString.charAt(8) != '-') {
                ea6.e(8, strDecodeString, "'-' (hyphen)");
                throw null;
            }
            long j10 = 0;
            for (int i3 = 9; i3 < 13; i3++) {
                long j11 = j10 << 4;
                char cCharAt4 = strDecodeString.charAt(i3);
                if ((cCharAt4 >>> '\b') == 0) {
                    long j12 = wv3.b[cCharAt4];
                    if (j12 >= 0) {
                        j10 = j11 | j12;
                    }
                }
                ea6.e(i3, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            if (strDecodeString.charAt(13) != '-') {
                ea6.e(13, strDecodeString, "'-' (hyphen)");
                throw null;
            }
            long j13 = 0;
            for (int i4 = 14; i4 < 18; i4++) {
                long j14 = j13 << 4;
                char cCharAt5 = strDecodeString.charAt(i4);
                if ((cCharAt5 >>> '\b') == 0) {
                    long j15 = wv3.b[cCharAt5];
                    if (j15 >= 0) {
                        j13 = j14 | j15;
                    }
                }
                ea6.e(i4, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            if (strDecodeString.charAt(18) != '-') {
                ea6.e(18, strDecodeString, "'-' (hyphen)");
                throw null;
            }
            long j16 = 0;
            for (int i5 = 19; i5 < 23; i5++) {
                long j17 = j16 << 4;
                char cCharAt6 = strDecodeString.charAt(i5);
                if ((cCharAt6 >>> '\b') == 0) {
                    long j18 = wv3.b[cCharAt6];
                    if (j18 >= 0) {
                        j16 = j17 | j18;
                    }
                }
                ea6.e(i5, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            if (strDecodeString.charAt(23) != '-') {
                ea6.e(23, strDecodeString, "'-' (hyphen)");
                throw null;
            }
            long j19 = 0;
            for (int i6 = 24; i6 < 36; i6++) {
                long j20 = j19 << 4;
                char cCharAt7 = strDecodeString.charAt(i6);
                if ((cCharAt7 >>> '\b') == 0) {
                    long j21 = wv3.b[cCharAt7];
                    if (j21 >= 0) {
                        j19 = j20 | j21;
                    }
                }
                ea6.e(i6, strDecodeString, "a hexadecimal digit");
                throw null;
            }
            long j22 = (j7 << 32) | (j10 << 16) | j13;
            long j23 = (j16 << 48) | j19;
            if (j22 != 0 || j23 != 0) {
                return new tb9(j22, j23);
            }
        }
        return tb9.d;
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return b;
    }

    @Override // defpackage.xp7
    public final void serialize(ux2 ux2Var, Object obj) {
        tb9 tb9Var = (tb9) obj;
        tb9Var.getClass();
        ux2Var.encodeString(tb9Var.toString());
    }
}
