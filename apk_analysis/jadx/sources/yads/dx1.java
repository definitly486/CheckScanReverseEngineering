package yads;

import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class dx1 {
    public static final iw1 a;
    public static final iw1 b;
    public static final fx1 c;
    public static final st3 d;
    public static final st3 e;

    static {
        Double dValueOf = Double.valueOf(0.5d);
        a = new iw1(new nx1(wr2.a(dValueOf)));
        b = new iw1(new nx1(wr2.a(dValueOf)));
        c = new fx1(new ux1(wr2.a(tx1.FARTHEST_CORNER)));
        d = new defpackage.p2(5);
        e = new defpackage.xy(6);
    }

    public static final boolean a(List list) {
        return list.size() >= 2;
    }

    public static final boolean b(List list) {
        return list.size() >= 2;
    }
}
