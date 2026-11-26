package yads;

import defpackage.cr7;
import defpackage.xr3;
import java.util.ArrayList;
import java.util.Comparator;

/* JADX INFO: loaded from: classes6.dex */
public final class mn5 {
    public static final Comparator h;
    public static final Comparator i;
    public final int a;
    public int e;
    public int f;
    public int g;
    public final ln5[] c = new ln5[5];
    public final ArrayList b = new ArrayList();
    public int d = -1;

    static {
        int i2 = 1;
        h = new xr3(i2);
        i = new cr7(i2);
    }

    public mn5(int i2) {
        this.a = i2;
    }

    public static /* synthetic */ int a(ln5 ln5Var, ln5 ln5Var2) {
        return ln5Var.a - ln5Var2.a;
    }
}
