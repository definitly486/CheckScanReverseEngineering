package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ee2 {
    public static final xr2 a;
    public static final m36 b;
    public static final st3 c;

    static {
        zd2 zd2Var = zd2.ON_CONDITION;
        a = new xr2(zd2Var);
        b = new m36(new defpackage.gg1(6), zd2Var);
        c = new defpackage.k(4);
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }

    public static final boolean a(Object obj) {
        return obj instanceof zd2;
    }
}
