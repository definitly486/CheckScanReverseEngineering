package defpackage;

import com.google.common.collect.i;
import com.google.common.collect.l;
import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public abstract class z24<K, V> extends id0<K, V> implements Serializable {
    public final transient l<K, ? extends i<V>> f;
    public final transient int g;

    public static final class a<K, V> extends i<Map.Entry<K, V>> {
        public final z24<K, V> c;

        public a(z24<K, V> z24Var) {
            this.c = z24Var;
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                Collection collection = (Collection) this.c.b().get(key);
                if (collection != null && collection.contains(value)) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* JADX INFO: renamed from: j */
        public final y69<Map.Entry<K, V>> iterator() {
            z24<K, V> z24Var = this.c;
            z24Var.getClass();
            return new x24(z24Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.c.g;
        }

        @Override // com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public static final class b<K, V> extends i<V> {
        public final transient z24<K, V> c;

        public b(z24<K, V> z24Var) {
            this.c = z24Var;
        }

        @Override // com.google.common.collect.i
        public final int b(int i, Object[] objArr) {
            y69<? extends i<V>> it = this.c.f.values().iterator();
            while (it.hasNext()) {
                i = it.next().b(i, objArr);
            }
            return i;
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return this.c.d(obj);
        }

        @Override // com.google.common.collect.i, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set, java.util.NavigableSet
        /* JADX INFO: renamed from: j */
        public final y69<V> iterator() {
            z24<K, V> z24Var = this.c;
            z24Var.getClass();
            return new y24(z24Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.c.g;
        }

        @Override // com.google.common.collect.i
        public Object writeReplace() {
            return super.writeReplace();
        }
    }

    public z24(l<K, ? extends i<V>> lVar, int i) {
        this.f = lVar;
        this.g = i;
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    public final Collection a() {
        return (i) super.a();
    }

    @Override // defpackage.eg5
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.g
    public final boolean d(Object obj) {
        return obj != null && super.d(obj);
    }

    @Override // com.google.common.collect.g
    public final Map<K, Collection<V>> e() {
        throw new AssertionError("should never be called");
    }

    @Override // com.google.common.collect.g
    public final Collection f() {
        return new a(this);
    }

    @Override // com.google.common.collect.g
    public final Set<K> g() {
        throw new AssertionError("unreachable");
    }

    @Override // com.google.common.collect.g
    public final Collection i() {
        return new b(this);
    }

    @Override // com.google.common.collect.g
    public final Iterator j() {
        return new x24(this);
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    public final Set keySet() {
        return this.f.keySet();
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public l<K, Collection<V>> b() {
        return this.f;
    }

    @Override // defpackage.eg5
    @Deprecated
    public final boolean put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    @Deprecated
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // defpackage.eg5
    public final int size() {
        return this.g;
    }

    @Override // com.google.common.collect.g, defpackage.eg5
    public final Collection values() {
        return (i) super.values();
    }
}
