package yads;

import java.util.Iterator;

/* JADX INFO: loaded from: classes6.dex */
public final class m5 {
    public static final String a = "yandex_ad_info";

    public static String a(ba6 ba6Var) {
        Object next;
        Iterator it = ba6Var.a.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!defpackage.aa4.e(((qs2) next).a, a));
        qs2 qs2Var = (qs2) next;
        if (qs2Var != null) {
            return qs2Var.b;
        }
        return null;
    }
}
