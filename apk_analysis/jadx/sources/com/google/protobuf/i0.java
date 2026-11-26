package com.google.protobuf;

import defpackage.ah;
import defpackage.ud;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: loaded from: classes4.dex */
public class i0<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int i = 0;
    public final int b;
    public List<i0<K, V>.d> c = Collections.EMPTY_LIST;
    public Map<K, V> d;
    public boolean e;
    public volatile i0<K, V>.f f;
    public Map<K, V> g;
    public volatile i0<K, V>.b h;

    public class a implements Iterator<Map.Entry<K, V>> {
        public int b;
        public Iterator<Map.Entry<K, V>> c;

        public a() {
            this.b = i0.this.c.size();
        }

        public final Iterator<Map.Entry<K, V>> a() {
            Iterator<Map.Entry<K, V>> it = this.c;
            if (it != null) {
                return it;
            }
            Iterator<Map.Entry<K, V>> it2 = i0.this.g.entrySet().iterator();
            this.c = it2;
            return it2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = this.b;
            return (i > 0 && i <= i0.this.c.size()) || a().hasNext();
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (a().hasNext()) {
                return a().next();
            }
            List<i0<K, V>.d> list = i0.this.c;
            int i = this.b - 1;
            this.b = i;
            return list.get(i);
        }

        @Override // java.util.Iterator
        public final void remove() {
            throw new UnsupportedOperationException();
        }
    }

    public class b extends i0<K, V>.f {
        public b() {
            super();
        }

        @Override // com.google.protobuf.i0.f, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            return new a();
        }
    }

    public static class c {
        public static final a a = new a();
        public static final b b = new b();

        public class a implements Iterator<Object> {
            @Override // java.util.Iterator
            public final boolean hasNext() {
                return false;
            }

            @Override // java.util.Iterator
            public final Object next() {
                throw new NoSuchElementException();
            }

            @Override // java.util.Iterator
            public final void remove() {
                throw new UnsupportedOperationException();
            }
        }

        public class b implements Iterable<Object> {
            @Override // java.lang.Iterable
            public final Iterator<Object> iterator() {
                return c.a;
            }
        }
    }

    public class d implements Map.Entry<K, V>, Comparable<i0<K, V>.d> {
        public final K b;
        public V c;

        public d() {
            throw null;
        }

        public d(K k, V v) {
            this.b = k;
            this.c = v;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.b.compareTo(((d) obj).b);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean zEquals;
            boolean zEquals2;
            if (obj != this) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    K k = this.b;
                    if (k == null) {
                        zEquals = key == null;
                    } else {
                        zEquals = k.equals(key);
                    }
                    if (zEquals) {
                        V v = this.c;
                        Object value = entry.getValue();
                        if (v == null) {
                            zEquals2 = value == null;
                        } else {
                            zEquals2 = v.equals(value);
                        }
                        if (zEquals2) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.b;
            int iHashCode = k == null ? 0 : k.hashCode();
            V v = this.c;
            return iHashCode ^ (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            int i = i0.i;
            i0.this.b();
            V v2 = this.c;
            this.c = v;
            return v2;
        }

        public final String toString() {
            return this.b + "=" + this.c;
        }
    }

    public class e implements Iterator<Map.Entry<K, V>> {
        public int b = -1;
        public boolean c;
        public Iterator<Map.Entry<K, V>> d;

        public e() {
        }

        public final Iterator<Map.Entry<K, V>> a() {
            Iterator<Map.Entry<K, V>> it = this.d;
            if (it != null) {
                return it;
            }
            Iterator<Map.Entry<K, V>> it2 = i0.this.d.entrySet().iterator();
            this.d = it2;
            return it2;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = this.b + 1;
            i0 i0Var = i0.this;
            return i < i0Var.c.size() || (!i0Var.d.isEmpty() && a().hasNext());
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.c = true;
            int i = this.b + 1;
            this.b = i;
            i0 i0Var = i0.this;
            return i < i0Var.c.size() ? i0Var.c.get(this.b) : a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (!this.c) {
                ah.f("remove() was called before next()");
                return;
            }
            this.c = false;
            int i = i0.i;
            i0 i0Var = i0.this;
            i0Var.b();
            if (this.b >= i0Var.c.size()) {
                a().remove();
                return;
            }
            int i2 = this.b;
            this.b = i2 - 1;
            i0Var.j(i2);
        }
    }

    public class f extends AbstractSet<Map.Entry<K, V>> {
        public f() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                return false;
            }
            i0.this.h((Comparable) entry.getKey(), entry.getValue());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            i0.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = i0.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                return obj2 != null && obj2.equals(value);
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator<Map.Entry<K, V>> iterator() {
            return new e();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                return false;
            }
            i0.this.remove(entry.getKey());
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return i0.this.size();
        }
    }

    public i0(int i2) {
        this.b = i2;
        Map<K, V> map = Collections.EMPTY_MAP;
        this.d = map;
        this.g = map;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x0024  */
    /* JADX WARN: Code duplicated, block: B:17:0x003e  */
    /* JADX WARN: Code duplicated, block: B:21:0x003c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:22:0x0042 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:23:0x0038 A[SYNTHETIC] */
    public final int a(K k) {
        int i2;
        int i3;
        int i4;
        int iCompareTo;
        int size = this.c.size();
        int i5 = size - 1;
        if (i5 < 0) {
            i2 = 0;
            while (i2 <= i5) {
                i4 = (i2 + i5) / 2;
                iCompareTo = k.compareTo(this.c.get(i4).b);
                if (iCompareTo < 0) {
                    i5 = i4 - 1;
                } else {
                    if (iCompareTo > 0) {
                        return i4;
                    }
                    i2 = i4 + 1;
                }
            }
            i3 = i2 + 1;
        } else {
            int iCompareTo2 = k.compareTo(this.c.get(i5).b);
            if (iCompareTo2 > 0) {
                i3 = size + 1;
            } else {
                if (iCompareTo2 == 0) {
                    return i5;
                }
                i2 = 0;
                while (i2 <= i5) {
                    i4 = (i2 + i5) / 2;
                    iCompareTo = k.compareTo(this.c.get(i4).b);
                    if (iCompareTo < 0) {
                        i5 = i4 - 1;
                    } else {
                        if (iCompareTo > 0) {
                            return i4;
                        }
                        i2 = i4 + 1;
                    }
                }
                i3 = i2 + 1;
            }
        }
        return -i3;
    }

    public final void b() {
        if (this.e) {
            ud.d();
        }
    }

    public final Map.Entry<K, V> c(int i2) {
        return this.c.get(i2);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.c.isEmpty()) {
            this.c.clear();
        }
        if (this.d.isEmpty()) {
            return;
        }
        this.d.clear();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        return a(comparable) >= 0 || this.d.containsKey(comparable);
    }

    public final Iterable<Map.Entry<K, V>> d() {
        return this.d.isEmpty() ? c.b : this.d.entrySet();
    }

    public final SortedMap<K, V> e() {
        b();
        if (this.d.isEmpty() && !(this.d instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.d = treeMap;
            this.g = treeMap.descendingMap();
        }
        return (SortedMap) this.d;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        if (this.f == null) {
            this.f = new f();
        }
        return this.f;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return super.equals(obj);
        }
        i0 i0Var = (i0) obj;
        int size = size();
        if (size == i0Var.size()) {
            int size2 = this.c.size();
            if (size2 != i0Var.c.size()) {
                return ((AbstractSet) entrySet()).equals(i0Var.entrySet());
            }
            for (int i2 = 0; i2 < size2; i2++) {
                if (c(i2).equals(i0Var.c(i2))) {
                }
            }
            if (size2 != size) {
                return this.d.equals(i0Var.d);
            }
            return true;
        }
        return false;
    }

    public void g() {
        if (this.e) {
            return;
        }
        this.d = this.d.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.d);
        this.g = this.g.isEmpty() ? Collections.EMPTY_MAP : Collections.unmodifiableMap(this.g);
        this.e = true;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        return iA >= 0 ? this.c.get(iA).c : this.d.get(comparable);
    }

    public final V h(K k, V v) {
        b();
        int iA = a(k);
        if (iA >= 0) {
            return this.c.get(iA).setValue(v);
        }
        b();
        boolean zIsEmpty = this.c.isEmpty();
        int i2 = this.b;
        if (zIsEmpty && !(this.c instanceof ArrayList)) {
            this.c = new ArrayList(i2);
        }
        int i3 = -(iA + 1);
        if (i3 >= i2) {
            return e().put(k, v);
        }
        if (this.c.size() == i2) {
            i0<K, V>.d dVarRemove = this.c.remove(i2 - 1);
            e().put(dVarRemove.b, dVarRemove.c);
        }
        this.c.add(i3, new d(k, v));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.c.size();
        int iHashCode = 0;
        for (int i2 = 0; i2 < size; i2++) {
            iHashCode += this.c.get(i2).hashCode();
        }
        return this.d.size() > 0 ? this.d.hashCode() + iHashCode : iHashCode;
    }

    public final V j(int i2) {
        b();
        V v = this.c.remove(i2).c;
        if (!this.d.isEmpty()) {
            Iterator<Map.Entry<K, V>> it = e().entrySet().iterator();
            List<i0<K, V>.d> list = this.c;
            Map.Entry<K, V> next = it.next();
            list.add(new d(next.getKey(), next.getValue()));
            it.remove();
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int iA = a(comparable);
        if (iA >= 0) {
            return j(iA);
        }
        if (this.d.isEmpty()) {
            return null;
        }
        return this.d.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.d.size() + this.c.size();
    }
}
