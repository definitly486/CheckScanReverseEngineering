package yads;

import android.content.Context;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes6.dex */
public final class s96 {
    public final boolean a;
    public final fc6 b;
    public rl6 c;
    public String d;
    public String e;
    public String f;
    public String g;
    public String h;
    public jh6 i;
    public Integer j;
    public String k;
    public final ArrayList l;
    public final ArrayList m;
    public final LinkedHashMap n;
    public ba6 o;

    public s96(Context context, boolean z) {
        fc6 fc6Var = new fc6(context);
        this.a = z;
        this.b = fc6Var;
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new LinkedHashMap();
        this.o = new ba6();
    }

    public final t96 a() {
        zg5 zg5Var;
        fc6 fc6Var = this.b;
        LinkedHashMap linkedHashMapN = this.n;
        jh6 jh6Var = this.i;
        zg5 zg5Var2 = zg5.l;
        if (zg5Var2 == null) {
            fc6Var.getClass();
            synchronized (zg5.k) {
                zg5Var = zg5.l;
                if (zg5Var == null) {
                    zg5Var = new zg5();
                    zg5.l = zg5Var;
                }
            }
            zg5Var2 = zg5Var;
        }
        fe5 fe5VarA = zg5Var2.a(fc6Var.a);
        if (!(fe5VarA != null ? fe5VarA.l : false)) {
            linkedHashMapN = defpackage.n05.n(linkedHashMapN);
            ArrayList arrayList = jh6Var != null ? jh6Var.a : null;
            List list = (List) linkedHashMapN.get("impression");
            if (arrayList != null) {
                linkedHashMapN.put("impression", arrayList);
            } else {
                linkedHashMapN.remove("impression");
            }
            if (list != null) {
                linkedHashMapN.put("render_impression", list);
            } else {
                linkedHashMapN.remove("render_impression");
            }
        }
        return new t96(this.a, this.l, this.n, this.o, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.c, this.m, linkedHashMapN);
    }

    public final s96 a(LinkedHashMap linkedHashMap) {
        Map map = linkedHashMap;
        if (linkedHashMap == null) {
            map = defpackage.mx2.b;
        }
        for (Map.Entry entry : map.entrySet()) {
            String str = (String) entry.getKey();
            Iterable iterable = (List) entry.getValue();
            if (iterable == null) {
                iterable = defpackage.kx2.b;
            }
            for (String str2 : defpackage.qn1.R(iterable)) {
                LinkedHashMap linkedHashMap2 = this.n;
                Object arrayList = linkedHashMap2.get(str);
                if (arrayList == null) {
                    arrayList = new ArrayList();
                    linkedHashMap2.put(str, arrayList);
                }
                ((List) arrayList).add(str2);
            }
        }
        return this;
    }
}
