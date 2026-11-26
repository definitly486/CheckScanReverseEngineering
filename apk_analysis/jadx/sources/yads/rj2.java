package yads;

/* JADX INFO: loaded from: classes6.dex */
public final class rj2 {
    public final String a;

    public rj2(String str) {
        this.a = str;
    }

    public static rj2 a(os4 os4Var) {
        String str;
        os4Var.e(os4Var.b + 2);
        int iK = os4Var.k();
        int i = iK >> 1;
        int iK2 = ((os4Var.k() >> 3) & 31) | ((iK & 1) << 5);
        if (i == 4 || i == 5 || i == 7) {
            str = "dvhe";
        } else if (i == 8) {
            str = "hev1";
        } else {
            if (i != 9) {
                return null;
            }
            str = "avc3";
        }
        StringBuilder sb = new StringBuilder(str);
        sb.append(".0");
        sb.append(i);
        return new rj2(defpackage.ag.d(sb, iK2 >= 10 ? "." : ".0", iK2));
    }
}
