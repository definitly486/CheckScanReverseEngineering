package yads;

import defpackage.j59;
import defpackage.nl3;
import defpackage.ts9;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class g76 {
    public final co2 a;
    public h76 c;
    public final LinkedHashMap b = new LinkedHashMap();
    public Map d = defpackage.mx2.b;

    public g76(co2 co2Var) {
        this.a = co2Var;
    }

    public final void a() {
        LinkedHashMap linkedHashMap = this.b;
        ArrayList arrayList = new ArrayList(linkedHashMap.size());
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            defpackage.b36 b36Var = (defpackage.b36) entry.getKey();
            arrayList.add(new defpackage.b36(b36Var.b, (u66) entry.getValue()));
        }
        List listN0 = defpackage.qn1.n0(arrayList, new f76());
        h76 h76Var = this.c;
        if (h76Var != null) {
            h76Var.invoke(listN0);
        }
    }

    public final nl3 a(String str) {
        return new ts9(1, this, str);
    }

    public static final j59 a(g76 g76Var, String str, u66 u66Var) {
        g76Var.b.put(new defpackage.b36(str, u66Var.a()), u66Var);
        g76Var.a();
        return j59.a;
    }

    public final void a(String str, String str2, String str3) {
        u66 u66Var = (u66) this.b.get(new defpackage.b36(str2, str));
        if (String.valueOf(u66Var != null ? u66Var.b() : null).equals(str3) || u66Var == null) {
            return;
        }
        try {
            u66Var.c(str3);
        } catch (Exception unused) {
            this.a.invoke(new k76(defpackage.n2.d("Unable to set '", str3, "' value to variable '", str, "'."), null, 2));
        }
    }
}
