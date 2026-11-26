package defpackage;

import java.lang.Comparable;
import java.util.Date;

/* JADX INFO: loaded from: classes5.dex */
public final class jp1<T extends Comparable<? super T>> implements om1<T> {
    public final Date b;
    public final Date c;

    public jp1(Date date, Date date2) {
        this.b = date;
        this.c = date2;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof jp1)) {
            return false;
        }
        if (om1.a.a(this) && om1.a.a((jp1) obj)) {
            return true;
        }
        jp1 jp1Var = (jp1) obj;
        return this.b.equals(jp1Var.b) && this.c.equals(jp1Var.c);
    }

    @Override // defpackage.om1
    public final T getEndInclusive() {
        return this.c;
    }

    @Override // defpackage.om1
    public final T getStart() {
        return this.b;
    }

    public final int hashCode() {
        if (om1.a.a(this)) {
            return -1;
        }
        return this.c.hashCode() + (this.b.hashCode() * 31);
    }

    @Override // defpackage.om1
    public final /* bridge */ boolean isEmpty() {
        return om1.a.a(this);
    }

    public final String toString() {
        return this.b + ".." + this.c;
    }
}
