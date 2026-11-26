package defpackage;

import java.util.Locale;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class e72 implements f94 {
    public static final Set<String> d = yr.k0(new String[]{"content-type", "user-agent", "accept-encoding", "content-encoding"});
    public final ta6 a;
    public final String b;
    public final Map<String, String> c;

    public e72(ta6 ta6Var) {
        fz3 fz3VarA;
        this.a = ta6Var;
        String str = ta6Var.u;
        str.getClass();
        try {
            fz3.a aVar = new fz3.a();
            aVar.c(null, str);
            fz3VarA = aVar.a();
        } catch (IllegalArgumentException unused) {
            fz3VarA = null;
        }
        this.b = fz3VarA != null ? fz3VarA.d : null;
        this.c = n05.l(ta6Var.s);
    }

    @Override // defpackage.f94
    public final z47 a(ez6 ez6Var) {
        b37 b37Var = ez6Var.e;
        Map<String, String> map = this.c;
        if (map.isEmpty() || !aa4.e(b37Var.a.d, this.b)) {
            return ez6Var.b(b37Var);
        }
        b37.a aVarA = b37Var.a();
        for (Map.Entry<String, String> entry : map.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            String lowerCase = key.toLowerCase(Locale.ROOT);
            lowerCase.getClass();
            if (!d.contains(lowerCase) && b37Var.c.a(key) == null) {
                try {
                    aVarA.b(key, value);
                } catch (IllegalArgumentException e) {
                    ic6 ic6Var = this.a.v;
                    StringBuilder sbD = n7.d("Dropping invalid request header '", key, "': ");
                    sbD.append(e.getMessage());
                    ic6Var.a(sbD.toString());
                }
                j59 j59Var = j59.a;
            }
        }
        return ez6Var.b(aVarA.a());
    }
}
