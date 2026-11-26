package defpackage;

import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public final class xt0 implements f94 {
    public final l02 a;

    public xt0(l02 l02Var) {
        l02Var.getClass();
        this.a = l02Var;
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        boolean z;
        b57 b57Var;
        b37 b37Var = ez6Var.e;
        b37.a aVarA = b37Var.a();
        fz3 fz3Var = b37Var.a;
        jv3 jv3Var = b37Var.c;
        g37 g37Var = b37Var.d;
        if (g37Var != null) {
            j95 j95VarB = g37Var.b();
            if (j95VarB != null) {
                aVarA.b("Content-Type", j95VarB.a);
            }
            long jA = g37Var.a();
            if (jA != -1) {
                aVarA.b("Content-Length", String.valueOf(jA));
                aVarA.c.g("Transfer-Encoding");
            } else {
                aVarA.b("Transfer-Encoding", "chunked");
                aVarA.c.g("Content-Length");
            }
        }
        int i = 0;
        if (jv3Var.a("Host") == null) {
            aVarA.b("Host", gb9.v(fz3Var, false));
        }
        if (jv3Var.a("Connection") == null) {
            aVarA.b("Connection", "Keep-Alive");
        }
        if (jv3Var.a("Accept-Encoding") == null && jv3Var.a("Range") == null) {
            aVarA.b("Accept-Encoding", "gzip");
            z = true;
        } else {
            z = false;
        }
        l02 l02Var = this.a;
        List<j02> listA = l02Var.a(fz3Var);
        if (!listA.isEmpty()) {
            StringBuilder sb = new StringBuilder();
            for (Object obj : listA) {
                int i2 = i + 1;
                if (i < 0) {
                    u96.o();
                    throw null;
                }
                j02 j02Var = (j02) obj;
                if (i > 0) {
                    sb.append("; ");
                }
                sb.append(j02Var.a);
                sb.append('=');
                sb.append(j02Var.b);
                i = i2;
            }
            aVarA.b("Cookie", sb.toString());
        }
        if (jv3Var.a("User-Agent") == null) {
            aVarA.b("User-Agent", "okhttp/4.12.0");
        }
        z47 z47VarB = ez6Var.b(aVarA.a());
        jv3 jv3Var2 = z47VarB.g;
        az3.b(l02Var, fz3Var, jv3Var2);
        z47.a aVarP = z47VarB.p();
        aVarP.a = b37Var;
        if (z && "gzip".equalsIgnoreCase(z47.n(z47VarB, "Content-Encoding")) && az3.a(z47VarB) && (b57Var = z47VarB.h) != null) {
            xt3 xt3Var = new xt3(b57Var.L());
            jv3.a aVarD = jv3Var2.d();
            aVarD.g("Content-Encoding");
            aVarD.g("Content-Length");
            aVarP.f = aVarD.e().d();
            aVarP.g = new hz6(z47.n(z47VarB, "Content-Type"), -1L, new iy6(xt3Var));
        }
        return aVarP.a();
    }
}
