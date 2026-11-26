package yads;

import java.io.Serializable;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class yx4 implements xx4, Serializable {
    public final List b;

    public yx4(List list) {
        this.b = list;
    }

    @Override // yads.xx4
    public final boolean apply(Object obj) {
        for (int i = 0; i < this.b.size(); i++) {
            if (!((xx4) this.b.get(i)).apply(obj)) {
                return false;
            }
        }
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof yx4) {
            return this.b.equals(((yx4) obj).b);
        }
        return false;
    }

    public final int hashCode() {
        return this.b.hashCode() + 306654252;
    }

    public final String toString() {
        List list = this.b;
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : list) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }
}
