package defpackage;

import java.io.InvalidObjectException;
import java.io.NotSerializableException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class uz4<K, V> implements Map<K, V>, Serializable, ue4 {
    public static final uz4 o;
    public K[] b;
    public V[] c;
    public int[] d;
    public int[] e;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public wz4<K> k;
    public xz4<V> l;
    public vz4<K, V> m;
    public boolean n;

    public static final class a<K, V> extends c<K, V> implements Iterator<Map.Entry<K, V>>, re4 {
        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i = this.c;
            uz4<K, V> uz4Var = this.b;
            if (i >= uz4Var.g) {
                qz0.e();
                return null;
            }
            this.c = i + 1;
            this.d = i;
            b bVar = new b(uz4Var, i);
            b();
            return bVar;
        }
    }

    public static final class b<K, V> implements Map.Entry<K, V>, ue4.a {
        public final uz4<K, V> b;
        public final int c;
        public final int d;

        public b(uz4<K, V> uz4Var, int i) {
            uz4Var.getClass();
            this.b = uz4Var;
            this.c = i;
            this.d = uz4Var.i;
        }

        public final void a() {
            if (this.b.i != this.d) {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            return aa4.e(entry.getKey(), getKey()) && aa4.e(entry.getValue(), getValue());
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            a();
            return this.b.b[this.c];
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            a();
            V[] vArr = this.b.c;
            vArr.getClass();
            return vArr[this.c];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K key = getKey();
            int iHashCode = key != null ? key.hashCode() : 0;
            V value = getValue();
            return iHashCode ^ (value != null ? value.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            a();
            uz4<K, V> uz4Var = this.b;
            uz4Var.d();
            V[] vArr = uz4Var.c;
            if (vArr == null) {
                int length = uz4Var.b.length;
                if (length < 0) {
                    fg.c("capacity must be non-negative.");
                    return null;
                }
                vArr = (V[]) new Object[length];
                uz4Var.c = vArr;
            }
            int i = this.c;
            V v2 = vArr[i];
            vArr[i] = v;
            return v2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    public static class c<K, V> {
        public final uz4<K, V> b;
        public int c;
        public int d;
        public int e;

        public c(uz4<K, V> uz4Var) {
            uz4Var.getClass();
            this.b = uz4Var;
            this.d = -1;
            this.e = uz4Var.i;
            b();
        }

        public final void a() {
            if (this.b.i == this.e) {
                return;
            }
            ln.e();
        }

        public final void b() {
            while (true) {
                int i = this.c;
                uz4<K, V> uz4Var = this.b;
                if (i >= uz4Var.g || uz4Var.d[i] >= 0) {
                    return;
                } else {
                    this.c = i + 1;
                }
            }
        }

        public final boolean hasNext() {
            return this.c < this.b.g;
        }

        public final void remove() {
            a();
            if (this.d == -1) {
                ah.f("Call next() before removing element from the iterator.");
                return;
            }
            uz4<K, V> uz4Var = this.b;
            uz4Var.d();
            uz4Var.p(this.d);
            this.d = -1;
            this.e = uz4Var.i;
        }
    }

    public static final class d<K, V> extends c<K, V> implements Iterator<K>, re4 {
        @Override // java.util.Iterator
        public final K next() {
            a();
            int i = this.c;
            uz4<K, V> uz4Var = this.b;
            if (i >= uz4Var.g) {
                qz0.e();
                return null;
            }
            this.c = i + 1;
            this.d = i;
            K k = uz4Var.b[i];
            b();
            return k;
        }
    }

    public static final class e<K, V> extends c<K, V> implements Iterator<V>, re4 {
        @Override // java.util.Iterator
        public final V next() {
            a();
            int i = this.c;
            uz4<K, V> uz4Var = this.b;
            if (i >= uz4Var.g) {
                qz0.e();
                return null;
            }
            this.c = i + 1;
            this.d = i;
            V[] vArr = uz4Var.c;
            vArr.getClass();
            V v = vArr[this.d];
            b();
            return v;
        }
    }

    static {
        uz4 uz4Var = new uz4(0);
        uz4Var.n = true;
        o = uz4Var;
    }

    public uz4(int i) {
        if (i < 0) {
            fg.c("capacity must be non-negative.");
            throw null;
        }
        K[] kArr = (K[]) new Object[i];
        int[] iArr = new int[i];
        int iHighestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
        this.b = kArr;
        this.c = null;
        this.d = iArr;
        this.e = new int[iHighestOneBit];
        this.f = 2;
        this.g = 0;
        this.h = Integer.numberOfLeadingZeros(iHighestOneBit) + 1;
    }

    private final void readObject(ObjectInputStream objectInputStream) throws InvalidObjectException {
        throw new InvalidObjectException("Deserialization is supported via proxy only");
    }

    private final Object writeReplace() throws NotSerializableException {
        if (!this.n) {
            throw new NotSerializableException("The map cannot be serialized while it is being built.");
        }
        aq7 aq7Var = new aq7();
        aq7Var.b = this;
        return aq7Var;
    }

    public final int a(K k) {
        d();
        while (true) {
            int iN = n(k);
            int i = this.f * 2;
            int length = this.e.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.e;
                int i3 = iArr[iN];
                if (i3 == 0) {
                    int i4 = this.g;
                    K[] kArr = this.b;
                    if (i4 >= kArr.length) {
                        j(1);
                        break;
                    }
                    int i5 = i4 + 1;
                    this.g = i5;
                    kArr[i4] = k;
                    this.d[i4] = iN;
                    iArr[iN] = i5;
                    this.j++;
                    this.i++;
                    if (i2 > this.f) {
                        this.f = i2;
                    }
                    return i4;
                }
                if (aa4.e(this.b[i3 - 1], k)) {
                    return -i3;
                }
                i2++;
                if (i2 > i) {
                    o(this.e.length * 2);
                    break;
                }
                iN = iN == 0 ? this.e.length - 1 : iN - 1;
            }
        }
    }

    public final uz4 b() {
        d();
        this.n = true;
        if (this.j > 0) {
            return this;
        }
        uz4 uz4Var = o;
        uz4Var.getClass();
        return uz4Var;
    }

    @Override // java.util.Map
    public final void clear() {
        d();
        int i = this.g - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.d;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.e[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        hn1.a(0, this.g, this.b);
        V[] vArr = this.c;
        if (vArr != null) {
            hn1.a(0, this.g, vArr);
        }
        this.j = 0;
        this.g = 0;
        this.i++;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return k(obj) >= 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return m(obj) >= 0;
    }

    public final void d() {
        if (this.n) {
            ud.d();
        }
    }

    public final void e(boolean z) {
        int i;
        V[] vArr = this.c;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.g;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.d;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                K[] kArr = this.b;
                kArr[i3] = kArr[i2];
                if (vArr != null) {
                    vArr[i3] = vArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.e[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        hn1.a(i3, i, this.b);
        if (vArr != null) {
            hn1.a(i3, this.g, vArr);
        }
        this.g = i3;
    }

    @Override // java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        vz4<K, V> vz4Var = this.m;
        if (vz4Var != null) {
            return vz4Var;
        }
        vz4<K, V> vz4Var2 = new vz4<>(this);
        this.m = vz4Var2;
        return vz4Var2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        return this.j == map.size() && g(map.entrySet());
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean g(Collection<?> collection) {
        boolean zE;
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    int iK = k(entry.getKey());
                    if (iK < 0) {
                        zE = false;
                    } else {
                        V[] vArr = this.c;
                        vArr.getClass();
                        zE = aa4.e(vArr[iK], entry.getValue());
                    }
                    if (!zE) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V get(Object obj) {
        int iK = k(obj);
        if (iK < 0) {
            return null;
        }
        V[] vArr = this.c;
        vArr.getClass();
        return vArr[iK];
    }

    @Override // java.util.Map
    public final int hashCode() {
        a aVar = new a(this);
        int i = 0;
        while (aVar.hasNext()) {
            int i2 = aVar.c;
            uz4<K, V> uz4Var = aVar.b;
            if (i2 >= uz4Var.g) {
                qz0.e();
                return 0;
            }
            aVar.c = i2 + 1;
            aVar.d = i2;
            K k = uz4Var.b[i2];
            int iHashCode = k != null ? k.hashCode() : 0;
            V[] vArr = uz4Var.c;
            vArr.getClass();
            V v = vArr[aVar.d];
            int iHashCode2 = v != null ? v.hashCode() : 0;
            aVar.b();
            i += iHashCode ^ iHashCode2;
        }
        return i;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.j == 0;
    }

    public final void j(int i) {
        K[] kArr = this.b;
        int length = kArr.length;
        int i2 = this.g;
        int i3 = length - i2;
        int i4 = i2 - this.j;
        if (i3 < i && i3 + i4 >= i && i4 >= kArr.length / 4) {
            e(true);
            return;
        }
        int i5 = i2 + i;
        if (i5 < 0) {
            vh.c();
            return;
        }
        if (i5 > kArr.length) {
            u0.a aVar = u0.Companion;
            int length2 = kArr.length;
            aVar.getClass();
            int iE = u0.a.e(length2, i5);
            K[] kArr2 = this.b;
            kArr2.getClass();
            this.b = (K[]) Arrays.copyOf(kArr2, iE);
            V[] vArr = this.c;
            this.c = vArr != null ? (V[]) Arrays.copyOf(vArr, iE) : null;
            this.d = Arrays.copyOf(this.d, iE);
            int iHighestOneBit = Integer.highestOneBit((iE >= 1 ? iE : 1) * 3);
            if (iHighestOneBit > this.e.length) {
                o(iHighestOneBit);
            }
        }
    }

    public final int k(K k) {
        int iN = n(k);
        int i = this.f;
        while (true) {
            int i2 = this.e[iN];
            if (i2 == 0) {
                return -1;
            }
            int i3 = i2 - 1;
            if (aa4.e(this.b[i3], k)) {
                return i3;
            }
            i--;
            if (i < 0) {
                return -1;
            }
            iN = iN == 0 ? this.e.length - 1 : iN - 1;
        }
    }

    @Override // java.util.Map
    public final Set<K> keySet() {
        wz4<K> wz4Var = this.k;
        if (wz4Var != null) {
            return wz4Var;
        }
        wz4<K> wz4Var2 = new wz4<>(this);
        this.k = wz4Var2;
        return wz4Var2;
    }

    public final int m(V v) {
        int i = this.g;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.d[i] >= 0) {
                V[] vArr = this.c;
                vArr.getClass();
                if (aa4.e(vArr[i], v)) {
                    return i;
                }
            }
        }
    }

    public final int n(K k) {
        return ((k != null ? k.hashCode() : 0) * (-1640531527)) >>> this.h;
    }

    public final void o(int i) {
        int[] iArr;
        this.i++;
        int i2 = 0;
        if (this.g > this.j) {
            e(false);
        }
        this.e = new int[i];
        this.h = Integer.numberOfLeadingZeros(i) + 1;
        while (i2 < this.g) {
            int i3 = i2 + 1;
            int iN = n(this.b[i2]);
            int i4 = this.f;
            while (true) {
                iArr = this.e;
                if (iArr[iN] == 0) {
                    break;
                }
                i4--;
                if (i4 < 0) {
                    ah.f("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                    return;
                }
                iN = iN == 0 ? iArr.length - 1 : iN - 1;
            }
            iArr[iN] = i3;
            this.d[i2] = iN;
            i2 = i3;
        }
    }

    public final void p(int i) {
        int i2;
        int i3;
        int iN;
        int[] iArr;
        K[] kArr = this.b;
        kArr.getClass();
        kArr[i] = null;
        V[] vArr = this.c;
        if (vArr != null) {
            vArr[i] = null;
        }
        int length = this.d[i];
        loop0: while (true) {
            int i4 = length;
            int i5 = 0;
            do {
                length = length == 0 ? this.e.length - 1 : length - 1;
                int[] iArr2 = this.e;
                i2 = iArr2[length];
                i5++;
                if (i5 > this.f) {
                    iArr2[i4] = 0;
                    break loop0;
                } else if (i2 == 0) {
                    iArr2[i4] = 0;
                    break loop0;
                } else {
                    i3 = i2 - 1;
                    iN = n(this.b[i3]) - length;
                    iArr = this.e;
                }
            } while ((iN & (iArr.length - 1)) < i5);
            iArr[i4] = i2;
            this.d[i3] = i4;
        }
        this.d[i] = -1;
        this.j--;
        this.i++;
    }

    @Override // java.util.Map
    public final V put(K k, V v) {
        d();
        int iA = a(k);
        V[] vArr = this.c;
        if (vArr == null) {
            int length = this.b.length;
            if (length < 0) {
                fg.c("capacity must be non-negative.");
                return null;
            }
            vArr = (V[]) new Object[length];
            this.c = vArr;
        }
        if (iA >= 0) {
            vArr[iA] = v;
            return null;
        }
        int i = (-iA) - 1;
        V v2 = vArr[i];
        vArr[i] = v;
        return v2;
    }

    @Override // java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        map.getClass();
        d();
        Set<Map.Entry<? extends K, ? extends V>> setEntrySet = map.entrySet();
        if (setEntrySet.isEmpty()) {
            return;
        }
        j(setEntrySet.size());
        for (Map.Entry<? extends K, ? extends V> entry : setEntrySet) {
            int iA = a(entry.getKey());
            V[] vArr = this.c;
            if (vArr == null) {
                int length = this.b.length;
                if (length < 0) {
                    fg.c("capacity must be non-negative.");
                    return;
                } else {
                    vArr = (V[]) new Object[length];
                    this.c = vArr;
                }
            }
            if (iA >= 0) {
                vArr[iA] = entry.getValue();
            } else {
                int i = (-iA) - 1;
                if (!aa4.e(entry.getValue(), vArr[i])) {
                    vArr[i] = entry.getValue();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Map
    public final V remove(Object obj) {
        d();
        int iK = k(obj);
        if (iK < 0) {
            return null;
        }
        V[] vArr = this.c;
        vArr.getClass();
        V v = vArr[iK];
        p(iK);
        return v;
    }

    @Override // java.util.Map
    public final int size() {
        return this.j;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.j * 3) + 2);
        sb.append("{");
        a aVar = new a(this);
        int i = 0;
        while (aVar.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = aVar.c;
            uz4<K, V> uz4Var = aVar.b;
            if (i2 >= uz4Var.g) {
                qz0.e();
                return null;
            }
            aVar.c = i2 + 1;
            aVar.d = i2;
            K k = uz4Var.b[i2];
            if (k == uz4Var) {
                sb.append("(this Map)");
            } else {
                sb.append(k);
            }
            sb.append('=');
            V[] vArr = uz4Var.c;
            vArr.getClass();
            V v = vArr[aVar.d];
            if (v == uz4Var) {
                sb.append("(this Map)");
            } else {
                sb.append(v);
            }
            aVar.b();
            i++;
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection<V> values() {
        xz4<V> xz4Var = this.l;
        if (xz4Var != null) {
            return xz4Var;
        }
        xz4<V> xz4Var2 = new xz4<>(this);
        this.l = xz4Var2;
        return xz4Var2;
    }

    public uz4() {
        this(8);
    }
}
