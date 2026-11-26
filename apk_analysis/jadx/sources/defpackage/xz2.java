package defpackage;

import androidx.tracing.Trace;
import com.google.android.gms.internal.measurement.zzags;
import com.google.android.gms.internal.measurement.zzahz;
import com.google.android.gms.measurement.internal.zzfy;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.IDN;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class xz2 implements rxa {
    public static final /* synthetic */ xz2 c = new xz2(3);
    public static final /* synthetic */ xz2 d = new xz2(4);
    public final /* synthetic */ int b;

    public /* synthetic */ xz2(int i) {
        this.b = i;
    }

    public static b99 a(String str) {
        String str2 = j46.c;
        StringBuilder sb = new StringBuilder();
        sb.append("file");
        sb.append(':');
        if (str != null) {
            sb.append(str);
        }
        return new b99(sb.toString(), str2, "file", null, str);
    }

    /* JADX WARN: Code duplicated, block: B:55:0x00a2  */
    /* JADX WARN: Code duplicated, block: B:57:0x00ac A[LOOP:1: B:54:0x00a0->B:57:0x00ac, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:79:0x00b2 A[EDGE_INSN: B:79:0x00b2->B:58:0x00b2 BREAK  A[LOOP:1: B:54:0x00a0->B:57:0x00ac], SYNTHETIC] */
    public static final InetAddress b(int i, int i2, String str) {
        int i3;
        int i4;
        int iQ;
        byte[] bArr = new byte[16];
        int i5 = i;
        int i6 = 0;
        int i7 = -1;
        int i8 = -1;
        while (i5 < i2) {
            if (i6 == 16) {
                return null;
            }
            int i9 = i5 + 2;
            if (i9 <= i2 && ra8.B(i5, str, "::", false)) {
                if (i7 != -1) {
                    return null;
                }
                i6 += 2;
                i7 = i6;
                if (i9 == i2) {
                    break;
                }
                i8 = i9;
                i3 = 0;
                i5 = i8;
                while (i5 < i2) {
                    iQ = gb9.q(str.charAt(i5));
                    if (iQ != -1) {
                        break;
                        break;
                    }
                    i3 = (i3 << 4) + iQ;
                    i5++;
                }
                i4 = i5 - i8;
                return i4 == 0 ? null : null;
            }
            if (i6 != 0) {
                if (!ra8.B(i5, str, StringUtils.PROCESS_POSTFIX_DELIMITER, false)) {
                    if (!ra8.B(i5, str, ".", false)) {
                        return null;
                    }
                    int i10 = i6 - 2;
                    int i11 = i10;
                    while (i8 < i2) {
                        if (i11 == 16) {
                            return null;
                        }
                        if (i11 != i10) {
                            if (str.charAt(i8) != '.') {
                                return null;
                            }
                            i8++;
                        }
                        int i12 = 0;
                        int i13 = i8;
                        while (i13 < i2) {
                            char cCharAt = str.charAt(i13);
                            if (aa4.f(cCharAt, 48) < 0 || aa4.f(cCharAt, 57) > 0) {
                                break;
                            }
                            if ((i12 == 0 && i8 != i13) || (i12 = ((i12 * 10) + cCharAt) - 48) > 255) {
                                return null;
                            }
                            i13++;
                        }
                        if (i13 - i8 == 0) {
                            return null;
                        }
                        bArr[i11] = (byte) i12;
                        i11++;
                        i8 = i13;
                    }
                    if (i11 != i6 + 2) {
                        return null;
                    }
                    i6 += 2;
                    break;
                }
                i5++;
            }
            i8 = i5;
            i3 = 0;
            i5 = i8;
            while (i5 < i2) {
                iQ = gb9.q(str.charAt(i5));
                if (iQ != -1) {
                    break;
                }
                i3 = (i3 << 4) + iQ;
                i5++;
            }
            i4 = i5 - i8;
            if (i4 == 0 && i4 <= 4) {
                int i14 = i6 + 1;
                bArr[i6] = (byte) (255 & (i3 >>> 8));
                i6 += 2;
                bArr[i14] = (byte) (i3 & 255);
            }
        }
        if (i6 != 16) {
            if (i7 == -1) {
                return null;
            }
            int i15 = i6 - i7;
            System.arraycopy(bArr, i7, bArr, 16 - i15, i15);
            Arrays.fill(bArr, i7, (16 - i6) + i7, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    public static final String c(b99 b99Var) {
        List listD = d(b99Var);
        String str = b99Var.b;
        if (listD.isEmpty()) {
            return null;
        }
        String str2 = b99Var.e;
        str2.getClass();
        if (!ra8.C(str2, str, false)) {
            str = "";
        }
        return qn1.a0(listD, b99Var.b, str, null, 0, null, 60);
    }

    public static final List d(b99 b99Var) {
        String str = b99Var.e;
        if (str == null) {
            return kx2.b;
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < str.length()) {
            int i2 = i + 1;
            int iJ = ta8.J('/', i2, 4, str);
            if (iJ == -1) {
                iJ = str.length();
            }
            String strSubstring = str.substring(i2, iJ);
            if (strSubstring.length() > 0) {
                arrayList.add(strSubstring);
            }
            i = iJ;
        }
        return arrayList;
    }

    public static final String e(String str, byte[] bArr) {
        int length = str.length();
        int iMax = Math.max(0, length - 2);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= iMax) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    u0.a aVar = u0.Companion;
                    int length2 = bArr.length;
                    aVar.getClass();
                    u0.a.a(0, i2, length2);
                    return new String(bArr, 0, i2, ha1.b);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String strSubstring = str.substring(i + 1, i3);
                    ga1.b(16);
                    bArr[i2] = (byte) Integer.parseInt(strSubstring, 16);
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                    bArr[i2] = (byte) str.charAt(i);
                    i2++;
                    i++;
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    public static final String f(String str) {
        int i;
        str.getClass();
        int i2 = 0;
        int i3 = -1;
        if (ta8.D(str, StringUtils.PROCESS_POSTFIX_DELIMITER, false)) {
            InetAddress inetAddressB = (ra8.C(str, "[", false) && ra8.u(str, "]", false)) ? b(1, str.length() - 1, str) : b(0, str.length(), str);
            if (inetAddressB != null) {
                byte[] address = inetAddressB.getAddress();
                if (address.length != 16) {
                    if (address.length == 4) {
                        return inetAddressB.getHostAddress();
                    }
                    xg.d(lt0.d('\'', "Invalid IPv6 address: '", str));
                    return null;
                }
                int i4 = 0;
                int i5 = 0;
                while (i4 < address.length) {
                    int i6 = i4;
                    while (i6 < 16 && address[i6] == 0 && address[i6 + 1] == 0) {
                        i6 += 2;
                    }
                    int i7 = i6 - i4;
                    if (i7 > i5 && i7 >= 4) {
                        i3 = i4;
                        i5 = i7;
                    }
                    i4 = i6 + 2;
                }
                bu0 bu0Var = new bu0();
                while (i2 < address.length) {
                    if (i2 == i3) {
                        bu0Var.A0(58);
                        i2 += i5;
                        if (i2 == 16) {
                            bu0Var.A0(58);
                        }
                    } else {
                        if (i2 > 0) {
                            bu0Var.A0(58);
                        }
                        byte b = address[i2];
                        byte[] bArr = gb9.a;
                        bu0Var.C0(((b & 255) << 8) | (address[i2 + 1] & 255));
                        i2 += 2;
                    }
                }
                return bu0Var.q0();
            }
        } else {
            try {
                String ascii = IDN.toASCII(str);
                ascii.getClass();
                Locale locale = Locale.US;
                locale.getClass();
                String lowerCase = ascii.toLowerCase(locale);
                lowerCase.getClass();
                if (lowerCase.length() != 0) {
                    int length = lowerCase.length();
                    for (0; i < length; i + 1) {
                        char cCharAt = lowerCase.charAt(i);
                        i = (aa4.f(cCharAt, 31) > 0 && aa4.f(cCharAt, Trace.MAX_TRACE_LABEL_LENGTH) < 0 && ta8.J(cCharAt, 0, 6, " #%/:?@[\\]") == -1) ? i + 1 : 0;
                    }
                    return lowerCase;
                }
            } catch (IllegalArgumentException unused) {
            }
        }
        return null;
    }

    public static b99 g(String str) {
        String strSubstring;
        String strSubstring2;
        String str2 = j46.c;
        String strY = !aa4.e(str2, "/") ? ra8.y(str, str2, "/") : str;
        int i = 0;
        boolean z = true;
        int i2 = -1;
        int i3 = -1;
        int i4 = -1;
        int i5 = -1;
        int i6 = -1;
        while (i < strY.length()) {
            char cCharAt = strY.charAt(i);
            if (cCharAt != '#') {
                if (cCharAt != '/') {
                    if (cCharAt != ':') {
                        if (cCharAt == '?' && i4 == -1 && i2 == -1) {
                            i4 = i + 1;
                        }
                    } else if (z && i4 == -1 && i2 == -1) {
                        int i7 = i + 2;
                        if (i7 < str.length() && str.charAt(i + 1) == '/' && str.charAt(i7) == '/') {
                            i5 = i + 3;
                            z = false;
                            i6 = i;
                            i = i7;
                        } else if (strY.equals(str)) {
                            i3 = i + 1;
                            i6 = i;
                            i = i3;
                            i5 = i;
                        }
                    }
                } else if (i3 == -1 && i4 == -1 && i2 == -1) {
                    i3 = i5 == -1 ? 0 : i;
                    z = false;
                }
            } else if (i2 == -1) {
                i2 = i + 1;
            }
            i++;
        }
        int iMin = Math.min(i2 == -1 ? Integer.MAX_VALUE : i2 - 1, strY.length());
        int iMin2 = Math.min(i4 == -1 ? Integer.MAX_VALUE : i4 - 1, iMin);
        if (i5 != -1) {
            strSubstring2 = strY.substring(0, i6);
            strSubstring = strY.substring(i5, Math.min(i3 != -1 ? i3 : Integer.MAX_VALUE, iMin2));
        } else {
            strSubstring = null;
            strSubstring2 = null;
        }
        String strSubstring3 = i3 != -1 ? strY.substring(i3, iMin2) : null;
        String strSubstring4 = i4 != -1 ? strY.substring(i4, iMin) : null;
        String strSubstring5 = i2 != -1 ? strY.substring(i2, strY.length()) : null;
        byte[] bArr = new byte[Math.max(0, Math.max(strSubstring2 != null ? strSubstring2.length() : 0, Math.max(strSubstring != null ? strSubstring.length() : 0, Math.max(strSubstring3 != null ? strSubstring3.length() : 0, Math.max(strSubstring4 != null ? strSubstring4.length() : 0, strSubstring5 != null ? strSubstring5.length() : 0)))) - 2)];
        String strE = strSubstring2 != null ? e(strSubstring2, bArr) : null;
        String strE2 = strSubstring != null ? e(strSubstring, bArr) : null;
        String strE3 = strSubstring3 != null ? e(strSubstring3, bArr) : null;
        if (strSubstring4 != null) {
            e(strSubstring4, bArr);
        }
        if (strSubstring5 != null) {
            e(strSubstring5, bArr);
        }
        return new b99(strY, str2, strE, strE2, strE3);
    }

    public static String h(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length);
        for (byte b : bArr) {
            if (b == 34) {
                sb.append("\\\"");
            } else if (b == 39) {
                sb.append("\\'");
            } else if (b != 92) {
                switch (b) {
                    case 7:
                        sb.append("\\a");
                        break;
                    case 8:
                        sb.append("\\b");
                        break;
                    case 9:
                        sb.append("\\t");
                        break;
                    case 10:
                        sb.append("\\n");
                        break;
                    case 11:
                        sb.append("\\v");
                        break;
                    case 12:
                        sb.append("\\f");
                        break;
                    case 13:
                        sb.append("\\r");
                        break;
                    default:
                        if (b < 32 || b > 126) {
                            sb.append('\\');
                            sb.append((char) (((b >>> 6) & 3) + 48));
                            sb.append((char) (((b >>> 3) & 7) + 48));
                            sb.append((char) ((b & 7) + 48));
                        } else {
                            sb.append((char) b);
                        }
                        break;
                }
            } else {
                sb.append("\\\\");
            }
        }
        return sb.toString();
    }

    @Override // defpackage.rxa
    public /* synthetic */ Object zza() {
        switch (this.b) {
            case 3:
                List list = zzfy.a;
                return Long.valueOf(zzags.zzl());
            default:
                return new Boolean(zzahz.zza());
        }
    }
}
