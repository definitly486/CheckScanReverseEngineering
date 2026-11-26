package defpackage;

import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class kq7 implements lq7 {
    public final HashMap a = new HashMap();
    public final HashMap b = new HashMap();
    public final HashMap c = new HashMap();
    public final HashMap d = new HashMap();
    public final HashMap e = new HashMap();
    public boolean f;

    @Override // defpackage.lq7
    public final <Base> void a(ne4<Base> ne4Var, nl3<? super Base, ? extends xp7<? super Base>> nl3Var) {
        h(ne4Var, nl3Var, false);
    }

    @Override // defpackage.lq7
    public final <Base> void b(ne4<Base> ne4Var, nl3<? super String, ? extends xl2<? extends Base>> nl3Var) {
        g(ne4Var, nl3Var, false);
    }

    @Override // defpackage.lq7
    public final <Base, Sub extends Base> void c(ne4<Base> ne4Var, ne4<Sub> ne4Var2, df4<Sub> df4Var) {
        i(ne4Var, ne4Var2, df4Var, false);
    }

    @Override // defpackage.lq7
    public final <T> void d(ne4<T> ne4Var, df4<T> df4Var) {
        df4Var.getClass();
        j(ne4Var, new d02.a(df4Var), false);
    }

    @Override // defpackage.lq7
    public final <T> void e(ne4<T> ne4Var, nl3<? super List<? extends df4<?>>, ? extends df4<?>> nl3Var) {
        ne4Var.getClass();
        nl3Var.getClass();
        j(ne4Var, new d02.b(nl3Var), false);
    }

    public final tp7 f() {
        return new tp7(this.a, this.b, this.c, this.d, this.e, this.f);
    }

    public final <Base> void g(ne4<Base> ne4Var, nl3<? super String, ? extends xl2<? extends Base>> nl3Var, boolean z) {
        HashMap map = this.e;
        nl3 nl3Var2 = (nl3) map.get(ne4Var);
        if (nl3Var2 == null || nl3Var2.equals(nl3Var) || z) {
            map.put(ne4Var, nl3Var);
        } else {
            c9.h("Default deserializers provider for ", ne4Var, " is already registered: ", nl3Var2);
        }
    }

    public final <Base> void h(ne4<Base> ne4Var, nl3<? super Base, ? extends xp7<? super Base>> nl3Var, boolean z) {
        HashMap map = this.c;
        nl3 nl3Var2 = (nl3) map.get(ne4Var);
        if (nl3Var2 == null || nl3Var2.equals(nl3Var) || z) {
            map.put(ne4Var, nl3Var);
        } else {
            c9.h("Default serializers provider for ", ne4Var, " is already registered: ", nl3Var2);
        }
    }

    public final <Base, Sub extends Base> void i(ne4<Base> ne4Var, ne4<Sub> ne4Var2, df4<Sub> df4Var, boolean z) {
        Object next;
        ne4 ne4Var3;
        String strH = df4Var.getDescriptor().h();
        HashMap map = this.b;
        Object map2 = map.get(ne4Var);
        if (map2 == null) {
            map2 = new HashMap();
            map.put(ne4Var, map2);
        }
        Map map3 = (Map) map2;
        HashMap map4 = this.d;
        Object map5 = map4.get(ne4Var);
        if (map5 == null) {
            map5 = new HashMap();
            map4.put(ne4Var, map5);
        }
        Map map6 = (Map) map5;
        df4 df4Var2 = (df4) map3.get(ne4Var2);
        if (df4Var2 != null && !df4Var2.equals(df4Var)) {
            if (!z) {
                throw new eq7("Serializer for " + ne4Var2 + " already registered in the scope of " + ne4Var);
            }
        }
        df4 df4Var3 = (df4) map6.get(strH);
        if (df4Var3 != null && !df4Var3.equals(df4Var)) {
            Iterator it = qn1.K(map3.entrySet()).a.iterator();
            do {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
            } while (((Map.Entry) next).getValue() != df4Var3);
            Map.Entry entry = (Map.Entry) next;
            if (entry == null || (ne4Var3 = (ne4) entry.getKey()) == null) {
                throw new IllegalStateException(("Name " + strH + " is registered in the module but no Kotlin class is associated with it.").toString());
            }
            if (!z) {
                throw new IllegalArgumentException("Multiple polymorphic serializers in a scope of '" + ne4Var + "' have the same serial name '" + strH + "': " + df4Var + " for '" + ne4Var2 + "' and " + df4Var3 + " for '" + ne4Var3 + '\'');
            }
        }
        map3.put(ne4Var2, df4Var);
        map6.put(strH, df4Var);
    }

    public final <T> void j(ne4<T> ne4Var, d02 d02Var, boolean z) {
        d02 d02Var2;
        ne4Var.getClass();
        HashMap map = this.a;
        if (!z && (d02Var2 = (d02) map.get(ne4Var)) != null && !d02Var2.equals(d02Var)) {
            throw new eq7("Contextual serializer or serializer provider for " + ne4Var + " already registered in this module");
        }
        map.put(ne4Var, d02Var);
        if (d31.n(ne4Var).isInterface()) {
            this.f = true;
        }
    }
}
