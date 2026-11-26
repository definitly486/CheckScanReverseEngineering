package defpackage;

import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class xq4<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final a j = new a();
    public final Comparator<? super K> b;
    public final boolean c;
    public e<K, V> d;
    public int e;
    public int f;
    public final e<K, V> g;
    public xq4<K, V>.b h;
    public xq4<K, V>.c i;

    public class a implements Comparator<Comparable> {
        @Override // java.util.Comparator
        public final int compare(Comparable comparable, Comparable comparable2) {
            return comparable.compareTo(comparable2);
        }
    }

    public class b extends AbstractSet<Map.Entry<K, V>> {

        public class a extends xq4<K, V>.d<Map.Entry<K, V>> {
        }

        public b() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            xq4.this.clear();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            e eVarA;
            if (obj instanceof Map.Entry) {
                xq4 xq4Var = xq4.this;
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                e eVar = null;
                if (key != null) {
                    try {
                        eVarA = xq4Var.a(key, false);
                    } catch (ClassCastException unused) {
                        eVarA = null;
                    }
                } else {
                    eVarA = null;
                }
                if (eVarA != null && Objects.equals(eVarA.i, entry.getValue())) {
                    eVar = eVarA;
                }
                if (eVar != null) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            e eVarA;
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                xq4 xq4Var = xq4.this;
                e eVar = null;
                if (key != null) {
                    try {
                        eVarA = xq4Var.a(key, false);
                    } catch (ClassCastException unused) {
                        eVarA = null;
                    }
                } else {
                    eVarA = null;
                }
                if (eVarA != null && Objects.equals(eVarA.i, entry.getValue())) {
                    eVar = eVarA;
                }
                if (eVar != null) {
                    xq4Var.d(eVar, true);
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return xq4.this.e;
        }
    }

    public final class c extends AbstractSet<K> {

        public class a extends xq4<K, V>.d<K> {
            @Override // xq4.d, java.util.Iterator
            public final K next() {
                return a().g;
            }
        }

        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            xq4.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return xq4.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            return new a();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            xq4 xq4Var = xq4.this;
            e<K, V> eVarA = null;
            if (obj != null) {
                try {
                    eVarA = xq4Var.a(obj, false);
                } catch (ClassCastException unused) {
                }
            }
            if (eVarA != null) {
                xq4Var.d(eVarA, true);
            }
            return eVarA != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return xq4.this.e;
        }
    }

    public abstract class d<T> implements Iterator<T> {
        public e<K, V> b;
        public e<K, V> c = null;
        public int d;

        public d() {
            this.b = xq4.this.g.e;
            this.d = xq4.this.f;
        }

        public final e<K, V> a() {
            e<K, V> eVar = this.b;
            xq4 xq4Var = xq4.this;
            if (eVar == xq4Var.g) {
                qz0.e();
                return null;
            }
            if (xq4Var.f != this.d) {
                ln.e();
                return null;
            }
            this.b = eVar.e;
            this.c = eVar;
            return eVar;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.b != xq4.this.g;
        }

        @Override // java.util.Iterator
        public Object next() {
            return a();
        }

        @Override // java.util.Iterator
        public final void remove() {
            e<K, V> eVar = this.c;
            if (eVar == null) {
                ud.g();
                return;
            }
            xq4 xq4Var = xq4.this;
            xq4Var.d(eVar, true);
            this.c = null;
            this.d = xq4Var.f;
        }
    }

    public xq4(boolean z) {
        this.e = 0;
        this.f = 0;
        this.b = j;
        this.c = z;
        this.g = new e<>(z);
    }

    private void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is unsupported");
    }

    private Object writeReplace() {
        return new LinkedHashMap(this);
    }

    public final e<K, V> a(K k, boolean z) {
        int iCompareTo;
        e<K, V> eVar;
        e<K, V> eVar2 = this.d;
        a aVar = j;
        Comparator<? super K> comparator = this.b;
        if (eVar2 != null) {
            Comparable comparable = comparator == aVar ? (Comparable) k : null;
            while (true) {
                K k2 = eVar2.g;
                iCompareTo = comparable != null ? comparable.compareTo(k2) : comparator.compare(k, k2);
                if (iCompareTo == 0) {
                    return eVar2;
                }
                e<K, V> eVar3 = iCompareTo < 0 ? eVar2.c : eVar2.d;
                if (eVar3 == null) {
                    break;
                }
                eVar2 = eVar3;
            }
        } else {
            iCompareTo = 0;
        }
        e<K, V> eVar4 = eVar2;
        if (!z) {
            return null;
        }
        e<K, V> eVar5 = this.g;
        if (eVar4 != null) {
            eVar = new e<>(this.c, eVar4, k, eVar5, eVar5.f);
            if (iCompareTo < 0) {
                eVar4.c = eVar;
            } else {
                eVar4.d = eVar;
            }
            b(eVar4, true);
        } else {
            if (comparator == aVar && !(k instanceof Comparable)) {
                throw new ClassCastException(k.getClass().getName().concat(" is not Comparable"));
            }
            eVar = new e<>(this.c, eVar4, k, eVar5, eVar5.f);
            this.d = eVar;
        }
        this.e++;
        this.f++;
        return eVar;
    }

    public final void b(e<K, V> eVar, boolean z) {
        while (eVar != null) {
            e<K, V> eVar2 = eVar.c;
            e<K, V> eVar3 = eVar.d;
            int i = eVar2 != null ? eVar2.j : 0;
            int i2 = eVar3 != null ? eVar3.j : 0;
            int i3 = i - i2;
            if (i3 == -2) {
                e<K, V> eVar4 = eVar3.c;
                e<K, V> eVar5 = eVar3.d;
                int i4 = (eVar4 != null ? eVar4.j : 0) - (eVar5 != null ? eVar5.j : 0);
                if (i4 == -1 || (i4 == 0 && !z)) {
                    g(eVar);
                } else {
                    j(eVar3);
                    g(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 2) {
                e<K, V> eVar6 = eVar2.c;
                e<K, V> eVar7 = eVar2.d;
                int i5 = (eVar6 != null ? eVar6.j : 0) - (eVar7 != null ? eVar7.j : 0);
                if (i5 == 1 || (i5 == 0 && !z)) {
                    j(eVar);
                } else {
                    g(eVar2);
                    j(eVar);
                }
                if (z) {
                    return;
                }
            } else if (i3 == 0) {
                eVar.j = i + 1;
                if (z) {
                    return;
                }
            } else {
                eVar.j = Math.max(i, i2) + 1;
                if (!z) {
                    return;
                }
            }
            eVar = eVar.b;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        this.d = null;
        this.e = 0;
        this.f++;
        e<K, V> eVar = this.g;
        eVar.f = eVar;
        eVar.e = eVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        e<K, V> eVarA = null;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
            }
        }
        return eVarA != null;
    }

    public final void d(e<K, V> eVar, boolean z) {
        e<K, V> eVar2;
        e<K, V> eVar3;
        int i;
        if (z) {
            e<K, V> eVar4 = eVar.f;
            eVar4.e = eVar.e;
            eVar.e.f = eVar4;
        }
        e<K, V> eVar5 = eVar.c;
        e<K, V> eVar6 = eVar.d;
        e<K, V> eVar7 = eVar.b;
        int i2 = 0;
        if (eVar5 == null || eVar6 == null) {
            if (eVar5 != null) {
                e(eVar, eVar5);
                eVar.c = null;
            } else if (eVar6 != null) {
                e(eVar, eVar6);
                eVar.d = null;
            } else {
                e(eVar, null);
            }
            b(eVar7, false);
            this.e--;
            this.f++;
            return;
        }
        if (eVar5.j > eVar6.j) {
            e<K, V> eVar8 = eVar5.d;
            while (true) {
                e<K, V> eVar9 = eVar8;
                eVar3 = eVar5;
                eVar5 = eVar9;
                if (eVar5 == null) {
                    break;
                } else {
                    eVar8 = eVar5.d;
                }
            }
        } else {
            e<K, V> eVar10 = eVar6.c;
            while (true) {
                eVar2 = eVar6;
                eVar6 = eVar10;
                if (eVar6 == null) {
                    break;
                } else {
                    eVar10 = eVar6.c;
                }
            }
            eVar3 = eVar2;
        }
        d(eVar3, false);
        e<K, V> eVar11 = eVar.c;
        if (eVar11 != null) {
            i = eVar11.j;
            eVar3.c = eVar11;
            eVar11.b = eVar3;
            eVar.c = null;
        } else {
            i = 0;
        }
        e<K, V> eVar12 = eVar.d;
        if (eVar12 != null) {
            i2 = eVar12.j;
            eVar3.d = eVar12;
            eVar12.b = eVar3;
            eVar.d = null;
        }
        eVar3.j = Math.max(i, i2) + 1;
        e(eVar, eVar3);
    }

    public final void e(e<K, V> eVar, e<K, V> eVar2) {
        e<K, V> eVar3 = eVar.b;
        eVar.b = null;
        if (eVar2 != null) {
            eVar2.b = eVar3;
        }
        if (eVar3 == null) {
            this.d = eVar2;
        } else if (eVar3.c == eVar) {
            eVar3.c = eVar2;
        } else {
            eVar3.d = eVar2;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        xq4<K, V>.b bVar = this.h;
        if (bVar != null) {
            return bVar;
        }
        xq4<K, V>.b bVar2 = new b();
        this.h = bVar2;
        return bVar2;
    }

    public final void g(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.c;
        e<K, V> eVar3 = eVar.d;
        e<K, V> eVar4 = eVar3.c;
        e<K, V> eVar5 = eVar3.d;
        eVar.d = eVar4;
        if (eVar4 != null) {
            eVar4.b = eVar;
        }
        e(eVar, eVar3);
        eVar3.c = eVar;
        eVar.b = eVar3;
        int iMax = Math.max(eVar2 != null ? eVar2.j : 0, eVar4 != null ? eVar4.j : 0) + 1;
        eVar.j = iMax;
        eVar3.j = Math.max(iMax, eVar5 != null ? eVar5.j : 0) + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        e<K, V> eVarA;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
                eVarA = null;
            }
        } else {
            eVarA = null;
        }
        if (eVarA != null) {
            return eVarA.i;
        }
        return null;
    }

    public final void j(e<K, V> eVar) {
        e<K, V> eVar2 = eVar.c;
        e<K, V> eVar3 = eVar.d;
        e<K, V> eVar4 = eVar2.c;
        e<K, V> eVar5 = eVar2.d;
        eVar.c = eVar5;
        if (eVar5 != null) {
            eVar5.b = eVar;
        }
        e(eVar, eVar2);
        eVar2.d = eVar;
        eVar.b = eVar2;
        int iMax = Math.max(eVar3 != null ? eVar3.j : 0, eVar5 != null ? eVar5.j : 0) + 1;
        eVar.j = iMax;
        eVar2.j = Math.max(iMax, eVar4 != null ? eVar4.j : 0) + 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        xq4<K, V>.c cVar = this.i;
        if (cVar != null) {
            return cVar;
        }
        xq4<K, V>.c cVar2 = new c();
        this.i = cVar2;
        return cVar2;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K k, V v) {
        if (k == null) {
            o2.d("key == null");
            return null;
        }
        if (v == null && !this.c) {
            o2.d("value == null");
            return null;
        }
        e<K, V> eVarA = a(k, true);
        V v2 = eVarA.i;
        eVarA.i = v;
        return v2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        e<K, V> eVarA;
        if (obj != 0) {
            try {
                eVarA = a(obj, false);
            } catch (ClassCastException unused) {
                eVarA = null;
            }
        } else {
            eVarA = null;
        }
        if (eVarA != null) {
            d(eVarA, true);
        }
        if (eVarA != null) {
            return eVarA.i;
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.e;
    }

    public static final class e<K, V> implements Map.Entry<K, V> {
        public e<K, V> b;
        public e<K, V> c;
        public e<K, V> d;
        public e<K, V> e;
        public e<K, V> f;
        public final K g;
        public final boolean h;
        public V i;
        public int j;

        public e(boolean z, e<K, V> eVar, K k, e<K, V> eVar2, e<K, V> eVar3) {
            this.b = eVar;
            this.g = k;
            this.h = z;
            this.j = 1;
            this.e = eVar2;
            this.f = eVar3;
            eVar3.e = this;
            eVar2.f = this;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                K k = this.g;
                if (k != null ? k.equals(entry.getKey()) : entry.getKey() == null) {
                    V v = this.i;
                    if (v == null) {
                        if (entry.getValue() == null) {
                            return true;
                        }
                    } else if (v.equals(entry.getValue())) {
                        return true;
                    }
                }
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.g;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.i;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.g;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.i;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            if (v == null && !this.h) {
                o2.d("value == null");
                return null;
            }
            V v2 = this.i;
            this.i = v;
            return v2;
        }

        public final String toString() {
            return this.g + "=" + this.i;
        }

        public e(boolean z) {
            this.g = null;
            this.h = z;
            this.f = this;
            this.e = this;
        }
    }

    public xq4() {
        this(true);
    }
}
