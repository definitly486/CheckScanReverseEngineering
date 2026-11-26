package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class lb1 {
    public static final xr2 a;
    public static final m36 b;
    public static final st3 c;

    static {
        nd2 nd2Var = nd2.NONE;
        a = new xr2(nd2Var);
        b = new m36(new defpackage.et3(4), nd2Var);
        c = new defpackage.k2(5);
    }

    public static final boolean a(List list) {
        return list.size() >= 1;
    }

    public static final boolean a(Object obj) {
        return obj instanceof nd2;
    }
}
