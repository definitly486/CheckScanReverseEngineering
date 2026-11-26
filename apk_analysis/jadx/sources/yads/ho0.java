package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONObject;

/* JADX INFO: loaded from: classes6.dex */
public final class ho0 extends u13 {
    public static final ho0 a = new ho0();
    public static final List b = u96.i(new w13(xo2.DICT, 0), new w13(xo2.STRING, 0));
    public static final xo2 c = xo2.BOOLEAN;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        Object obj2 = list.get(1);
        obj2.getClass();
        return Boolean.valueOf(((JSONObject) obj).has((String) obj2));
    }

    @Override // yads.u13
    public final String c() {
        return "containsKey";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
