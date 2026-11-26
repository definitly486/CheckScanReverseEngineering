package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class fy3 {
    public static final fy3 a = new fy3();
    public static final gx0 b;
    public static final String[] c;
    public static final String[] d;
    public static final String[] e;

    static {
        gx0 gx0Var = gx0.e;
        b = gx0.a.c("PRI * HTTP/2.0\r\n\r\nSM\r\n\r\n");
        c = new String[]{"DATA", "HEADERS", "PRIORITY", "RST_STREAM", "SETTINGS", "PUSH_PROMISE", "PING", "GOAWAY", "WINDOW_UPDATE", "CONTINUATION"};
        d = new String[64];
        String[] strArr = new String[256];
        for (int i = 0; i < 256; i++) {
            String binaryString = Integer.toBinaryString(i);
            binaryString.getClass();
            String strReplace = gb9.h("%8s", binaryString).replace(' ', '0');
            strReplace.getClass();
            strArr[i] = strReplace;
        }
        e = strArr;
        String[] strArr2 = d;
        strArr2[0] = "";
        strArr2[1] = "END_STREAM";
        int[] iArr = {1};
        strArr2[8] = "PADDED";
        int i2 = iArr[0];
        strArr2[i2 | 8] = me0.d(new StringBuilder(), strArr2[i2], "|PADDED");
        strArr2[4] = "END_HEADERS";
        strArr2[32] = "PRIORITY";
        strArr2[36] = "END_HEADERS|PRIORITY";
        int[] iArr2 = {4, 32, 36};
        for (int i3 = 0; i3 < 3; i3++) {
            int i4 = iArr2[i3];
            int i5 = iArr[0];
            String[] strArr3 = d;
            int i6 = i5 | i4;
            strArr3[i6] = strArr3[i5] + '|' + strArr3[i4];
            StringBuilder sb = new StringBuilder();
            sb.append(strArr3[i5]);
            sb.append('|');
            strArr3[i6 | 8] = me0.d(sb, strArr3[i4], "|PADDED");
        }
        int length = d.length;
        for (int i7 = 0; i7 < length; i7++) {
            String[] strArr4 = d;
            if (strArr4[i7] == null) {
                strArr4[i7] = e[i7];
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:38:0x0067  */
    public static String a(boolean z, int i, int i2, int i3, int i4) {
        String strY;
        String str;
        String[] strArr = c;
        String strH = i3 < strArr.length ? strArr[i3] : gb9.h("0x%02x", Integer.valueOf(i3));
        if (i4 == 0) {
            strY = "";
        } else {
            String[] strArr2 = e;
            if (i3 == 2 || i3 == 3) {
                strY = strArr2[i4];
            } else if (i3 == 4 || i3 == 6) {
                strY = i4 == 1 ? "ACK" : strArr2[i4];
            } else if (i3 == 7 || i3 == 8) {
                strY = strArr2[i4];
            } else {
                String[] strArr3 = d;
                if (i4 < strArr3.length) {
                    str = strArr3[i4];
                    str.getClass();
                } else {
                    str = strArr2[i4];
                }
                if (i3 != 5 || (i4 & 4) == 0) {
                    strY = (i3 != 0 || (i4 & 32) == 0) ? str : ra8.y(str, "PRIORITY", "COMPRESSED");
                } else {
                    strY = ra8.y(str, "HEADERS", "PUSH_PROMISE");
                }
            }
        }
        return gb9.h("%s 0x%08x %5d %-13s %s", z ? "<<" : ">>", Integer.valueOf(i), Integer.valueOf(i2), strH, strY);
    }
}
