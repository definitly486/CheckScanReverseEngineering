package yads;

import defpackage.ou9;
import defpackage.pu9;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public final class el0 extends b03 {
    public final Map b;

    public el0(Map map) {
        this.b = map;
    }

    public static /* synthetic */ boolean a(Map.Entry entry) {
        return entry.getKey() != null;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return obj != null && this.b.containsKey(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        h hVar;
        h hVar2;
        Iterator it = ((i20) entrySet()).iterator();
        if (obj == null) {
            do {
                hVar2 = (h) it;
                if (!hVar2.hasNext()) {
                    return false;
                }
            } while (((Map.Entry) hVar2.next()).getValue() != null);
            return true;
        }
        do {
            hVar = (h) it;
            if (!hVar.hasNext()) {
                return false;
            }
        } while (!obj.equals(((Map.Entry) hVar.next()).getValue()));
        return true;
    }

    @Override // yads.b03, java.util.Map
    public final Set entrySet() {
        return tj5.a(super.entrySet(), (xx4) new ou9());
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        boolean zEquals;
        if (obj != null) {
            if (this == obj) {
                zEquals = true;
            } else if (obj instanceof Map) {
                zEquals = ((qj5) entrySet()).equals(((Map) obj).entrySet());
            } else {
                zEquals = false;
            }
            if (zEquals) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        if (obj == null) {
            return null;
        }
        return (List) this.b.get(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return tj5.a(entrySet());
    }

    @Override // yads.b03, java.util.Map
    public final boolean isEmpty() {
        return super.isEmpty() || (super.size() == 1 && this.b.containsKey(null));
    }

    @Override // yads.b03, java.util.Map
    public final Set keySet() {
        return tj5.a(super.keySet(), (xx4) new pu9());
    }

    @Override // yads.b03, java.util.Map
    public final int size() {
        return super.size() - (this.b.containsKey(null) ? 1 : 0);
    }

    public static /* synthetic */ boolean a(String str) {
        return str != null;
    }
}
