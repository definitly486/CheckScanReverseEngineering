package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class yt1 {
    public static final xr2 a;
    public static final m36 b;
    public static final st3 c;

    static {
        pt1 pt1Var = pt1.PARTIAL;
        a = new xr2(pt1Var);
        b = new m36(new defpackage.ii5(6), pt1Var);
        c = new defpackage.rz0(9);
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }

    public static final boolean a(Object obj) {
        return obj instanceof pt1;
    }
}
