package defpackage;

import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes5.dex */
public final class a59 implements f94 {
    public final ix8 a;
    public final yc5 b;

    public a59(ix8 ix8Var, yc5 yc5Var) {
        this.a = ix8Var;
        this.b = yc5Var;
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        ix8 ix8Var = this.a;
        b37 b37Var = ez6Var.e;
        try {
            String token = ix8Var.getToken();
            z47 z47VarB = ez6Var.b(b37Var);
            if (z47VarB.e == 401) {
                b37 b37Var2 = z47VarB.b;
                boolean zD = ta8.D(b37Var2.a.b(), "api/v2.1/users/signin", false);
                boolean zD2 = ta8.D(b37Var2.a.b(), "api/v2.1/account/balance", false);
                if (!zD && !zD2) {
                    boolean zEquals = token.equals(ix8Var.getToken());
                    yc5 yc5Var = this.b;
                    if (!zEquals) {
                        z47VarB.close();
                        z47 z47VarB2 = ez6Var.b(b37Var);
                        if (z47VarB2.e != 401) {
                            return z47VarB2;
                        }
                        yc5Var.invoke();
                        return z47VarB2;
                    }
                    yc5Var.invoke();
                }
            }
            return z47VarB;
        } catch (Exception e) {
            e.printStackTrace();
            z47.a aVar = new z47.a();
            b37Var.getClass();
            aVar.a = b37Var;
            ts6 ts6Var = ts6.HTTP_1_1;
            ts6Var.getClass();
            aVar.b = ts6Var;
            aVar.c = 900;
            aVar.d = bj.c("Exception: ", e.getMessage());
            String str = "{" + e + "}";
            Charset charset = ha1.b;
            bu0 bu0Var = new bu0();
            charset.getClass();
            bu0Var.F0(str, 0, str.length(), charset);
            aVar.g = new c57(null, bu0Var.c, bu0Var);
            return aVar.a();
        }
    }
}
