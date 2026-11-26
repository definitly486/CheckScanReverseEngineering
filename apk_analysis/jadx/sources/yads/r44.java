package yads;

import defpackage.ra8;
import defpackage.ta8;
import defpackage.u96;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

/* JADX INFO: loaded from: classes6.dex */
public final class r44 {
    public final List a = u96.i("AppOpenAd", "Banner", "Interstitial", "Rewarded", "Native");

    public final n70 a(x54 x54Var) {
        Object next;
        String str = x54Var.b;
        String strU = ta8.U(ta8.b0('.', str, str), "Adapter");
        if (strU.length() <= 0) {
            strU = null;
        }
        if (strU != null) {
            Iterator it = this.a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!ra8.u(strU, (String) next, false));
            String str2 = (String) next;
            if (str2 != null) {
                m70 m70Var = n70.c;
                String lowerCase = str2.toLowerCase(Locale.ROOT);
                lowerCase.getClass();
                m70Var.getClass();
                return m70.a(lowerCase);
            }
        }
        return null;
    }

    public final String b(x54 x54Var) {
        Object next;
        String str = x54Var.b;
        String strU = ta8.U(ta8.b0('.', str, str), "Adapter");
        if (strU.length() <= 0) {
            strU = null;
        }
        if (strU != null) {
            Iterator it = this.a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (!ra8.u(strU, (String) next, false));
            String str2 = (String) next;
            if (str2 != null) {
                String strU2 = ta8.U(strU, str2);
                if (strU2.length() > 0) {
                    return strU2;
                }
            }
        }
        return null;
    }
}
