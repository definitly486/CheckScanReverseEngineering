package yads;

import defpackage.u96;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class xu3 extends u13 {
    public final String a;
    public final ArrayList b;
    public final xo2 c;
    public final ArrayList d;
    public final mo2 e;

    public xu3(String str, ArrayList arrayList, xo2 xo2Var, ArrayList arrayList2, String str2) {
        this.a = str;
        this.b = arrayList;
        this.c = xo2Var;
        this.d = arrayList2;
        Set set = uo2.d;
        this.e = new mo2(str2);
    }

    @Override // yads.u13
    public final Object a(yo2 yo2Var, uo2 uo2Var, List list) {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        int i = 0;
        for (Object obj : this.d) {
            int i2 = i + 1;
            if (i < 0) {
                u96.o();
                throw null;
            }
            linkedHashMap.put((String) obj, list.get(i));
            i = i2;
        }
        z66 z66Var = yo2Var.a;
        z66Var.getClass();
        return new bp2(new yo2(new y66(z66Var, new z50(linkedHashMap)), yo2Var.b, yo2Var.c, yo2Var.d)).a(this.e);
    }

    @Override // yads.u13
    public final String c() {
        return this.a;
    }

    @Override // yads.u13
    public final xo2 d() {
        return this.c;
    }

    @Override // yads.u13
    public final boolean e() {
        return false;
    }

    @Override // yads.u13
    public final List a() {
        return this.b;
    }
}
