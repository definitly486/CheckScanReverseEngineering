package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class q42 {
    public final t42 a;
    public final jf6 b;

    public q42(t42 t42Var, jf6 jf6Var) {
        this.a = t42Var;
        this.b = jf6Var;
    }

    public static m32 a(n32 n32Var) {
        String strD = n32Var.d();
        i32 i32VarA = n32Var.a();
        h32 h32Var = i32VarA != null ? new h32(i32VarA.b(), i32VarA.c(), i32VarA.a()) : null;
        String strG = n32Var.g();
        String strE = n32Var.e();
        String strF = n32Var.f();
        k32 k32VarB = n32Var.b();
        j32 j32Var = k32VarB != null ? new j32(k32VarB.b(), k32VarB.c(), k32VarB.a()) : null;
        e54 e54VarC = n32Var.c();
        return new m32(strD, h32Var, strG, strE, strF, j32Var, n32Var.h(), e54VarC != null ? new b54(e54VarC.b(), e54VarC.a()) : null);
    }
}
