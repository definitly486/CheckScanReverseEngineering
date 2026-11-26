package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class bd4 {
    public static ad4 a(nl3 nl3Var) {
        xb4.a aVar = xb4.d;
        aVar.getClass();
        nl3Var.getClass();
        dc4 dc4Var = new dc4();
        fc4 fc4Var = aVar.a;
        dc4Var.a = fc4Var.b;
        dc4Var.b = fc4Var.a;
        String str = fc4Var.c;
        dc4Var.c = fc4Var.d;
        String str2 = fc4Var.e;
        yk1 yk1Var = fc4Var.g;
        boolean z = fc4Var.f;
        jq7 jq7Var = aVar.b;
        boolean z2 = fc4Var.h;
        nl3Var.invoke(dc4Var);
        if (!str.equals("    ")) {
            fg.c("Indent should not be specified when default printing mode is used");
            return null;
        }
        fc4 fc4Var2 = new fc4(dc4Var.b, dc4Var.a, str, dc4Var.c, str2, z, yk1Var, z2);
        jq7Var.getClass();
        ad4 ad4Var = new ad4(fc4Var2, jq7Var);
        if (jq7Var.equals(nq7.a)) {
            return ad4Var;
        }
        jq7Var.a(new xd4(fc4Var2));
        return ad4Var;
    }
}
