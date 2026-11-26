package yads;

import defpackage.ra8;
import defpackage.u96;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* JADX INFO: loaded from: classes6.dex */
public final class tv5 extends u13 {
    public static final tv5 a = new tv5();
    public static final List b;
    public static final xo2 c;
    public static final boolean d;

    static {
        xo2 xo2Var = xo2.STRING;
        b = u96.i(new w13(xo2Var, 0), new w13(xo2Var, 0));
        c = xo2.BOOLEAN;
        d = true;
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        Object obj = list.get(0);
        obj.getClass();
        String str = (String) obj;
        Object obj2 = list.get(1);
        obj2.getClass();
        try {
            return Boolean.valueOf(Pattern.compile((String) obj2).matcher(str).find());
        } catch (PatternSyntaxException unused) {
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            for (Object objY : list) {
                if (objY instanceof String) {
                    objY = ra8.y((String) objY, "\\", "\\\\");
                }
                arrayList.add(objY);
            }
            wo2.a("testRegex", "Invalid regular expression.", arrayList);
            throw null;
        }
    }

    @Override // yads.u13
    public final String c() {
        return "testRegex";
    }

    @Override // yads.u13
    public final xo2 d() {
        return c;
    }

    @Override // yads.u13
    public final boolean e() {
        return d;
    }

    @Override // yads.u13
    public final List a() {
        return b;
    }
}
