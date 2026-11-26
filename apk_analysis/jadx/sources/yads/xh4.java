package yads;

import defpackage.v39;
import io.appmetrica.analytics.coreutils.internal.StringUtils;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class xh4 implements li4 {
    public final e95 a;
    public final u8 b;
    public final o50 c;

    public xh4() {
        e95 e95Var = new e95();
        u8 u8Var = new u8();
        o50 o50Var = new o50();
        this.a = e95Var;
        this.b = u8Var;
        this.c = o50Var;
    }

    @Override // yads.li4
    public final h75 a(e4 e4Var, d9 d9Var, vg4 vg4Var) {
        e95 e95Var = this.a;
        h75 h75VarA = e95Var.a(e4Var, d9Var);
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        if (!v39.e(linkedHashMap)) {
            linkedHashMap = null;
        }
        if (linkedHashMap == null) {
            linkedHashMap = new LinkedHashMap();
        }
        if (vg4Var != null) {
            List listA = e95Var.b.a(vg4Var);
            if (!listA.isEmpty()) {
                linkedHashMap.put("image_sizes", listA);
            }
            e95Var.b.getClass();
            List list = vg4Var.a;
            ArrayList arrayList = new ArrayList(defpackage.kn1.q(list, 10));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                arrayList.add(((sd4) it.next()).a.b);
            }
            if (!arrayList.isEmpty()) {
                linkedHashMap.put("native_ad_types", arrayList);
            }
            e95Var.b.getClass();
            ArrayList arrayListB = yg4.b(vg4Var);
            Object objV = defpackage.qn1.V(arrayListB);
            if (objV == null) {
                linkedHashMap.put("ad_id", StringUtils.UNDEFINED);
            } else {
                linkedHashMap.put("ad_id", objV);
            }
            if (arrayListB.isEmpty()) {
                arrayListB = null;
            }
            if (arrayListB == null) {
                linkedHashMap.put("ad_ids", StringUtils.UNDEFINED);
            } else {
                linkedHashMap.put("ad_ids", arrayListB);
            }
        }
        c cVar = h75VarA.b;
        if (cVar == null) {
            cVar = null;
        }
        LinkedHashMap linkedHashMapG = defpackage.n05.g(h75VarA.a, linkedHashMap);
        if (!v39.e(linkedHashMapG)) {
            linkedHashMapG = null;
        }
        if (linkedHashMapG == null) {
            linkedHashMapG = new LinkedHashMap();
        }
        h75 h75VarA2 = this.b.a(e4Var.e);
        h75 h75VarA3 = this.c.a(e4Var);
        if (cVar == null) {
            cVar = h75VarA2.b;
        }
        LinkedHashMap linkedHashMapG2 = defpackage.n05.g(linkedHashMapG, h75VarA2.a);
        LinkedHashMap linkedHashMap2 = v39.e(linkedHashMapG2) ? linkedHashMapG2 : null;
        if (linkedHashMap2 == null) {
            linkedHashMap2 = new LinkedHashMap();
        }
        if (cVar == null) {
            cVar = h75VarA3.b;
        }
        return new h75(defpackage.n05.g(linkedHashMap2, h75VarA3.a), cVar);
    }
}
