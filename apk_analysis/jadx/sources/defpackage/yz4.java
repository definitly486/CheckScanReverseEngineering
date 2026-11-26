package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes5.dex */
public final class yz4<K, V> extends qf4<K, V, Map.Entry<? extends K, ? extends V>> {
    public final op7 c;

    public static final class a<K, V> implements Map.Entry<K, V>, re4 {
        public final K b;
        public final V c;

        public a(K k, V v) {
            this.b = k;
            this.c = v;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return aa4.e(this.b, aVar.b) && aa4.e(this.c, aVar.c);
        }

        @Override // java.util.Map.Entry
        public final K getKey() {
            return this.b;
        }

        @Override // java.util.Map.Entry
        public final V getValue() {
            return this.c;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            K k = this.b;
            int iHashCode = (k == null ? 0 : k.hashCode()) * 31;
            V v = this.c;
            return iHashCode + (v != null ? v.hashCode() : 0);
        }

        @Override // java.util.Map.Entry
        public final V setValue(V v) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("MapEntry(key=");
            sb.append(this.b);
            sb.append(", value=");
            return vg.d(sb, this.c, ')');
        }
    }

    public yz4(df4<K> df4Var, df4<V> df4Var2) {
        super(df4Var, df4Var2);
        this.c = rp7.e("kotlin.collections.Map.Entry", eb8.c.a, new mp7[0], new u71(1, df4Var, df4Var2));
    }

    @Override // defpackage.qf4
    public final Object a(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return entry.getKey();
    }

    @Override // defpackage.qf4
    public final Object b(Object obj) {
        Map.Entry entry = (Map.Entry) obj;
        entry.getClass();
        return entry.getValue();
    }

    @Override // defpackage.qf4
    public final Object c(Object obj, Object obj2) {
        return new a(obj, obj2);
    }

    @Override // defpackage.xp7, defpackage.xl2
    public final mp7 getDescriptor() {
        return this.c;
    }
}
