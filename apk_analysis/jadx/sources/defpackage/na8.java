package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public class na8 extends eg9 {
    public static String h(String str) {
        return jp7.m(new f29(new sa8(str), new m14("    ", 1)), "\n", null, 62);
    }

    public static String i(String str) {
        int length;
        List listP = ta8.P(str);
        List list = listP;
        ArrayList arrayList = new ArrayList();
        for (Object obj : list) {
            if (!ta8.M((String) obj)) {
                arrayList.add(obj);
            }
        }
        ArrayList arrayList2 = new ArrayList(kn1.q(arrayList, 10));
        Iterator it = arrayList.iterator();
        while (true) {
            length = 0;
            if (!it.hasNext()) {
                break;
            }
            String str2 = (String) it.next();
            int length2 = str2.length();
            while (true) {
                if (length >= length2) {
                    length = -1;
                    break;
                }
                if (!ga1.e(str2.charAt(length))) {
                    break;
                }
                length++;
            }
            if (length == -1) {
                length = str2.length();
            }
            arrayList2.add(Integer.valueOf(length));
        }
        Integer num = (Integer) qn1.e0(arrayList2);
        int iIntValue = num != null ? num.intValue() : 0;
        int length3 = str.length();
        listP.size();
        int size = listP.size() - 1;
        ArrayList arrayList3 = new ArrayList();
        Iterator it2 = list.iterator();
        while (true) {
            if (!it2.hasNext()) {
                StringBuilder sb = new StringBuilder(length3);
                qn1.Z(arrayList3, sb, "\n", null, 124);
                return sb.toString();
            }
            Object next = it2.next();
            int i = length + 1;
            if (length < 0) {
                u96.o();
                throw null;
            }
            String str3 = (String) next;
            String strH0 = ((length == 0 || length == size) && ta8.M(str3)) ? null : ua8.h0(iIntValue, str3);
            if (strH0 != null) {
                arrayList3.add(strH0);
            }
            length = i;
        }
    }

    public static String j(String str) {
        if (ta8.M("|")) {
            fg.c("marginPrefix must be non-blank string.");
            return null;
        }
        List listP = ta8.P(str);
        int length = str.length();
        listP.size();
        int size = listP.size() - 1;
        ArrayList arrayList = new ArrayList();
        int i = 0;
        for (Object obj : listP) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            String str2 = (String) obj;
            if ((i == 0 || i == size) && ta8.M(str2)) {
                str2 = null;
            } else {
                int length2 = str2.length();
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        i3 = -1;
                        break;
                    }
                    if (!ga1.e(str2.charAt(i3))) {
                        break;
                    }
                    i3++;
                }
                String strSubstring = (i3 != -1 && ra8.B(i3, str2, "|", false)) ? str2.substring("|".length() + i3) : null;
                if (strSubstring != null) {
                    str2 = strSubstring;
                }
            }
            if (str2 != null) {
                arrayList.add(str2);
            }
            i = i2;
        }
        StringBuilder sb = new StringBuilder(length);
        qn1.Z(arrayList, sb, "\n", null, 124);
        return sb.toString();
    }
}
