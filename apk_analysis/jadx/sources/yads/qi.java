package yads;

import defpackage.u96;
import java.util.List;
import org.json.JSONArray;

/* JADX INFO: loaded from: classes6.dex */
public final class qi extends u13 {
    public static final qi a = new qi();
    public static final List b = u96.h(new w13(xo2.ARRAY, 0));
    public static final xo2 c = xo2.BOOLEAN;

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        return Boolean.valueOf(((JSONArray) obj).length() == 0);
    }

    @Override // yads.u13
    public final String c() {
        return "isEmpty";
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
