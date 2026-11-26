package defpackage;

import com.google.android.gms.internal.play_billing.zzgg;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class uqb implements Map.Entry, Comparable {
    public final zzgg b;
    public Object c;
    public final /* synthetic */ nrb d;

    public uqb(nrb nrbVar, zzgg zzggVar, Object obj) {
        this.d = nrbVar;
        this.b = zzggVar;
        this.c = obj;
    }

    @Override // java.lang.Comparable
    public final /* bridge */ /* synthetic */ int compareTo(Object obj) {
        return this.b.compareTo(((uqb) obj).b);
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        boolean zEquals;
        boolean zEquals2;
        if (obj != this) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                zzgg zzggVar = this.b;
                if (zzggVar == null) {
                    zEquals = key == null;
                } else {
                    zEquals = zzggVar.equals(key);
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
        zzgg zzggVar = this.b;
        int iHashCode = zzggVar == null ? 0 : zzggVar.hashCode();
        Object obj = this.c;
        return iHashCode ^ (obj != null ? obj.hashCode() : 0);
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        int i = nrb.h;
        this.d.j();
        Object obj2 = this.c;
        this.c = obj;
        return obj2;
    }

    public final String toString() {
        return me0.c(String.valueOf(this.b), "=", String.valueOf(this.c));
    }
}
