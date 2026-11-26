package defpackage;

/* JADX INFO: loaded from: classes4.dex */
public final class vt3 implements f94 {
    public final ta6 a;

    public vt3(ta6 ta6Var) {
        this.a = ta6Var;
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        b37 b37VarA = ez6Var.e;
        g37 g37Var = b37VarA.d;
        if (g37Var == null || b37VarA.c.a("Content-Encoding") != null || (g37Var instanceof lg5)) {
            return ez6Var.b(b37VarA);
        }
        try {
            b37.a aVarA = b37VarA.a();
            aVarA.b("Content-Encoding", "gzip");
            String str = b37VarA.b;
            ut3 ut3Var = new ut3(g37Var);
            bu0 bu0Var = new bu0();
            ut3Var.c(bu0Var);
            aVarA.c(str, new tt3(ut3Var, bu0Var));
            b37VarA = aVarA.a();
        } catch (Throwable th) {
            sg.f("Failed to gzip the request body: ", th, '.', this.a.v);
        }
        return ez6Var.b(b37VarA);
    }
}
