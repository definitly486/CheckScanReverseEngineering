package defpackage;

import android.graphics.Bitmap;

/* JADX INFO: loaded from: classes3.dex */
public final class aa3 implements tf4<b99> {
    @Override // defpackage.tf4
    public final String a(b99 b99Var, zz5 zz5Var) {
        String strC;
        b99 b99Var2 = b99Var;
        String str = b99Var2.c;
        if ((str != null && !str.equals("file")) || b99Var2.e == null) {
            return null;
        }
        Bitmap.Config[] configArr = sb9.a;
        if ((aa4.e(b99Var2.c, "file") && aa4.e(qn1.V(xz2.d(b99Var2)), "android_asset")) || !((Boolean) c53.b(zz5Var, d24.c)).booleanValue() || (strC = xz2.c(b99Var2)) == null) {
            return null;
        }
        w93 w93Var = zz5Var.f;
        String str2 = j46.c;
        return b99Var2 + "-" + w93Var.p(j46.a.a(strC, false)).f;
    }
}
