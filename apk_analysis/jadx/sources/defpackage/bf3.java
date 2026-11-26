package defpackage;

/* JADX INFO: loaded from: classes5.dex */
public final /* synthetic */ class bf3 {
    public static final fy6 a(vg5 vg5Var) {
        return new fy6(vg5Var, null);
    }

    public static final gy6 b(xg5 xg5Var) {
        return new gy6(xg5Var, null);
    }

    public static final du7 c(hd3 hd3Var) {
        x81.s1.getClass();
        int i = x81.a.b;
        if (1 >= i) {
            i = 1;
        }
        int i2 = i - 1;
        if (hd3Var instanceof d91) {
            d91 d91Var = (d91) hd3Var;
            cu0 cu0Var = d91Var.d;
            hd3 hd3VarJ = d91Var.j();
            if (hd3VarJ != null) {
                int i3 = d91Var.c;
                if (i3 != -3 && i3 != -2 && i3 != 0) {
                    i2 = i3;
                } else if (cu0Var != cu0.SUSPEND || i3 == 0) {
                    i2 = 0;
                }
                return new du7(i2, cu0Var, d91Var.b, hd3VarJ);
            }
        }
        return new du7(i2, cu0.SUSPEND, gx2.b, hd3Var);
    }

    public static final gy6 d(hd3 hd3Var, y22 y22Var, eu7 eu7Var, Object obj) {
        du7 du7VarC = c(hd3Var);
        z68 z68VarA = px.a(obj);
        return new gy6(z68VarA, av0.b(y22Var, du7VarC.d, eu7Var.equals(eu7.a.a) ? c32.DEFAULT : c32.UNDISPATCHED, new af3(eu7Var, du7VarC.a, z68VarA, obj, null)));
    }
}
