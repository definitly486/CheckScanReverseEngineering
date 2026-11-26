package defpackage;

import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.SocketException;
import java.net.UnknownHostException;
import java.nio.ByteBuffer;
import java.util.Locale;

/* JADX INFO: loaded from: classes5.dex */
public final class p44 {
    public static final y91.f a = new y91.f('.');
    public static final y91.f b = new y91.f(':');

    public static final class a {
        public String a;
    }

    static {
        a aVar = new a();
        byte[] bArrB = b("127.0.0.1", aVar);
        if (bArrB == null) {
            Locale locale = Locale.ROOT;
            fg.c("'127.0.0.1' is not an IP string literal.");
            return;
        }
        a aVar2 = new a();
        byte[] bArrB2 = b("0.0.0.0", aVar2);
        if (bArrB2 != null) {
        } else {
            Locale locale2 = Locale.ROOT;
            fg.c("'0.0.0.0' is not an IP string literal.");
        }
    }

    public static InetAddress a(String str, byte[] bArr) {
        try {
            InetAddress byAddress = InetAddress.getByAddress(bArr);
            if (str == null) {
                return byAddress;
            }
            o8.f(byAddress instanceof Inet6Address, "Unexpected state, scope should only appear for ipv6");
            Inet6Address inet6Address = (Inet6Address) byAddress;
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                if (i <= 214748364) {
                    int i3 = i * 10;
                    int iDigit = Character.digit(str.charAt(i2), 10);
                    if (iDigit >= 0) {
                        i = i3 + iDigit;
                    }
                }
                i = -1;
            }
            if (i != -1) {
                return Inet6Address.getByAddress(inet6Address.getHostAddress(), inet6Address.getAddress(), i);
            }
            try {
                NetworkInterface byName = NetworkInterface.getByName(str);
                if (byName != null) {
                    return Inet6Address.getByAddress(inet6Address.getHostAddress(), inet6Address.getAddress(), byName);
                }
                Locale locale = Locale.ROOT;
                throw new IllegalArgumentException("No such interface: '" + str + "'");
            } catch (SocketException e) {
                e = e;
                throw new IllegalArgumentException("No such interface: " + str, e);
            } catch (UnknownHostException e2) {
                e = e2;
                throw new IllegalArgumentException("No such interface: " + str, e);
            }
        } catch (UnknownHostException e3) {
            xg.d(e3);
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:120:0x0140 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0077 A[PHI: r13
      0x0077: PHI (r13v2 java.lang.String) = (r13v0 java.lang.String), (r13v14 java.lang.String) binds: [B:22:0x0039, B:27:0x0073] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:30:0x0079 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:31:0x007b  */
    /* JADX WARN: Code duplicated, block: B:40:0x009f  */
    /* JADX WARN: Code duplicated, block: B:73:0x0100  */
    /* JADX WARN: Code duplicated, block: B:74:0x0101  */
    /* JADX WARN: Code duplicated, block: B:77:0x0108 A[Catch: NumberFormatException -> 0x0155, TryCatch #0 {NumberFormatException -> 0x0155, blocks: (B:71:0x00fa, B:75:0x0102, B:77:0x0108, B:79:0x010e, B:80:0x0112, B:84:0x011b, B:93:0x013d, B:85:0x0121, B:91:0x012b, B:92:0x0139, B:94:0x0140, B:95:0x0145), top: B:105:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:79:0x010e A[Catch: NumberFormatException -> 0x0155, TryCatch #0 {NumberFormatException -> 0x0155, blocks: (B:71:0x00fa, B:75:0x0102, B:77:0x0108, B:79:0x010e, B:80:0x0112, B:84:0x011b, B:93:0x013d, B:85:0x0121, B:91:0x012b, B:92:0x0139, B:94:0x0140, B:95:0x0145), top: B:105:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:82:0x0118  */
    /* JADX WARN: Code duplicated, block: B:84:0x011b A[Catch: NumberFormatException -> 0x0155, LOOP:3: B:83:0x0119->B:84:0x011b, LOOP_END, TryCatch #0 {NumberFormatException -> 0x0155, blocks: (B:71:0x00fa, B:75:0x0102, B:77:0x0108, B:79:0x010e, B:80:0x0112, B:84:0x011b, B:93:0x013d, B:85:0x0121, B:91:0x012b, B:92:0x0139, B:94:0x0140, B:95:0x0145), top: B:105:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:85:0x0121 A[Catch: NumberFormatException -> 0x0155, TryCatch #0 {NumberFormatException -> 0x0155, blocks: (B:71:0x00fa, B:75:0x0102, B:77:0x0108, B:79:0x010e, B:80:0x0112, B:84:0x011b, B:93:0x013d, B:85:0x0121, B:91:0x012b, B:92:0x0139, B:94:0x0140, B:95:0x0145), top: B:105:0x00fa }] */
    /* JADX WARN: Code duplicated, block: B:87:0x0125  */
    public static byte[] b(String str, a aVar) {
        int i;
        int iB;
        int i2;
        int i3;
        ByteBuffer byteBufferAllocate;
        int iIndexOf;
        int i4;
        int i5;
        int i6 = 0;
        boolean z = false;
        boolean z2 = false;
        while (true) {
            i = 1;
            if (i6 >= str.length()) {
                i6 = -1;
                break;
            }
            char cCharAt = str.charAt(i6);
            if (cCharAt == '.') {
                z = true;
            } else {
                if (cCharAt != ':') {
                    if (cCharAt == '%') {
                        break;
                    }
                    if (Character.digit(cCharAt, 16) == -1) {
                    }
                    return null;
                }
                if (z) {
                    return null;
                }
                z2 = true;
            }
            i6++;
        }
        if (z2) {
            if (z) {
                int iLastIndexOf = str.lastIndexOf(58) + 1;
                String strSubstring = str.substring(0, iLastIndexOf);
                byte[] bArrD = d(str.substring(iLastIndexOf));
                str = bArrD == null ? null : pg.g(strSubstring, Integer.toHexString(((bArrD[0] & 255) << 8) | (bArrD[1] & 255)), StringUtils.PROCESS_POSTFIX_DELIMITER, Integer.toHexString((bArrD[3] & 255) | ((bArrD[2] & 255) << 8)));
                if (str != null) {
                    if (i6 != -1) {
                        if (aVar != null) {
                            aVar.a = str.substring(i6 + 1);
                        }
                        str = str.substring(0, i6);
                    }
                    iB = b.b(str);
                    if (iB >= 2 && iB <= 8) {
                        int i7 = iB + 1;
                        i2 = 8 - i7;
                        boolean z3 = false;
                        for (i3 = 0; i3 < str.length() - 1; i3++) {
                            if (str.charAt(i3) != ':' && str.charAt(i3 + 1) == ':') {
                                if (!z3) {
                                    int i8 = i2 + 1;
                                    if (i3 == 0) {
                                        i8 = i2 + 2;
                                    }
                                    if (i3 == str.length() - 2) {
                                        i8++;
                                    }
                                    i2 = i8;
                                    z3 = true;
                                }
                            }
                        }
                        if ((str.charAt(0) == ':' || str.charAt(1) == ':') && ((str.charAt(str.length() - 1) != ':' || str.charAt(str.length() - 2) == ':') && ((!z3 || i2 > 0) && (z3 || i7 == 8)))) {
                            byteBufferAllocate = ByteBuffer.allocate(16);
                            try {
                                if (str.charAt(0) != ':') {
                                    i = 0;
                                }
                                while (i < str.length()) {
                                    iIndexOf = str.indexOf(58, i);
                                    if (iIndexOf == -1) {
                                        iIndexOf = str.length();
                                    }
                                    if (str.charAt(i) == ':') {
                                        for (i5 = 0; i5 < i2; i5++) {
                                            byteBufferAllocate.putShort((short) 0);
                                        }
                                    } else {
                                        i4 = iIndexOf - i;
                                        if (i4 > 0 || i4 > 4) {
                                            throw new NumberFormatException();
                                        }
                                        int iDigit = 0;
                                        while (i < iIndexOf) {
                                            iDigit = (iDigit << 4) | Character.digit(str.charAt(i), 16);
                                            i++;
                                        }
                                        byteBufferAllocate.putShort((short) iDigit);
                                    }
                                    i = iIndexOf + 1;
                                }
                                return byteBufferAllocate.array();
                            } catch (NumberFormatException unused) {
                            }
                        }
                    }
                }
            } else {
                if (i6 != -1) {
                    if (aVar != null) {
                        aVar.a = str.substring(i6 + 1);
                    }
                    str = str.substring(0, i6);
                }
                iB = b.b(str);
                if (iB >= 2) {
                    int i9 = iB + 1;
                    i2 = 8 - i9;
                    boolean z4 = false;
                    while (i3 < str.length() - 1) {
                        if (str.charAt(i3) != ':') {
                        }
                    }
                    if (str.charAt(0) == ':') {
                        byteBufferAllocate = ByteBuffer.allocate(16);
                        if (str.charAt(0) != ':') {
                            i = 0;
                        }
                        while (i < str.length()) {
                            iIndexOf = str.indexOf(58, i);
                            if (iIndexOf == -1) {
                                iIndexOf = str.length();
                            }
                            if (str.charAt(i) == ':') {
                                i4 = iIndexOf - i;
                                if (i4 > 0) {
                                }
                                throw new NumberFormatException();
                            }
                            while (i5 < i2) {
                                byteBufferAllocate.putShort((short) 0);
                            }
                            i = iIndexOf + 1;
                        }
                        return byteBufferAllocate.array();
                    }
                    byteBufferAllocate = ByteBuffer.allocate(16);
                    if (str.charAt(0) != ':') {
                        i = 0;
                    }
                    while (i < str.length()) {
                        iIndexOf = str.indexOf(58, i);
                        if (iIndexOf == -1) {
                            iIndexOf = str.length();
                        }
                        if (str.charAt(i) == ':') {
                            i4 = iIndexOf - i;
                            if (i4 > 0) {
                            }
                            throw new NumberFormatException();
                        }
                        while (i5 < i2) {
                            byteBufferAllocate.putShort((short) 0);
                        }
                        i = iIndexOf + 1;
                    }
                    return byteBufferAllocate.array();
                }
            }
        } else if (z && i6 == -1) {
            return d(str);
        }
        return null;
    }

    public static byte c(int i, int i2, String str) {
        int i3 = i2 - i;
        if (i3 <= 0 || i3 > 3) {
            throw new NumberFormatException();
        }
        if (i3 > 1 && str.charAt(i) == '0') {
            throw new NumberFormatException();
        }
        int i4 = 0;
        while (i < i2) {
            int i5 = i4 * 10;
            int iDigit = Character.digit(str.charAt(i), 10);
            if (iDigit < 0) {
                throw new NumberFormatException();
            }
            i4 = i5 + iDigit;
            i++;
        }
        if (i4 <= 255) {
            return (byte) i4;
        }
        throw new NumberFormatException();
    }

    public static byte[] d(String str) {
        if (a.b(str) + 1 != 4) {
            return null;
        }
        byte[] bArr = new byte[4];
        int i = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            int iIndexOf = str.indexOf(46, i);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            try {
                bArr[i2] = c(i, iIndexOf, str);
                i = iIndexOf + 1;
            } catch (NumberFormatException unused) {
                return null;
            }
        }
        return bArr;
    }
}
