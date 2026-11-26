package yads;

import defpackage.kx6;

/* JADX INFO: loaded from: classes6.dex */
public abstract class qs5 {
    public static final String a(yo2 yo2Var, uo2 uo2Var, int i, String str) {
        if (str.length() == 0 || i <= 0) {
            if (str.length() != 0) {
                return "";
            }
            ((ns2) yo2Var.d).a(uo2Var);
            return "";
        }
        StringBuilder sb = new StringBuilder(i);
        defpackage.x74 it = kx6.n(0, i).iterator();
        while (it.d) {
            sb.append(str.charAt(it.nextInt() % str.length()));
        }
        return sb.toString();
    }
}
