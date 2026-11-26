package defpackage;

import java.util.Date;

/* JADX INFO: loaded from: classes.dex */
public final class oc2 {
    public final String a;
    public final Date b;

    public oc2(String str, Date date) {
        this.a = str;
        this.b = date;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof oc2)) {
            return false;
        }
        oc2 oc2Var = (oc2) obj;
        if (this.a.equals(oc2Var.a)) {
            return m92.a.a(this.b).compareTo(m92.a.a(oc2Var.b)) == 0;
        }
        return false;
    }

    public final int hashCode() {
        throw new IllegalStateException("Not implemented");
    }

    public final String toString() {
        return this.a;
    }
}
