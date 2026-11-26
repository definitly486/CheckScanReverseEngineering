package com.google.common.collect;

import defpackage.cn1;
import defpackage.y69;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;

/* JADX INFO: loaded from: classes4.dex */
public abstract class l<K, V> implements Map<K, V>, Serializable {
    public transient n<Map.Entry<K, V>> b;
    public transient n<K> c;
    public transient i<V> d;

    public static class a<K, V> {
        public Object[] a;
        public int b = 0;
        public C0132a c;

        /* JADX INFO: renamed from: com.google.common.collect.l$a$a, reason: collision with other inner class name */
        public static final class C0132a {
            public final Object a;
            public final Object b;
            public final Object c;

            public C0132a(Object obj, Object obj2, Object obj3) {
                this.a = obj;
                this.b = obj2;
                this.c = obj3;
            }

            public final IllegalArgumentException a() {
                StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
                Object obj = this.a;
                sb.append(obj);
                sb.append("=");
                sb.append(this.b);
                sb.append(" and ");
                sb.append(obj);
                sb.append("=");
                sb.append(this.c);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public a(int i) {
            this.a = new Object[i * 2];
        }

        public final x a(boolean z) {
            C0132a c0132a;
            C0132a c0132a2;
            if (z && (c0132a2 = this.c) != null) {
                throw c0132a2.a();
            }
            x xVarN = x.n(this.b, this.a, this);
            if (!z || (c0132a = this.c) == null) {
                return xVarN;
            }
            throw c0132a.a();
        }

        public final void b(Object obj, Object obj2) {
            int i = (this.b + 1) * 2;
            Object[] objArr = this.a;
            if (i > objArr.length) {
                this.a = Arrays.copyOf(objArr, i.b.b(objArr.length, i));
            }
            cn1.a(obj, obj2);
            Object[] objArr2 = this.a;
            int i2 = this.b;
            int i3 = i2 * 2;
            objArr2[i3] = obj;
            objArr2[i3 + 1] = obj2;
            this.b = i2 + 1;
        }

        public final void c(Iterable iterable) {
            if (iterable instanceof Collection) {
                int size = (((Collection) iterable).size() + this.b) * 2;
                Object[] objArr = this.a;
                if (size > objArr.length) {
                    this.a = Arrays.copyOf(objArr, i.b.b(objArr.length, size));
                }
            }
            Iterator it = iterable.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                b(entry.getKey(), entry.getValue());
            }
        }
    }

    public static class b<K, V> implements Serializable {
        public final Object[] b;
        public final Object[] c;

        public b(l<K, V> lVar) {
            Object[] objArr = new Object[lVar.size()];
            Object[] objArr2 = new Object[lVar.size()];
            y69<Map.Entry<K, V>> it = lVar.entrySet().iterator();
            int i = 0;
            while (it.hasNext()) {
                Map.Entry<K, V> next = it.next();
                objArr[i] = next.getKey();
                objArr2[i] = next.getValue();
                i++;
            }
            this.b = objArr;
            this.c = objArr2;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final Object readResolve() {
            Object[] objArr = this.b;
            boolean z = objArr instanceof n;
            Object[] objArr2 = this.c;
            if (!z) {
                a aVar = new a(objArr.length);
                for (int i = 0; i < objArr.length; i++) {
                    aVar.b(objArr[i], objArr2[i]);
                }
                return aVar.a(true);
            }
            n nVar = (n) objArr;
            a aVar2 = new a(nVar.size());
            Iterator it = nVar.iterator();
            y69 it2 = ((i) objArr2).iterator();
            while (it.hasNext()) {
                aVar2.b(it.next(), it2.next());
            }
            return aVar2.a(true);
        }
    }

    public static <K, V> a<K, V> a() {
        return new a<>(4);
    }

    public static <K, V> l<K, V> b(Map<? extends K, ? extends V> map) {
        if ((map instanceof l) && !(map instanceof SortedMap)) {
            return (l) map;
        }
        Set<Map.Entry<? extends K, ? extends V>> setEntrySet = map.entrySet();
        a aVar = new a(setEntrySet instanceof Collection ? setEntrySet.size() : 4);
        aVar.c(setEntrySet);
        return aVar.a(true);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Use SerializedForm");
    }

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    public abstract x.a d();

    public abstract x.b e();

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return q.b(obj, this);
    }

    public abstract x.c g();

    @Override // java.util.Map
    public abstract V get(Object obj);

    @Override // java.util.Map
    public final V getOrDefault(Object obj, V v) {
        V v2 = get(obj);
        return v2 != null ? v2 : v;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return d0.c(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public final n<Map.Entry<K, V>> entrySet() {
        n<Map.Entry<K, V>> nVar = this.b;
        if (nVar != null) {
            return nVar;
        }
        x.a aVarD = d();
        this.b = aVarD;
        return aVarD;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public final n<K> keySet() {
        n<K> nVar = this.c;
        if (nVar != null) {
            return nVar;
        }
        x.b bVarE = e();
        this.c = bVarE;
        return bVarE;
    }

    @Override // java.util.Map
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public final i<V> values() {
        i<V> iVar = this.d;
        if (iVar != null) {
            return iVar;
        }
        x.c cVarG = g();
        this.d = cVarG;
        return cVarG;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k, V v) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        return q.c(this);
    }

    public Object writeReplace() {
        return new b(this);
    }
}
