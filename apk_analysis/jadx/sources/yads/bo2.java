package yads;

import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class bo2 {
    public final LinkedHashMap a = new LinkedHashMap();

    public final ao2 a(db1 db1Var, qb1 qb1Var) {
        List list;
        ao2 ao2Var;
        synchronized (this.a) {
            try {
                LinkedHashMap linkedHashMap = this.a;
                String str = qb1Var.a;
                Object ao2Var2 = linkedHashMap.get(str);
                if (ao2Var2 == null) {
                    ao2Var2 = new ao2();
                    linkedHashMap.put(str, ao2Var2);
                }
                ao2 ao2Var3 = (ao2) ao2Var2;
                if (db1Var == null || (list = db1Var.h) == null) {
                    list = defpackage.kx2.b;
                }
                ao2Var3.c = list;
                ao2Var3.a();
                ao2Var = (ao2) ao2Var2;
            } catch (Throwable th) {
                throw th;
            }
        }
        return ao2Var;
    }

    public final ao2 b(db1 db1Var, qb1 qb1Var) {
        ao2 ao2Var;
        List list;
        synchronized (this.a) {
            try {
                ao2Var = (ao2) this.a.get(qb1Var.a);
                if (ao2Var != null) {
                    if (db1Var == null || (list = db1Var.h) == null) {
                        list = defpackage.kx2.b;
                    }
                    ao2Var.c = list;
                    ao2Var.a();
                } else {
                    ao2Var = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return ao2Var;
    }
}
