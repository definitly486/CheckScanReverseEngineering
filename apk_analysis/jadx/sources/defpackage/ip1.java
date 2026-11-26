package defpackage;

import java.io.IOException;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes4.dex */
public final class ip1<K, V> extends AbstractMap<K, V> implements Serializable {
    public static final Object k = new Object();
    public transient Object b;
    public transient int[] c;
    public transient Object[] d;
    public transient Object[] e;
    public transient int f;
    public transient int g;
    public transient c h;
    public transient a i;
    public transient e j;

    public final class a extends AbstractSet<Map.Entry<K, V>> {
        public a() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ip1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            if (mapD != null) {
                return mapD.entrySet().contains(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            int iG = ip1Var.g(entry.getKey());
            return iG != -1 && Objects.equals(ip1Var.q()[iG], entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<Map.Entry<K, V>> iterator() {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            return mapD != null ? mapD.entrySet().iterator() : new gp1(ip1Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            if (mapD != null) {
                return mapD.entrySet().remove(obj);
            }
            if (!(obj instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) obj;
            if (ip1Var.m()) {
                return false;
            }
            int iE = ip1Var.e();
            Object key = entry.getKey();
            Object value = entry.getValue();
            Object obj2 = ip1Var.b;
            Objects.requireNonNull(obj2);
            int iL = x65.l(key, value, iE, obj2, ip1Var.o(), ip1Var.p(), ip1Var.q());
            if (iL == -1) {
                return false;
            }
            ip1Var.k(iL, iE);
            ip1Var.g--;
            ip1Var.f += 32;
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ip1.this.size();
        }
    }

    public abstract class b<T> implements Iterator<T> {
        public int b;
        public int c;
        public int d;

        public b() {
            this.b = ip1.this.f;
            this.c = ip1.this.isEmpty() ? -1 : 0;
            this.d = -1;
        }

        public abstract T a(int i);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            return this.c >= 0;
        }

        @Override // java.util.Iterator
        public final T next() {
            ip1 ip1Var = ip1.this;
            if (ip1Var.f != this.b) {
                ln.e();
                return null;
            }
            if (!hasNext()) {
                qz0.e();
                return null;
            }
            int i = this.c;
            this.d = i;
            T tA = a(i);
            int i2 = this.c + 1;
            if (i2 >= ip1Var.g) {
                i2 = -1;
            }
            this.c = i2;
            return tA;
        }

        @Override // java.util.Iterator
        public final void remove() {
            ip1 ip1Var = ip1.this;
            if (ip1Var.f != this.b) {
                ln.e();
                return;
            }
            cn1.c(this.d >= 0);
            this.b += 32;
            int i = this.d;
            Object obj = ip1.k;
            ip1Var.remove(ip1Var.p()[i]);
            this.c--;
            this.d = -1;
        }
    }

    public final class c extends AbstractSet<K> {
        public c() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            ip1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            return ip1.this.containsKey(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator<K> iterator() {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            return mapD != null ? mapD.keySet().iterator() : new fp1(ip1Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            if (mapD != null) {
                return mapD.keySet().remove(obj);
            }
            return ip1Var.n(obj) != ip1.k;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ip1.this.size();
        }
    }

    public final class d extends z0<K, V> {
        public final K b;
        public int c;

        public d(int i) {
            Object obj = ip1.k;
            this.b = (K) ip1.this.p()[i];
            this.c = i;
        }

        public final void a() {
            int i = this.c;
            K k = this.b;
            ip1 ip1Var = ip1.this;
            if (i != -1 && i < ip1Var.size()) {
                if (Objects.equals(k, ip1Var.p()[this.c])) {
                    return;
                }
            }
            Object obj = ip1.k;
            this.c = ip1Var.g(k);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            if (mapD != null) {
                return mapD.get(this.b);
            }
            a();
            int i = this.c;
            if (i == -1) {
                return null;
            }
            return (V) ip1Var.q()[i];
        }

        @Override // defpackage.z0, java.util.Map.Entry
        public final V setValue(V v) {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            K k = this.b;
            if (mapD != null) {
                return mapD.put(k, v);
            }
            a();
            int i = this.c;
            if (i == -1) {
                ip1Var.put(k, v);
                return null;
            }
            V v2 = (V) ip1Var.q()[i];
            ip1Var.q()[this.c] = v;
            return v2;
        }
    }

    public final class e extends AbstractCollection<V> {
        public e() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            ip1.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator<V> iterator() {
            ip1 ip1Var = ip1.this;
            Map<K, V> mapD = ip1Var.d();
            return mapD != null ? mapD.values().iterator() : new hp1(ip1Var);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return ip1.this.size();
        }
    }

    public static <K, V> ip1<K, V> a() {
        ip1<K, V> ip1Var = new ip1<>();
        ip1Var.j(3);
        return ip1Var;
    }

    public static <K, V> ip1<K, V> b(int i) {
        ip1<K, V> ip1Var = new ip1<>();
        ip1Var.j(i);
        return ip1Var;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        int i = objectInputStream.readInt();
        if (i < 0) {
            throw new InvalidObjectException(jh.b(i, "Invalid size: "));
        }
        j(i);
        for (int i2 = 0; i2 < i; i2++) {
            put(objectInputStream.readObject(), objectInputStream.readObject());
        }
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeInt(size());
        Map<K, V> mapD = d();
        Iterator<Map.Entry<K, V>> it = mapD != null ? mapD.entrySet().iterator() : new gp1(this);
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            objectOutputStream.writeObject(next.getKey());
            objectOutputStream.writeObject(next.getValue());
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (m()) {
            return;
        }
        this.f += 32;
        Map<K, V> mapD = d();
        if (mapD != null) {
            this.f = Math.min(Math.max(size(), 3), 1073741823);
            mapD.clear();
            this.b = null;
            this.g = 0;
            return;
        }
        Arrays.fill(p(), 0, this.g, (Object) null);
        Arrays.fill(q(), 0, this.g, (Object) null);
        Object obj = this.b;
        Objects.requireNonNull(obj);
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        Arrays.fill(o(), 0, this.g, 0);
        this.g = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Map<K, V> mapD = d();
        if (mapD != null) {
            return mapD.containsKey(obj);
        }
        return g(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(Object obj) {
        Map<K, V> mapD = d();
        if (mapD != null) {
            return mapD.containsValue(obj);
        }
        for (int i = 0; i < this.g; i++) {
            if (Objects.equals(obj, q()[i])) {
                return true;
            }
        }
        return false;
    }

    public final Map<K, V> d() {
        Object obj = this.b;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    public final int e() {
        return (1 << (this.f & 31)) - 1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        a aVar = this.i;
        if (aVar != null) {
            return aVar;
        }
        a aVar2 = new a();
        this.i = aVar2;
        return aVar2;
    }

    public final int g(Object obj) {
        if (m()) {
            return -1;
        }
        int iG = eg9.g(obj);
        int iE = e();
        Object obj2 = this.b;
        Objects.requireNonNull(obj2);
        int iM = x65.m(iG & iE, obj2);
        if (iM == 0) {
            return -1;
        }
        int i = ~iE;
        int i2 = iG & i;
        do {
            int i3 = iM - 1;
            int i4 = o()[i3];
            if ((i4 & i) == i2 && Objects.equals(obj, p()[i3])) {
                return i3;
            }
            iM = i4 & iE;
        } while (iM != 0);
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V get(Object obj) {
        Map<K, V> mapD = d();
        if (mapD != null) {
            return mapD.get(obj);
        }
        int iG = g(obj);
        if (iG == -1) {
            return null;
        }
        return (V) q()[iG];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    public final void j(int i) {
        o8.f(i >= 0, "Expected size must be >= 0");
        this.f = Math.min(Math.max(i, 1), 1073741823);
    }

    public final void k(int i, int i2) {
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrO = o();
        Object[] objArrP = p();
        Object[] objArrQ = q();
        int size = size();
        int i3 = size - 1;
        if (i >= i3) {
            objArrP[i] = null;
            objArrQ[i] = null;
            iArrO[i] = 0;
            return;
        }
        Object obj2 = objArrP[i3];
        objArrP[i] = obj2;
        objArrQ[i] = objArrQ[i3];
        objArrP[i3] = null;
        objArrQ[i3] = null;
        iArrO[i] = iArrO[i3];
        iArrO[i3] = 0;
        int iG = eg9.g(obj2) & i2;
        int iM = x65.m(iG, obj);
        if (iM == size) {
            x65.n(iG, i + 1, obj);
            return;
        }
        while (true) {
            int i4 = iM - 1;
            int i5 = iArrO[i4];
            int i6 = i5 & i2;
            if (i6 == size) {
                iArrO[i4] = x65.j(i5, i + 1, i2);
                return;
            }
            iM = i6;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set<K> keySet() {
        c cVar = this.h;
        if (cVar != null) {
            return cVar;
        }
        c cVar2 = new c();
        this.h = cVar2;
        return cVar2;
    }

    public final boolean m() {
        return this.b == null;
    }

    public final Object n(Object obj) {
        if (!m()) {
            int iE = e();
            Object obj2 = this.b;
            Objects.requireNonNull(obj2);
            int iL = x65.l(obj, null, iE, obj2, o(), p(), null);
            if (iL != -1) {
                Object obj3 = q()[iL];
                k(iL, iE);
                this.g--;
                this.f += 32;
                return obj3;
            }
        }
        return k;
    }

    public final int[] o() {
        int[] iArr = this.c;
        Objects.requireNonNull(iArr);
        return iArr;
    }

    public final Object[] p() {
        Object[] objArr = this.d;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    /* JADX WARN: Code duplicated, block: B:40:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:42:0x0100 A[LOOP:1: B:39:0x00e9->B:42:0x0100, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:63:0x00e4 A[EDGE_INSN: B:63:0x00e4->B:37:0x00e4 BREAK  A[LOOP:1: B:39:0x00e9->B:42:0x0100], SYNTHETIC] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:41:0x00fe -> B:37:0x00e4). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // java.util.AbstractMap, java.util.Map
    public final V put(K r23, V r24) {
        /*
            Method dump skipped, instruction units count: 405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ip1.put(java.lang.Object, java.lang.Object):java.lang.Object");
    }

    public final Object[] q() {
        Object[] objArr = this.e;
        Objects.requireNonNull(objArr);
        return objArr;
    }

    public final int r(int i, int i2, int i3, int i4) {
        Object objD = x65.d(i2);
        int i5 = i2 - 1;
        if (i4 != 0) {
            x65.n(i3 & i5, i4 + 1, objD);
        }
        Object obj = this.b;
        Objects.requireNonNull(obj);
        int[] iArrO = o();
        for (int i6 = 0; i6 <= i; i6++) {
            int iM = x65.m(i6, obj);
            while (iM != 0) {
                int i7 = iM - 1;
                int i8 = iArrO[i7];
                int i9 = ((~i) & i8) | i6;
                int i10 = i9 & i5;
                int iM2 = x65.m(i10, objD);
                x65.n(i10, iM, objD);
                iArrO[i7] = x65.j(i9, iM2, i5);
                iM = i8 & i;
            }
        }
        this.b = objD;
        this.f = x65.j(this.f, 32 - Integer.numberOfLeadingZeros(i5), 31);
        return i5;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        Map<K, V> mapD = d();
        if (mapD != null) {
            return mapD.remove(obj);
        }
        V v = (V) n(obj);
        if (v == k) {
            return null;
        }
        return v;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map<K, V> mapD = d();
        return mapD != null ? mapD.size() : this.g;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection<V> values() {
        e eVar = this.j;
        if (eVar != null) {
            return eVar;
        }
        e eVar2 = new e();
        this.j = eVar2;
        return eVar2;
    }
}
