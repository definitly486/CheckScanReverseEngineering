package defpackage;

import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class tp7 extends jq7 {
    public final Map<ne4<?>, d02> a;
    public final Map<ne4<?>, Map<ne4<?>, df4<?>>> b;
    public final Map<ne4<?>, nl3<?, xp7<?>>> c;
    public final Map<ne4<?>, Map<String, df4<?>>> d;
    public final Map<ne4<?>, nl3<String, xl2<?>>> e;
    public final boolean f;

    /* JADX WARN: Multi-variable type inference failed */
    public tp7(Map<ne4<?>, ? extends d02> map, Map<ne4<?>, ? extends Map<ne4<?>, ? extends df4<?>>> map2, Map<ne4<?>, ? extends nl3<?, ? extends xp7<?>>> map3, Map<ne4<?>, ? extends Map<String, ? extends df4<?>>> map4, Map<ne4<?>, ? extends nl3<? super String, ? extends xl2<?>>> map5, boolean z) {
        this.a = map;
        this.b = map2;
        this.c = map3;
        this.d = map4;
        this.e = map5;
        this.f = z;
    }

    @Override // defpackage.jq7
    public final void a(lq7 lq7Var) {
        for (Map.Entry<ne4<?>, d02> entry : this.a.entrySet()) {
            ne4<?> key = entry.getKey();
            d02 value = entry.getValue();
            if (value instanceof d02.a) {
                key.getClass();
                df4<?> df4Var = ((d02.a) value).a;
                df4Var.getClass();
                lq7Var.d(key, df4Var);
            } else {
                if (!(value instanceof d02.b)) {
                    me0.e();
                    return;
                }
                lq7Var.e(key, ((d02.b) value).a);
            }
        }
        for (Map.Entry<ne4<?>, Map<ne4<?>, df4<?>>> entry2 : this.b.entrySet()) {
            ne4<?> key2 = entry2.getKey();
            for (Map.Entry<ne4<?>, df4<?>> entry3 : entry2.getValue().entrySet()) {
                ne4<?> key3 = entry3.getKey();
                df4<?> value2 = entry3.getValue();
                key2.getClass();
                key3.getClass();
                value2.getClass();
                lq7Var.c(key2, key3, value2);
            }
        }
        for (Map.Entry<ne4<?>, nl3<?, xp7<?>>> entry4 : this.c.entrySet()) {
            ne4<?> key4 = entry4.getKey();
            nl3<?, xp7<?>> value3 = entry4.getValue();
            key4.getClass();
            value3.getClass();
            v39.c(1, value3);
            lq7Var.a(key4, value3);
        }
        for (Map.Entry<ne4<?>, nl3<String, xl2<?>>> entry5 : this.e.entrySet()) {
            ne4<?> key5 = entry5.getKey();
            nl3<String, xl2<?>> value4 = entry5.getValue();
            key5.getClass();
            value4.getClass();
            v39.c(1, value4);
            lq7Var.b(key5, value4);
        }
    }

    @Override // defpackage.jq7
    public final <T> df4<T> b(ne4<T> ne4Var, List<? extends df4<?>> list) {
        d02 d02Var = this.a.get(ne4Var);
        df4<T> df4Var = d02Var != null ? (df4<T>) d02Var.a(list) : null;
        if (df4Var instanceof df4) {
            return df4Var;
        }
        return null;
    }

    @Override // defpackage.jq7
    public final boolean c() {
        return this.f;
    }

    @Override // defpackage.jq7
    public final <T> xl2<T> d(ne4<? super T> ne4Var, String str) {
        ne4Var.getClass();
        Map<String, df4<?>> map = this.d.get(ne4Var);
        df4<?> df4Var = map != null ? map.get(str) : null;
        if (!(df4Var instanceof df4)) {
            df4Var = null;
        }
        if (df4Var != null) {
            return df4Var;
        }
        nl3<String, xl2<?>> nl3Var = this.e.get(ne4Var);
        nl3<String, xl2<?>> nl3Var2 = v39.d(1, nl3Var) ? nl3Var : null;
        if (nl3Var2 != null) {
            return (xl2) nl3Var2.invoke(str);
        }
        return null;
    }

    @Override // defpackage.jq7
    public final <T> xp7<T> e(ne4<? super T> ne4Var, T t) {
        ne4Var.getClass();
        t.getClass();
        if (ne4Var.e(t)) {
            Map<ne4<?>, df4<?>> map = this.b.get(ne4Var);
            df4<?> df4Var = map != null ? map.get(x07.a(t.getClass())) : null;
            df4<?> df4Var2 = df4Var instanceof xp7 ? df4Var : null;
            if (df4Var2 != null) {
                return df4Var2;
            }
            nl3<?, xp7<?>> nl3Var = this.c.get(ne4Var);
            nl3<?, xp7<?>> nl3Var2 = v39.d(1, nl3Var) ? nl3Var : null;
            if (nl3Var2 != null) {
                return (xp7) nl3Var2.invoke(t);
            }
        }
        return null;
    }
}
