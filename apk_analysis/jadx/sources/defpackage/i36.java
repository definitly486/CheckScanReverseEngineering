package defpackage;

import java.util.ArrayList;
import java.util.List;
import org.koin.core.error.NoParameterFoundException;

/* JADX INFO: loaded from: classes5.dex */
public class i36 {
    public final List<Object> a;
    public int b;

    public i36(ArrayList arrayList, int i) {
        this.a = (i & 1) != 0 ? new ArrayList() : arrayList;
    }

    public Object a(int i, zk1 zk1Var) throws NoParameterFoundException {
        List<Object> list = this.a;
        if (i < list.size()) {
            return list.get(i);
        }
        StringBuilder sb = new StringBuilder("Can't get injected parameter #");
        sb.append(i);
        sb.append(" from ");
        sb.append(this);
        String strA = oe4.a(zk1Var);
        sb.append(" for type '");
        sb.append(strA);
        sb.append('\'');
        throw new NoParameterFoundException(sb.toString());
    }

    /* JADX WARN: Code duplicated, block: B:24:0x004a A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:25:0x004b A[RETURN] */
    public <T> T b(ne4<?> ne4Var) {
        ne4Var.getClass();
        List<Object> list = this.a;
        if (list.isEmpty()) {
            return null;
        }
        Object obj = list.get(this.b);
        if (!ne4Var.e(obj)) {
            obj = (T) null;
        }
        if (obj == null) {
            obj = (T) null;
        }
        if (obj != null && this.b < u96.g(list)) {
            this.b++;
        }
        if (obj != null) {
            return (T) obj;
        }
        for (T t : list) {
            if (ne4Var.e(t)) {
                if (t == null) {
                    return null;
                }
                return t;
            }
        }
        t = null;
        if (t == null) {
            return null;
        }
        return t;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof i36) {
            return aa4.e(this.a, ((i36) obj).a);
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() * 31;
    }

    public final String toString() {
        return "DefinitionParameters" + qn1.t0(this.a);
    }

    public i36() {
        this(null, 3);
    }
}
