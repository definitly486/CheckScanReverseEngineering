package defpackage;

import androidx.media3.extractor.ts.PsExtractor;
import com.google.android.gms.internal.measurement.zzaii;
import com.google.android.gms.internal.measurement.zzmt;
import com.google.android.gms.measurement.internal.zzfy;
import com.google.zxing.FormatException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class sd2 implements rxa, zzmt {
    public static final char[] b = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', ' ', '$', '%', '*', '+', '-', '.', '/', ':'};
    public static final /* synthetic */ sd2 c = new sd2();
    public static final /* synthetic */ sd2 d = new sd2();

    /* JADX WARN: Code duplicated, block: B:26:0x006a  */
    public static void a(si0 si0Var, StringBuilder sb, int i, boolean z) throws FormatException {
        while (i > 1) {
            if (si0Var.a() < 11) {
                throw FormatException.a();
            }
            int iB = si0Var.b(11);
            sb.append(f(iB / 45));
            sb.append(f(iB % 45));
            i -= 2;
        }
        if (i == 1) {
            if (si0Var.a() < 6) {
                throw FormatException.a();
            }
            sb.append(f(si0Var.b(6)));
        }
        if (z) {
            for (int length = sb.length(); length < sb.length(); length++) {
                if (sb.charAt(length) == '%') {
                    if (length < sb.length() - 1) {
                        int i2 = length + 1;
                        if (sb.charAt(i2) == '%') {
                            sb.deleteCharAt(i2);
                        } else {
                            sb.setCharAt(length, (char) 29);
                        }
                    } else {
                        sb.setCharAt(length, (char) 29);
                    }
                }
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:124:0x0149  */
    /* JADX WARN: Code duplicated, block: B:134:0x015b  */
    /* JADX WARN: Code duplicated, block: B:78:0x00dc A[PHI: r27
      0x00dc: PHI (r27v6 boolean) = (r27v5 boolean), (r27v5 boolean), (r27v5 boolean), (r27v7 boolean), (r27v7 boolean), (r27v7 boolean) binds: [B:80:0x00e2, B:82:0x00e6, B:84:0x00ea, B:72:0x00d0, B:73:0x00d2, B:75:0x00d6] A[DONT_GENERATE, DONT_INLINE]] */
    public static void b(si0 si0Var, StringBuilder sb, int i, fa1 fa1Var, ArrayList arrayList, Map map) throws FormatException {
        String strName;
        boolean z;
        boolean z2;
        boolean z3;
        if (i * 8 > si0Var.a()) {
            throw FormatException.a();
        }
        byte[] bArr = new byte[i];
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            bArr[i3] = (byte) si0Var.b(8);
        }
        if (fa1Var == null) {
            String str = ka8.a;
            if (map == null || (strName = (String) map.get(nd2.CHARACTER_SET)) == null) {
                boolean z4 = true;
                boolean z5 = i > 3 && bArr[0] == -17 && bArr[1] == -69 && bArr[2] == -65;
                boolean z6 = true;
                boolean z7 = true;
                int i4 = 0;
                int i5 = 0;
                int i6 = 0;
                int i7 = 0;
                int i8 = 0;
                int i9 = 0;
                int i10 = 0;
                int i11 = 0;
                int i12 = 0;
                int i13 = 0;
                int i14 = 0;
                while (i5 < i && (z4 || z6 || z7)) {
                    byte b2 = bArr[i5];
                    boolean z8 = z4;
                    int i15 = b2 & 255;
                    if (z7) {
                        if (i6 <= 0) {
                            z = z5;
                            if ((b2 & 128) != 0) {
                                if ((b2 & 64) != 0) {
                                    int i16 = i6 + 1;
                                    if ((b2 & 32) == 0) {
                                        i8++;
                                    } else {
                                        i16 = i6 + 2;
                                        if ((b2 & 16) == 0) {
                                            i9++;
                                        } else {
                                            i6 += 3;
                                            if ((b2 & 8) == 0) {
                                                i10++;
                                            }
                                        }
                                    }
                                    i6 = i16;
                                }
                            }
                        } else if ((b2 & 128) == 0) {
                            z = z5;
                        } else {
                            i6--;
                            z = z5;
                        }
                        z7 = false;
                    } else {
                        z = z5;
                    }
                    if (!z8) {
                        z2 = z8;
                    } else if (i15 <= 127 || i15 >= 160) {
                        if (i15 > 159 && (i15 < 192 || i15 == 215 || i15 == 247)) {
                            i12++;
                        }
                        z2 = z8;
                    } else {
                        z2 = false;
                    }
                    if (!z6) {
                        z3 = z2;
                    } else if (i7 > 0) {
                        z3 = z2;
                        if (i15 < 64 || i15 == 127 || i15 > 252) {
                            z6 = false;
                        } else {
                            i7--;
                        }
                    } else {
                        z3 = z2;
                        if (i15 == 128 || i15 == 160 || i15 > 239) {
                            z6 = false;
                        } else if (i15 <= 160 || i15 >= 224) {
                            if (i15 > 127) {
                                i7++;
                                int i17 = i13 + 1;
                                if (i17 > i2) {
                                    i2 = i17;
                                    i13 = i2;
                                } else {
                                    i13 = i17;
                                }
                            } else {
                                i13 = 0;
                            }
                            i14 = 0;
                        } else {
                            i4++;
                            int i18 = i14 + 1;
                            if (i18 > i11) {
                                i11 = i18;
                                i14 = i11;
                            } else {
                                i14 = i18;
                            }
                            i13 = 0;
                        }
                    }
                    i5++;
                    z4 = z3;
                    z5 = z;
                }
                boolean z9 = z4;
                boolean z10 = z5;
                if (z7 && i6 > 0) {
                    z7 = false;
                }
                boolean z11 = (!z6 || i7 <= 0) ? z6 : false;
                strName = "UTF8";
                if (!z7 || (!z10 && i8 + i9 + i10 <= 0)) {
                    if (z11 && (ka8.b || i11 >= 3 || i2 >= 3)) {
                        strName = "SJIS";
                    } else if (z9 && z11) {
                        if (!(i11 == 2 && i4 == 2) && i12 * 10 < i) {
                            strName = "ISO8859_1";
                        } else {
                            strName = "SJIS";
                        }
                    } else if (z9) {
                        strName = "ISO8859_1";
                    } else if (z11) {
                        strName = "SJIS";
                    } else if (!z7) {
                        strName = ka8.a;
                    }
                }
            }
        } else {
            strName = fa1Var.name();
        }
        try {
            sb.append(new String(bArr, strName));
            arrayList.add(bArr);
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.a();
        }
    }

    public static void c(si0 si0Var, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > si0Var.a()) {
            throw FormatException.a();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iB = si0Var.b(13);
            int i3 = (iB % 96) | ((iB / 96) << 8);
            int i4 = i3 + (i3 < 959 ? 41377 : 42657);
            bArr[i2] = (byte) ((i4 >> 8) & 255);
            bArr[i2 + 1] = (byte) (i4 & 255);
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, "GB2312"));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.a();
        }
    }

    public static void d(si0 si0Var, StringBuilder sb, int i) throws FormatException {
        if (i * 13 > si0Var.a()) {
            throw FormatException.a();
        }
        byte[] bArr = new byte[i * 2];
        int i2 = 0;
        while (i > 0) {
            int iB = si0Var.b(13);
            int i3 = (iB % PsExtractor.AUDIO_STREAM) | ((iB / PsExtractor.AUDIO_STREAM) << 8);
            int i4 = i3 + (i3 < 7936 ? 33088 : 49472);
            bArr[i2] = (byte) (i4 >> 8);
            bArr[i2 + 1] = (byte) i4;
            i2 += 2;
            i--;
        }
        try {
            sb.append(new String(bArr, "SJIS"));
        } catch (UnsupportedEncodingException unused) {
            throw FormatException.a();
        }
    }

    public static void e(si0 si0Var, StringBuilder sb, int i) throws FormatException {
        while (i >= 3) {
            if (si0Var.a() < 10) {
                throw FormatException.a();
            }
            int iB = si0Var.b(10);
            if (iB >= 1000) {
                throw FormatException.a();
            }
            sb.append(f(iB / 100));
            sb.append(f((iB / 10) % 10));
            sb.append(f(iB % 10));
            i -= 3;
        }
        if (i == 2) {
            if (si0Var.a() < 7) {
                throw FormatException.a();
            }
            int iB2 = si0Var.b(7);
            if (iB2 >= 100) {
                throw FormatException.a();
            }
            sb.append(f(iB2 / 10));
            sb.append(f(iB2 % 10));
            return;
        }
        if (i == 1) {
            if (si0Var.a() < 4) {
                throw FormatException.a();
            }
            int iB3 = si0Var.b(4);
            if (iB3 >= 10) {
                throw FormatException.a();
            }
            sb.append(f(iB3));
        }
    }

    public static char f(int i) throws FormatException {
        if (i < 45) {
            return b[i];
        }
        throw FormatException.a();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        List list = zzfy.a;
        return Boolean.valueOf(zzaii.zza());
    }
}
