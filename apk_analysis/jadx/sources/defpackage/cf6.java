package defpackage;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public final class cf6<T> implements bf6<T>, Serializable {
    public final List<? extends bf6<? super T>> b;

    public cf6(List<? extends bf6<? super T>> list) {
        this.b = list;
    }

    @Override // defpackage.bf6
    public final boolean apply(T t) {
        int i = 0;
        while (true) {
            List<? extends bf6<? super T>> list = this.b;
            if (i >= list.size()) {
                return true;
            }
            if (!list.get(i).apply(t)) {
                return false;
            }
            i++;
        }
    }

    public final boolean equals(Object obj) {
        if (obj instanceof cf6) {
            return this.b.equals(((cf6) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (T t : this.b) {
            if (!z) {
                sb.append(',');
            }
            sb.append(t);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
