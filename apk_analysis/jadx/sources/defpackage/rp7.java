package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final class rp7 {
    public static final fg6 a(String str, dg6 dg6Var) {
        dg6Var.getClass();
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        hg6.a(str);
        return new fg6(str, dg6Var);
    }

    public static final kl9 b(String str, mp7 mp7Var) {
        mp7Var.getClass();
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        if (!str.equals(mp7Var.h())) {
            if (mp7Var.getKind() instanceof dg6) {
                hg6.a(str);
            }
            return new kl9(str, mp7Var);
        }
        StringBuilder sbD = n7.d("The name of the wrapped descriptor (", str, ") cannot be the same as the name of the original descriptor (");
        sbD.append(mp7Var.h());
        sbD.append(')');
        throw new IllegalArgumentException(sbD.toString().toString());
    }

    public static final op7 c(String str, mp7[] mp7VarArr, nl3 nl3Var) {
        nl3Var.getClass();
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        al1 al1Var = new al1(str);
        nl3Var.invoke(al1Var);
        return new op7(str, eb8.a.a, al1Var.c.size(), yr.h0(mp7VarArr), al1Var);
    }

    public static op7 d(String str, mp7[] mp7VarArr) {
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        al1 al1Var = new al1(str);
        j59 j59Var = j59.a;
        return new op7(str, eb8.a.a, al1Var.c.size(), yr.h0(mp7VarArr), al1Var);
    }

    public static final op7 e(String str, sp7 sp7Var, mp7[] mp7VarArr, nl3 nl3Var) {
        sp7Var.getClass();
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        if (sp7Var.equals(eb8.a.a)) {
            fg.c("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        al1 al1Var = new al1(str);
        nl3Var.invoke(al1Var);
        return new op7(str, sp7Var, al1Var.c.size(), yr.h0(mp7VarArr), al1Var);
    }

    public static op7 f(String str, sp7 sp7Var, mp7[] mp7VarArr) {
        sp7Var.getClass();
        if (ta8.M(str)) {
            fg.c("Blank serial names are prohibited");
            return null;
        }
        if (sp7Var.equals(eb8.a.a)) {
            fg.c("For StructureKind.CLASS please use 'buildClassSerialDescriptor' instead");
            return null;
        }
        al1 al1Var = new al1(str);
        j59 j59Var = j59.a;
        return new op7(str, sp7Var, al1Var.c.size(), yr.h0(mp7VarArr), al1Var);
    }
}
