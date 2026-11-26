package defpackage;

import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class ajb implements Map.Entry, Comparable {
    public final Comparable b;
    public Object c;
    public final /* synthetic */ yjb d;

    public ajb(yjb yjbVar, Comparable comparable, Object obj) {
        this.d = yjbVar;
        this.b = comparable;
        this.c = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.b.compareTo(((ajb) obj).b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Comparable comparable = this.b;
                if (comparable == null) {
                    zEquals = key == null;
                } else {
                    zEquals = comparable.equals(key);
                }
                if (zEquals) {
                    Object obj2 = this.c;
                    Object value = entry.getValue();
                    if (obj2 == null) {
                        zEquals2 = value == null;
                    } else {
                        zEquals2 = obj2.equals(value);
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
    public final /* synthetic */ Object getKey() {
        return this.b;
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        return this.c;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        Comparable comparable = this.b;
        int iHashCode = comparable == null ? 0 : comparable.hashCode();
        Object obj = this.c;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i = yjb.h;
        this.d.j();
        Object obj2 = this.c;
        this.c = obj;
        return obj2;
    }

    public final String toString() {
        return me0.c(String.valueOf(this.b), "=", String.valueOf(this.c));
    }
}
