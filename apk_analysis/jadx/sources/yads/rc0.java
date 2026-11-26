package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class rc0 {
    public static bd0 a(o75 o75Var, String str, y35 y35Var, int i) {
        ad0 ad0Var = new ad0();
        ad0Var.a = y35Var.a(str);
        ad0Var.d = y35Var.a;
        ad0Var.e = y35Var.b;
        String strC = o75Var.c();
        if (strC == null) {
            strC = y35Var.a(((ms) o75Var.b.get(0)).a).toString();
        }
        ad0Var.f = strC;
        ad0Var.g = i;
        zj.a(ad0Var.a, "The uri must be set.");
        return new bd0(ad0Var.a, 0L, ad0Var.b, null, ad0Var.c, ad0Var.d, ad0Var.e, ad0Var.f, ad0Var.g, null);
    }
}
