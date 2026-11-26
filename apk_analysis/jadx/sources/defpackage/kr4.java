package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class kr4 implements mp7 {
    public final mp7 a;

    public kr4(mp7 mp7Var) {
        this.a = mp7Var;
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        Integer numO = qa8.o(10, str);
        if (numO != null) {
            return numO.intValue();
        }
        fg.c(str.concat(" is not a valid list index"));
        return 0;
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        if (i >= 0) {
            return this.a;
        }
        i2.e(n7.c(i, "Illegal index ", ", "), h(), " expects only non-negative indices");
        return null;
    }

    @Override // defpackage.mp7
    public final int e() {
        return 1;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof kr4)) {
            return false;
        }
        kr4 kr4Var = (kr4) obj;
        return aa4.e(this.a, kr4Var.a) && aa4.e(h(), kr4Var.h());
    }

    @Override // defpackage.mp7
    public final String f(int i) {
        return String.valueOf(i);
    }

    @Override // defpackage.mp7
    public final List<Annotation> g(int i) {
        if (i >= 0) {
            return kx2.b;
        }
        i2.e(n7.c(i, "Illegal index ", ", "), h(), " expects only non-negative indices");
        return null;
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return eb8.b.a;
    }

    public final int hashCode() {
        return h().hashCode() + (this.a.hashCode() * 31);
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        if (i >= 0) {
            return false;
        }
        i2.e(n7.c(i, "Illegal index ", ", "), h(), " expects only non-negative indices");
        return false;
    }

    public final String toString() {
        return h() + '(' + this.a + ')';
    }
}
