package yads;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ax2 {
    public static final zw2 a(zw2 zw2Var, boolean z) {
        if (zw2Var == null || zw2Var.equals(vw2.c) || zw2Var.equals(ww2.c)) {
            zw2 zw2Var2 = z ? ww2.c : vw2.c;
            zw2Var2.getClass();
            return zw2Var2;
        }
        if (zw2Var instanceof yw2) {
            return new yw2(((yw2) zw2Var).c, z);
        }
        if (zw2Var instanceof xw2) {
            return new xw2(((xw2) zw2Var).c, z);
        }
        defpackage.ah.f("Unknown field type");
        return null;
    }
}
