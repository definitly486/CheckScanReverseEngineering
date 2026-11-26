package io.appmetrica.analytics.impl;

import defpackage.ha1;
import defpackage.ti0;

/* JADX INFO: renamed from: io.appmetrica.analytics.impl.eg, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes5.dex */
public abstract class AbstractC0896eg {
    public static final String a(C1200q9 c1200q9) {
        String string;
        StringBuilder sb = new StringBuilder("Event sent: ");
        int i = c1200q9.c;
        String str = c1200q9.d;
        byte[] bArr = c1200q9.e;
        if (i == 1) {
            string = "Attribution";
        } else if (i == 2) {
            string = "Session start";
        } else if (i == 4) {
            if (str == null) {
                str = "null";
            }
            StringBuilder sb2 = new StringBuilder(str);
            if (bArr != null) {
                String str2 = new String(bArr, ha1.b);
                if (str2.length() > 0) {
                    sb2.append(" with value ");
                    sb2.append(str2);
                }
            }
            string = sb2.toString();
        } else if (i == 5) {
            string = "Referrer";
        } else if (i == 7) {
            string = "Session heartbeat";
        } else if (i == 13) {
            string = "The very first event";
        } else if (i == 35) {
            string = "E-Commerce";
        } else if (i == 40) {
            string = "Ad revenue (ILRD)";
        } else if (i == 42) {
            string = "External attribution";
        } else if (i == 16) {
            string = "Open";
        } else if (i == 17) {
            string = "Update";
        } else if (i == 20) {
            string = "User profile update";
        } else if (i != 21) {
            switch (i) {
                case 25:
                    string = "ANR";
                    break;
                case 26:
                    string = defpackage.bj.c("Crash: ", str);
                    break;
                case 27:
                    string = defpackage.bj.c("Error: ", str);
                    break;
                default:
                    string = defpackage.jh.b(i, "type=");
                    break;
            }
        } else {
            string = "Revenue";
        }
        sb.append(string);
        return sb.toString();
    }

    public static final String a(String str, EnumC1176pb enumC1176pb, String str2, String str3) {
        if (enumC1176pb == null) {
            enumC1176pb = EnumC1176pb.EVENT_TYPE_UNDEFINED;
        }
        if (!I9.d.contains(EnumC1176pb.a(enumC1176pb.a))) {
            return null;
        }
        StringBuilder sbC = ti0.c(str, ": ");
        sbC.append(enumC1176pb.name());
        if (I9.f.contains(enumC1176pb) && str2 != null && str2.length() != 0) {
            sbC.append(" with name ");
            sbC.append(str2);
        }
        if (I9.e.contains(enumC1176pb) && str3 != null && str3.length() != 0) {
            sbC.append(" with value ");
            sbC.append(str3);
        }
        return sbC.toString();
    }
}
