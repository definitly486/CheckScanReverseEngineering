package defpackage;

import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public final class vr6<T> {
    public final String a;

    public vr6(String str) {
        this.a = str;
    }

    public final T a(g27 g27Var) {
        T t = (T) ((HashMap) g27Var.b).get(this);
        if (t != null) {
            return t;
        }
        o2.d(this.a);
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || vr6.class != obj.getClass()) {
            return false;
        }
        return this.a.equals(((vr6) obj).a);
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return me0.d(new StringBuilder("Prop{name='"), this.a, "'}");
    }
}
