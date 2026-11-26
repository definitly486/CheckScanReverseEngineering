package com.my.tracker.obfuscated;

/* JADX INFO: loaded from: classes4.dex */
public abstract class v2 {
    public static boolean a(u2 u2Var) {
        i2 i2VarA = u2Var.a();
        if (i2VarA != null && i2VarA.b() > 0) {
            return true;
        }
        i2[] i2VarArrD = u2Var.d();
        if (i2VarArrD != null && i2VarArrD.length > 0) {
            return true;
        }
        y[] yVarArrB = u2Var.b();
        return yVarArrB != null && yVarArrB.length > 0;
    }

    private static boolean b(u2 u2Var) {
        i2 i2VarA = u2Var.a();
        if (i2VarA == null) {
            return true;
        }
        return !(((i2VarA.c() > 0L ? 1 : (i2VarA.c() == 0L ? 0 : -1)) > 0) && (u2Var.d() == null || u2Var.d().length == 0)) && i2VarA.a() == 0;
    }

    public static boolean c(u2 u2Var) {
        if (a(u2Var.c())) {
            return b(u2Var);
        }
        return false;
    }

    private static boolean a(long j) {
        if (j > 0) {
            return true;
        }
        b3.a("TimeSpentTickDtoValidator: dto timestamp should be > 0, actual = " + j);
        return false;
    }
}
