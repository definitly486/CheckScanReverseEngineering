package defpackage;

import java.lang.annotation.Annotation;
import java.util.List;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a05 implements mp7 {
    public final String a;
    public final mp7 b;
    public final mp7 c;

    public a05(String str, mp7 mp7Var, mp7 mp7Var2) {
        this.a = str;
        this.b = mp7Var;
        this.c = mp7Var2;
    }

    @Override // defpackage.mp7
    public final int c(String str) {
        str.getClass();
        Integer numO = qa8.o(10, str);
        if (numO != null) {
            return numO.intValue();
        }
        fg.c(str.concat(" is not a valid map index"));
        return 0;
    }

    @Override // defpackage.mp7
    public final mp7 d(int i) {
        if (i < 0) {
            c9.f(me0.d(n7.c(i, "Illegal index ", ", "), this.a, " expects only non-negative indices"));
            return null;
        }
        int i2 = i % 2;
        if (i2 == 0) {
            return this.b;
        }
        if (i2 == 1) {
            return this.c;
        }
        ah.f("Unreached");
        return null;
    }

    @Override // defpackage.mp7
    public final int e() {
        return 2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a05)) {
            return false;
        }
        a05 a05Var = (a05) obj;
        return this.a.equals(a05Var.a) && this.b.equals(a05Var.b) && this.c.equals(a05Var.c);
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
        c9.f(me0.d(n7.c(i, "Illegal index ", ", "), this.a, " expects only non-negative indices"));
        return null;
    }

    @Override // defpackage.mp7
    public final sp7 getKind() {
        return eb8.c.a;
    }

    @Override // defpackage.mp7
    public final String h() {
        return this.a;
    }

    public final int hashCode() {
        return this.c.hashCode() + ((this.b.hashCode() + (this.a.hashCode() * 31)) * 31);
    }

    @Override // defpackage.mp7
    public final boolean i(int i) {
        if (i >= 0) {
            return false;
        }
        c9.f(me0.d(n7.c(i, "Illegal index ", ", "), this.a, " expects only non-negative indices"));
        return false;
    }

    public final String toString() {
        return this.a + '(' + this.b + ", " + this.c + ')';
    }
}
