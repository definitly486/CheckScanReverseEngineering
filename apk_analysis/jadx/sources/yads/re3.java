package yads;

import com.tapjoy.TJAdUnitConstants;
import java.io.Serializable;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class re3 implements Map, Serializable {
    public transient m55 b;
    public transient n55 c;
    public transient o55 d;

    public static re3 a(HashMap map) {
        Set<Map.Entry> setEntrySet = map.entrySet();
        boolean z = setEntrySet instanceof Collection;
        pe3 pe3Var = new pe3(z ? setEntrySet.size() : 4);
        if (z) {
            pe3Var.a(setEntrySet.size());
        }
        for (Map.Entry entry : setEntrySet) {
            pe3Var.a(entry.getKey(), entry.getValue());
        }
        return p55.a(pe3Var.b, pe3Var.a);
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        o55 o55Var = this.d;
        if (o55Var == null) {
            p55 p55Var = (p55) this;
            o55 o55Var2 = new o55(1, p55Var.g, p55Var.f);
            this.d = o55Var2;
            o55Var = o55Var2;
        }
        return o55Var.contains(obj);
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        return ((te3) entrySet()).equals(((Map) obj).entrySet());
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        return obj3 != null ? obj3 : obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return tj5.a(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return ((p55) this).size() == 0;
    }

    @Override // java.util.Map
    public final Set keySet() {
        n55 n55Var = this.c;
        if (n55Var != null) {
            return n55Var;
        }
        p55 p55Var = (p55) this;
        n55 n55Var2 = new n55(p55Var, new o55(0, p55Var.g, p55Var.f));
        this.c = n55Var2;
        return n55Var2;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int i = ((p55) this).g;
        h20.a(i, TJAdUnitConstants.String.SIZE);
        StringBuilder sb = new StringBuilder((int) Math.min(((long) i) * 8, 1073741824L));
        sb.append('{');
        i46 it = ((m55) entrySet()).iterator();
        boolean z = true;
        while (true) {
            g gVar = (g) it;
            if (!gVar.hasNext()) {
                sb.append('}');
                return sb.toString();
            }
            Map.Entry entry = (Map.Entry) gVar.next();
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        o55 o55Var = this.d;
        if (o55Var != null) {
            return o55Var;
        }
        p55 p55Var = (p55) this;
        o55 o55Var2 = new o55(1, p55Var.g, p55Var.f);
        this.d = o55Var2;
        return o55Var2;
    }

    public Object writeReplace() {
        return new qe3(this);
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final te3 entrySet() {
        m55 m55Var = this.b;
        if (m55Var != null) {
            return m55Var;
        }
        p55 p55Var = (p55) this;
        m55 m55Var2 = new m55(p55Var, p55Var.f, p55Var.g);
        this.b = m55Var2;
        return m55Var2;
    }
}
